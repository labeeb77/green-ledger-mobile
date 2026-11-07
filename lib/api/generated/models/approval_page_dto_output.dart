// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'approval_dto_output.dart';

part 'approval_page_dto_output.freezed.dart';
part 'approval_page_dto_output.g.dart';

@Freezed()
abstract class ApprovalPageDtoOutput with _$ApprovalPageDtoOutput {
  const factory ApprovalPageDtoOutput({required List<ApprovalDtoOutput> items, required String? nextCursor}) =
      _ApprovalPageDtoOutput;

  factory ApprovalPageDtoOutput.fromJson(Map<String, Object?> json) => _$ApprovalPageDtoOutputFromJson(json);
}
