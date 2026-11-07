import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';

class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._client);

  final api.AccountClient _client;

  @override
  Future<Result<SupportContact>> support() => _run(() async {
    final s = await _client.accountControllerSupport();
    return SupportContact(phone: s.phone, whatsapp: s.whatsapp, email: s.email);
  });

  @override
  Future<Result<DeletionRequest?>> myDeletionRequest() => _run(() async {
    final r = (await _client.accountControllerMyDeletionRequest()).request;
    return r == null
        ? null
        : deletionRequestFrom(
            status: r.status.json,
            createdAt: r.createdAt,
            handledBy: r.handledBy.json,
            reason: r.reason,
            closedNote: r.closedNote,
          );
  });

  @override
  Future<Result<DeletionRequest>> requestDeletion({required String idempotencyKey, String? reason}) => _run(() async {
    final r = await _client.accountControllerRequestDeletion(
      idempotencyKey: idempotencyKey,
      body: api.DeletionRequestBody(reason: reason),
    );
    return deletionRequestFrom(
      status: r.status.json,
      createdAt: r.createdAt,
      handledBy: r.handledBy.json,
      reason: r.reason,
      closedNote: r.closedNote,
    );
  });

  Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

DeletionRequest deletionRequestFrom({
  required String? status,
  required DateTime createdAt,
  required String? handledBy,
  String? reason,
  String? closedNote,
}) => DeletionRequest(
  status: DeletionStatus.values.asNameMap()[status] ?? DeletionStatus.pending,
  createdAt: createdAt,
  byOwner: handledBy != 'support',
  reason: reason,
  closedNote: closedNote,
);
