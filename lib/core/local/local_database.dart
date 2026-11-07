import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

part 'local_database.g.dart';

/// Entries whose save failed for lack of network, kept until they are sent again
/// (ARCHITECTURE "Saving entries" 3). [id] is the entry's idempotency key.
class DraftRows extends Table {
  @override
  String get tableName => 'drafts';

  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get kind => text()();
  TextColumn get title => text()();
  TextColumn get subtitle => text()();

  /// The request exactly as first sent (JSON), so a resend matches the key's hash.
  TextColumn get payload => text()();
  DateTimeColumn get createdAt => dateTime()();

  /// Why the last send failed, in plain words.
  TextColumn get lastError => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// The last loaded copy of a list, shown offline with "Updated 10:42".
class CachedReadRows extends Table {
  @override
  String get tableName => 'cached_reads';

  TextColumn get userId => text()();
  TextColumn get key => text()();
  TextColumn get json => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {userId, key};
}

/// The phone's own database (drafts and read caches), one file per install.
@DriftDatabase(tables: [DraftRows, CachedReadRows])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase(super.e);

  /// The app's database file in the application support directory.
  factory LocalDatabase.open() => LocalDatabase(
    LazyDatabase(() async {
      final dir = await getApplicationSupportDirectory();
      return NativeDatabase.createInBackground(File('${dir.path}/local.sqlite'));
    }),
  );

  @override
  int get schemaVersion => 1;
}

/// Who is signed in on the phone; drafts and caches belong to that user, so another
/// login on the same phone never sees or sends them. Set by `App` from the session.
class CurrentUser {
  String? id;
}
