// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_mistake_report_body_document_type.dart';
import 'create_mistake_report_body_reason.dart';

part 'create_mistake_report_body.freezed.dart';
part 'create_mistake_report_body.g.dart';

@Freezed()
abstract class CreateMistakeReportBody with _$CreateMistakeReportBody {
  const factory CreateMistakeReportBody({
    required CreateMistakeReportBodyDocumentType documentType,
    required String documentId,
    required CreateMistakeReportBodyReason reason,
    String? note,
  }) = _CreateMistakeReportBody;

  factory CreateMistakeReportBody.fromJson(Map<String, Object?> json) => _$CreateMistakeReportBodyFromJson(json);
}
