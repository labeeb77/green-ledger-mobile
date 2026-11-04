// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';

part 'available_reports_dto_output.freezed.dart';
part 'available_reports_dto_output.g.dart';

@Freezed()
abstract class AvailableReportsDtoOutput with _$AvailableReportsDtoOutput {
  const factory AvailableReportsDtoOutput({
    required Report report,
    required String title,
  }) = _AvailableReportsDtoOutput;
  
  factory AvailableReportsDtoOutput.fromJson(Map<String, Object?> json) => _$AvailableReportsDtoOutputFromJson(json);
}
