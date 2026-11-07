// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/pdf_status_dto_output.dart';
import '../models/request_pdf_dto.dart';

part 'documents_client.g.dart';

@RestApi()
abstract class DocumentsClient {
  factory DocumentsClient(Dio dio, {String? baseUrl}) = _DocumentsClient;

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/documents/pdf')
  Future<PdfStatusDtoOutput> documentsControllerRequest({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required RequestPdfDto body,
  });

  @GET('/api/v1/documents/pdf/{jobId}')
  Future<PdfStatusDtoOutput> documentsControllerStatus({@Path('jobId') required String jobId});
}
