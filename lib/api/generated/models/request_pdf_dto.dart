// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_pdf_dto_format.dart';
import 'request_pdf_dto_group_by.dart';
import 'request_pdf_dto_report.dart';
import 'request_pdf_dto_template.dart';

part 'request_pdf_dto.freezed.dart';
part 'request_pdf_dto.g.dart';

@Freezed()
abstract class RequestPdfDto with _$RequestPdfDto {
  const factory RequestPdfDto({
    required RequestPdfDtoTemplate template,
    String? id,
    RequestPdfDtoFormat? format,
    DateTime? from,
    DateTime? to,
    RequestPdfDtoReport? report,
    RequestPdfDtoGroupBy? groupBy,
  }) = _RequestPdfDto;
  
  factory RequestPdfDto.fromJson(Map<String, Object?> json) => _$RequestPdfDtoFromJson(json);
}
