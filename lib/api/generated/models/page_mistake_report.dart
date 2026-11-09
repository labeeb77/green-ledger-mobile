// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'items3.dart';

part 'page_mistake_report.freezed.dart';
part 'page_mistake_report.g.dart';

@Freezed()
abstract class PageMistakeReport with _$PageMistakeReport {
  const factory PageMistakeReport({required List<Items3> items, required String? nextCursor}) = _PageMistakeReport;

  factory PageMistakeReport.fromJson(Map<String, Object?> json) => _$PageMistakeReportFromJson(json);
}
