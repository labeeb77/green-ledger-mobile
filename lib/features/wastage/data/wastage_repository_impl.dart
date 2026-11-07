import 'dart:convert';
import 'dart:io';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class WastageRepositoryImpl implements WastageRepository {
  WastageRepositoryImpl({
    required this._stock,
    required this._products,
    required this._files,
    required this._drafts,
    this._filesDir = getApplicationSupportDirectory,
  });

  final api.StockClient _stock;
  final api.ProductsClient _products;
  final api.FilesClient _files;
  final DraftStore _drafts;

  /// Where a draft's photo is kept; a temp directory in tests.
  final Future<Directory> Function() _filesDir;

  @override
  Future<Result<List<WastageProduct>>> products() => _run(() async {
    final rows = await _products.productsControllerList(active: api.Active.valueTrue);
    return [for (final p in rows) WastageProduct(id: p.id, name: p.nameEn, stockUnit: p.stockUnit.json ?? 'kg')]
      ..sort((a, b) => a.name.compareTo(b.name));
  });

  @override
  Future<Result<WastageResult>> record({
    required WastageProduct product,
    required String quantity,
    required WastageReason reason,
    required String entryDate,
    required String idempotencyKey,
    String? photoPath,
  }) async {
    final body = wastageBodyFor(productId: product.id, quantity: quantity, reason: reason, entryDate: entryDate);
    final result = await _post(body, photoPath, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
      case Err(:final failure) when failure.kind == FailureKind.network:
        String? kept;
        if (photoPath != null) {
          final dir = Directory('${(await _filesDir()).path}/drafts');
          await dir.create(recursive: true);
          final copy = File('${dir.path}/$idempotencyKey-photo.jpg');
          if (!copy.existsSync()) await File(photoPath).copy(copy.path);
          kept = copy.path;
        }
        await _drafts.keep(
          Draft(
            id: idempotencyKey,
            kind: DraftKind.wastage,
            title: 'Wastage · ${formatQuantity(quantity, product.stockUnit)} ${product.name}',
            subtitle: reason.label,
            payload: jsonEncode({'body': body, 'photo': kept}),
            createdAt: DateTime.now(),
          ),
        );
      case Err():
    }
    return result;
  }

  /// SEND AGAIN from the Drafts screen: the same body and key as the first try.
  Future<Result<String>> sendDraft(Draft draft) async {
    final payload = jsonDecode(draft.payload) as Map<String, Object?>;
    final body = api.CreateWastageDto.fromJson(payload['body']! as Map<String, Object?>);
    final photo = payload['photo'] as String?;
    final result = await _post(body, photo, draft.id);
    if (result is Ok && photo != null) {
      try {
        await File(photo).delete();
      } on FileSystemException {
        // Already gone.
      }
    }
    return switch (result) {
      Ok(:final value) => Ok(value.waiting ? 'Wastage sent for approval' : 'Saved ${value.number ?? 'wastage'}'),
      Err(:final failure) => Err(failure),
    };
  }

  Future<Result<WastageResult>> _post(api.CreateWastageDto body, String? photoPath, String key) => _run(() async {
    var request = body;
    if (photoPath != null) {
      // A key derived from the entry's key, so a retry never uploads twice.
      final file = await _files.uploadsControllerUpload(
        kind: api.Kind.wastagePhoto,
        idempotencyKey: const Uuid().v5(key, 'photo'),
        file: File(photoPath),
      );
      request = body.copyWith(photoFileId: file.id);
    }
    final entry = await _stock.stockControllerWastage(idempotencyKey: key, body: request);
    return WastageResult(waiting: entry.status.json == 'pending_approval', number: entry.number);
  });

  static Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

api.CreateWastageDto wastageBodyFor({
  required String productId,
  required String quantity,
  required WastageReason reason,
  required String entryDate,
}) => api.CreateWastageDto(
  entryDate: entryDate,
  lines: [
    api.Lines8(
      productId: productId,
      quantity: quantity,
      reason: switch (reason) {
        WastageReason.rotten => api.Reason.rotten,
        WastageReason.weightLoss => api.Reason.weightLoss,
        WastageReason.sample => api.Reason.sample,
        WastageReason.ownUse => api.Reason.ownUse,
      },
    ),
  ],
);
