import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/local/local_database.dart';
import 'package:green_ledger_mobile/core/local/local_stores.dart';

Draft draft(String id, {DateTime? at}) => Draft(
  id: id,
  kind: DraftKind.visit,
  title: 'Visit · Shop closed',
  subtitle: 'Malabar Traders',
  payload: '{}',
  createdAt: at ?? DateTime.utc(2026, 11, 7, 5),
);

void main() {
  late LocalDatabase db;
  late CurrentUser user;
  setUp(() {
    db = LocalDatabase(NativeDatabase.memory());
    user = CurrentUser()..id = 'agent-1';
  });
  tearDown(() => db.close());

  test('drafts belong to the signed-in user, oldest first', () async {
    final store = LocalDraftStore(db, user);
    await store.keep(draft('k2', at: DateTime.utc(2026, 11, 7, 6)));
    await store.keep(draft('k1'));
    expect([for (final d in await store.watch().first) d.id], ['k1', 'k2']);

    user.id = 'owner-1';
    expect(await LocalDraftStore(db, user).watch().first, isEmpty);
  });

  test('a failed send keeps the reason; remove forgets the draft', () async {
    final store = LocalDraftStore(db, user);
    await store.keep(draft('k1'));
    await store.keep(draft('k1')); // the same key again replaces it
    await store.markFailed('k1', 'No internet. Your entry is kept.');
    final kept = await store.watch().first;
    expect(kept.single.lastError, 'No internet. Your entry is kept.');
    expect(kept.single.kind, DraftKind.visit);
    await store.remove('k1');
    expect(await store.watch().first, isEmpty);
  });

  test('nothing is kept when no one is signed in', () async {
    user.id = null;
    final store = LocalDraftStore(db, user);
    await store.keep(draft('k1'));
    user.id = 'agent-1';
    expect(await store.watch().first, isEmpty);
  });

  test('the read cache is per user and keeps when it was loaded', () async {
    final cache = ReadCache(db, user);
    final at = DateTime.utc(2026, 11, 7, 5, 12);
    await cache.put('shops', '[1]', now: at);
    await cache.put('shops', '[1,2]', now: at);
    expect(await cache.get('shops'), ('[1,2]', at.toLocal()));
    user.id = 'agent-2';
    expect(await cache.get('shops'), isNull);
  });
}
