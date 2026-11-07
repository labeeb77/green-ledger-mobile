// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/import_result_dto_output.dart';
import '../models/kind2.dart';

part 'imports_client.g.dart';

@RestApi()
abstract class ImportsClient {
  factory ImportsClient(Dio dio, {String? baseUrl}) = _ImportsClient;

  @GET('/api/v1/imports/{kind}/template.xlsx')
  Future<void> importsControllerTemplate({@Path('kind') required Kind2 kind});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @MultiPart()
  @POST('/api/v1/imports/{kind}')
  Future<ImportResultDtoOutput> importsControllerImport({
    @Path('kind') required Kind2 kind,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Part(name: 'file') required File file,
  });

  @GET('/api/v1/exports/all.xlsx')
  Future<void> importsControllerAll();
}
