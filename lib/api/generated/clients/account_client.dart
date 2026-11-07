// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/deletion_request.dart';
import '../models/deletion_request_body.dart';
import '../models/my_deletion_request.dart';
import '../models/support_contact.dart';

part 'account_client.g.dart';

@RestApi()
abstract class AccountClient {
  factory AccountClient(Dio dio, {String? baseUrl}) = _AccountClient;

  @GET('/api/v1/support')
  Future<SupportContact> accountControllerSupport();

  @GET('/api/v1/account/deletion-request')
  Future<MyDeletionRequest> accountControllerMyDeletionRequest();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/account/deletion-request')
  Future<DeletionRequest> accountControllerRequestDeletion({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required DeletionRequestBody body,
  });
}
