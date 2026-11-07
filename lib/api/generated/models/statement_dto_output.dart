// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entries.dart';

part 'statement_dto_output.freezed.dart';
part 'statement_dto_output.g.dart';

@Freezed()
abstract class StatementDtoOutput with _$StatementDtoOutput {
  const factory StatementDtoOutput({
    required String from,
    required String to,
    required int opening,
    required List<Entries> entries,
    required int closing,
  }) = _StatementDtoOutput;

  factory StatementDtoOutput.fromJson(Map<String, Object?> json) => _$StatementDtoOutputFromJson(json);
}
