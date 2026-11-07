// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent4.dart';
import 'status6.dart';
import 'confirmed_by2.dart';

part 'pending_handover.freezed.dart';
part 'pending_handover.g.dart';

@Freezed()
abstract class PendingHandover with _$PendingHandover {
  const factory PendingHandover({
    required String id,
    required Agent4 agent,
    required String handoverDate,
    required int declaredAmount,
    required int? countedAmount,
    required int? difference,
    required Status6 status,
    required int bagBalance,
    required String? note,
    required ConfirmedBy2? confirmedBy,
    required DateTime? confirmedAt,
    required DateTime createdAt,
  }) = _PendingHandover;

  factory PendingHandover.fromJson(Map<String, Object?> json) => _$PendingHandoverFromJson(json);
}
