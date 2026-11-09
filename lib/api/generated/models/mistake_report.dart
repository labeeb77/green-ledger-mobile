// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'closed_by2.dart';
import 'document2.dart';
import 'mistake_report_reason.dart';
import 'mistake_report_status.dart';
import 'reporter2.dart';

part 'mistake_report.freezed.dart';
part 'mistake_report.g.dart';

@Freezed()
abstract class MistakeReport with _$MistakeReport {
  const factory MistakeReport({
    required String id,
    required Document2 document,
    required MistakeReportReason reason,
    required String? note,
    required MistakeReportStatus status,
    required Reporter2 reporter,
    required DateTime createdAt,
    required ClosedBy2? closedBy,
    required DateTime? closedAt,
    required String? closeNote,
  }) = _MistakeReport;

  factory MistakeReport.fromJson(Map<String, Object?> json) => _$MistakeReportFromJson(json);
}
