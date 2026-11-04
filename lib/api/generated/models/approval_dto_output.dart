// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'approval_dto_output_status.dart';
import 'approval_dto_output_type.dart';
import 'decided_by.dart';
import 'requester.dart';

part 'approval_dto_output.freezed.dart';
part 'approval_dto_output.g.dart';

@Freezed()
abstract class ApprovalDtoOutput with _$ApprovalDtoOutput {
  const factory ApprovalDtoOutput({
    required String id,
    required ApprovalDtoOutputType type,
    required ApprovalDtoOutputStatus status,
    required Requester requester,
    required String entityType,
    required String entityId,
    required int? amount,
    required String? reason,
    required Map<String, dynamic> payload,
    required DecidedBy? decidedBy,
    required DateTime? decidedAt,
    required String? decisionNote,
    required DateTime createdAt,
  }) = _ApprovalDtoOutput;
  
  factory ApprovalDtoOutput.fromJson(Map<String, Object?> json) => _$ApprovalDtoOutputFromJson(json);
}
