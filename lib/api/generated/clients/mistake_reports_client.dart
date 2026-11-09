// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/close_mistake_report_body.dart';
import '../models/create_mistake_report_body.dart';
import '../models/mistake_report.dart';
import '../models/page_mistake_report.dart';
import '../models/status7.dart';

part 'mistake_reports_client.g.dart';

@RestApi()
abstract class MistakeReportsClient {
  factory MistakeReportsClient(Dio dio, {String? baseUrl}) = _MistakeReportsClient;

  @GET('/api/v1/mistake-reports')
  Future<PageMistakeReport> mistakeReportsControllerList({
    @Query('limit') int? limit = 50,
    @Query('status') Status7? status,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/mistake-reports')
  Future<MistakeReport> mistakeReportsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateMistakeReportBody body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/mistake-reports/{id}/close')
  Future<MistakeReport> mistakeReportsControllerClose({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CloseMistakeReportBody body,
  });
}
