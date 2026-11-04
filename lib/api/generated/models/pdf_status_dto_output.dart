// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pdf_status_dto_output_status.dart';

part 'pdf_status_dto_output.freezed.dart';
part 'pdf_status_dto_output.g.dart';

@Freezed()
abstract class PdfStatusDtoOutput with _$PdfStatusDtoOutput {
  const factory PdfStatusDtoOutput({
    required String? jobId,
    required PdfStatusDtoOutputStatus status,
    required String? url,
    required String filename,
    required String? error,
  }) = _PdfStatusDtoOutput;
  
  factory PdfStatusDtoOutput.fromJson(Map<String, Object?> json) => _$PdfStatusDtoOutputFromJson(json);
}
