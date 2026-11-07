import 'dart:convert';
import 'dart:io';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class ReceiveRepositoryImpl implements ReceiveRepository {
  ReceiveRepositoryImpl({
    required this._purchases,
    required this._suppliers,
    required this._products,
    required this._files,
    required this._drafts,
    this._filesDir = getApplicationSupportDirectory,
  });

  final api.PurchasesClient _purchases;
  final api.SuppliersClient _suppliers;
  final api.ProductsClient _products;
  final api.FilesClient _files;
  final DraftStore _drafts;

  /// Where a draft's slip photo is kept; a temp directory in tests.
  final Future<Directory> Function() _filesDir;

  @override
  Future<Result<List<Supplier>>> suppliers() => _run(() async {
    final all = await _suppliers.suppliersControllerList(active: api.Active.valueTrue);
    final recent = await _purchases.goodsReceiptsControllerList();
    return recentFirst(
      [for (final s in all) Supplier(id: s.id, name: s.name)],
      [for (final r in recent.items) r.supplier.id],
    );
  });

  @override
  Future<Result<List<ReceiveProduct>>> products() => _run(() async {
    final rows = await _products.productsControllerList(active: api.Active.valueTrue);
    return [for (final p in rows) receiveProductFromDto(p)]..sort((a, b) => a.name.compareTo(b.name));
  });

  @override
  Future<Result<SavedReceipt>> receive({
    required Supplier supplier,
    required String receiptDate,
    required List<ReceiveLine> lines,
    required String idempotencyKey,
    String? slipPhotoPath,
    String vehicleNo = '',
  }) async {
    final body = receiptBodyFor(supplierId: supplier.id, receiptDate: receiptDate, lines: lines, vehicleNo: vehicleNo);
    final result = await _post(body, slipPhotoPath, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
      case Err(:final failure) when failure.kind == FailureKind.network:
        String? kept;
        if (slipPhotoPath != null) {
          final dir = Directory('${(await _filesDir()).path}/drafts');
          await dir.create(recursive: true);
          final copy = File('${dir.path}/$idempotencyKey-slip.jpg');
          if (!copy.existsSync()) await File(slipPhotoPath).copy(copy.path);
          kept = copy.path;
        }
        await _drafts.keep(
          Draft(
            id: idempotencyKey,
            kind: DraftKind.goodsReceipt,
            title: lines.length == 1 ? 'Goods received · 1 item' : 'Goods received · ${lines.length} items',
            subtitle: supplier.name,
            payload: jsonEncode({'body': body, 'slip': kept}),
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
    final body = api.CreateGoodsReceiptDto.fromJson(payload['body']! as Map<String, Object?>);
    final slip = payload['slip'] as String?;
    final result = await _post(body, slip, draft.id);
    if (result is Ok && slip != null) {
      try {
        await File(slip).delete();
      } on FileSystemException {
        // Already gone.
      }
    }
    return switch (result) {
      Ok(:final value) => Ok('Saved ${value.number}'),
      Err(:final failure) => Err(failure),
    };
  }

  Future<Result<SavedReceipt>> _post(api.CreateGoodsReceiptDto body, String? slipPath, String key) => _run(() async {
    var request = body;
    if (slipPath != null) {
      // A key derived from the receipt's key, so a retry never uploads twice.
      final file = await _files.uploadsControllerUpload(
        kind: api.Kind.supplierSlip,
        idempotencyKey: const Uuid().v5(key, 'slip'),
        file: File(slipPath),
      );
      request = body.copyWith(slipPhotoFileId: file.id);
    }
    final receipt = await _purchases.goodsReceiptsControllerCreate(idempotencyKey: key, body: request);
    return SavedReceipt(number: receipt.number);
  });

  static Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

ReceiveProduct receiveProductFromDto(api.ProductDtoOutput p) => ReceiveProduct(
  id: p.id,
  name: p.nameEn,
  stockUnit: p.stockUnit.json ?? 'kg',
  packs: [
    for (final u in p.packUnits)
      if (u.active) ReceivePack(id: u.id, name: u.name, size: u.sizeType.json == 'fixed' ? u.size : null),
  ],
  grades: [
    for (final g in p.grades)
      if (g.active) Grade(id: g.id, name: g.name),
  ],
);

/// The request: weights when given (the server checks net = gross − tare), else net.
/// No rates: the godown never sees prices (D3).
api.CreateGoodsReceiptDto receiptBodyFor({
  required String supplierId,
  required String receiptDate,
  required List<ReceiveLine> lines,
  String vehicleNo = '',
}) => api.CreateGoodsReceiptDto(
  supplierId: supplierId,
  receiptDate: receiptDate,
  vehicleNo: vehicleNo.trim().isEmpty ? null : vehicleNo.trim(),
  lines: [
    for (final l in lines)
      api.Lines2(
        productId: l.product.id,
        gradeId: l.grade?.id,
        packUnitId: l.pack?.id,
        packCount: l.packCount,
        gross: l.gross,
        tare: l.gross == null ? null : l.tare,
        net: l.net,
      ),
  ],
);
