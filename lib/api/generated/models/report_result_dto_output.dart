// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'columns.dart';
import 'report_result_dto_output_report.dart';

part 'report_result_dto_output.freezed.dart';
part 'report_result_dto_output.g.dart';

@Freezed()
abstract class ReportResultDtoOutput with _$ReportResultDtoOutput {
  const factory ReportResultDtoOutput({
    required ReportResultDtoOutputReport report,
    required String title,
    required String subtitle,
    required List<Columns> columns,
    required List<Map<String, dynamic>> rows,
    required Map<String, dynamic>? totals,
  }) = _ReportResultDtoOutput;
  
  factory ReportResultDtoOutput.fromJson(Map<String, Object?> json) => _$ReportResultDtoOutputFromJson(json);
}
