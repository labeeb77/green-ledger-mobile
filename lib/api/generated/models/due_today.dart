// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'last_visit2.dart';

part 'due_today.freezed.dart';
part 'due_today.g.dart';

@Freezed()
abstract class DueToday with _$DueToday {
  const factory DueToday({
    required String customerId,
    required String name,
    required String? area,
    required String? phone,
    required int outstanding,
    required int due,
    required int overdue,
    required String? oldestDueDate,
    required bool promisedToday,
    required LastVisit2? lastVisit,
  }) = _DueToday;

  factory DueToday.fromJson(Map<String, Object?> json) => _$DueTodayFromJson(json);
}
