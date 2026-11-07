// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_visit_note_dto.dart';
import '../models/outcome.dart';
import '../models/visit_note_dto_output.dart';
import '../models/visit_note_page_dto_output.dart';

part 'visit_notes_client.g.dart';

@RestApi()
abstract class VisitNotesClient {
  factory VisitNotesClient(Dio dio, {String? baseUrl}) = _VisitNotesClient;

  @GET('/api/v1/visit-notes')
  Future<VisitNotePageDtoOutput> visitNotesControllerList({
    @Query('limit') int? limit = 50,
    @Query('customerId') String? customerId,
    @Query('userId') String? userId,
    @Query('outcome') Outcome? outcome,
    @Query('from') String? from,
    @Query('to') String? to,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/visit-notes')
  Future<VisitNoteDtoOutput> visitNotesControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateVisitNoteDto body,
  });
}
