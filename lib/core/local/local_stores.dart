import 'package:drift/drift.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/local/local_database.dart';

/// Drafts in the phone's database, for the signed-in user only.
class LocalDraftStore implements DraftStore {
  LocalDraftStore(this._db, this._user);

  final LocalDatabase _db;
  final CurrentUser _user;

  @override
  Stream<List<Draft>> watch() {
    final query = _db.select(_db.draftRows)
      ..where((d) => d.userId.equals(_user.id ?? ''))
      ..orderBy([(d) => OrderingTerm.asc(d.createdAt)]);
    return query.watch().map((rows) => [for (final r in rows) _toDraft(r)]);
  }

  @override
  Future<void> keep(Draft draft) async {
    final userId = _user.id;
    if (userId == null) return;
    await _db
        .into(_db.draftRows)
        .insertOnConflictUpdate(
          DraftRowsCompanion.insert(
            id: draft.id,
            userId: userId,
            kind: draft.kind.name,
            title: draft.title,
            subtitle: draft.subtitle,
            payload: draft.payload,
            createdAt: draft.createdAt,
            lastError: Value(draft.lastError),
          ),
        );
  }

  @override
  Future<void> markFailed(String id, String message) =>
      (_db.update(_db.draftRows)..where((d) => d.id.equals(id))).write(DraftRowsCompanion(lastError: Value(message)));

  @override
  Future<void> remove(String id) => (_db.delete(_db.draftRows)..where((d) => d.id.equals(id))).go();

  static Draft _toDraft(DraftRow r) => Draft(
    id: r.id,
    kind: DraftKind.values.byName(r.kind),
    title: r.title,
    subtitle: r.subtitle,
    payload: r.payload,
    createdAt: r.createdAt,
    lastError: r.lastError,
  );
}

/// The last loaded JSON of a read, per signed-in user.
class ReadCache {
  ReadCache(this._db, this._user);

  final LocalDatabase _db;
  final CurrentUser _user;

  Future<void> put(String key, String json, {DateTime? now}) async {
    final userId = _user.id;
    if (userId == null) return;
    await _db
        .into(_db.cachedReadRows)
        .insertOnConflictUpdate(
          CachedReadRowsCompanion.insert(userId: userId, key: key, json: json, updatedAt: now ?? DateTime.now()),
        );
  }

  /// The cached JSON and when it was loaded, or null.
  Future<(String, DateTime)?> get(String key) async {
    final row = await (_db.select(
      _db.cachedReadRows,
    )..where((c) => c.userId.equals(_user.id ?? '') & c.key.equals(key))).getSingleOrNull();
    return row == null ? null : (row.json, row.updatedAt);
  }
}
