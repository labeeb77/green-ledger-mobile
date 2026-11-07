// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_deletion.freezed.dart';
part 'pending_deletion.g.dart';

@Freezed()
abstract class PendingDeletion with _$PendingDeletion {
  const factory PendingDeletion({required String userId, required DateTime requestedAt, required String? reason}) =
      _PendingDeletion;

  factory PendingDeletion.fromJson(Map<String, Object?> json) => _$PendingDeletionFromJson(json);
}
