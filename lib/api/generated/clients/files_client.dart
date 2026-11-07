// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/file_link_dto_output.dart';
import '../models/kind.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String? baseUrl}) = _FilesClient;

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @MultiPart()
  @POST('/api/v1/files')
  Future<FileLinkDtoOutput> uploadsControllerUpload({
    @Query('kind') required Kind kind,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Part(name: 'file') required File file,
  });

  @GET('/api/v1/files/{id}')
  Future<FileLinkDtoOutput> uploadsControllerLink({@Path('id') required String id});
}
