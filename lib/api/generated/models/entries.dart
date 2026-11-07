// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entries.freezed.dart';
part 'entries.g.dart';

@Freezed()
abstract class Entries with _$Entries {
  const factory Entries({
    required String id,
    required String date,
    required String kind,
    required String description,
    required String? reference,
    required String sourceType,
    required String sourceId,
    required int amount,
    required String? dueDate,
    required int balance,
  }) = _Entries;

  factory Entries.fromJson(Map<String, Object?> json) => _$EntriesFromJson(json);
}
