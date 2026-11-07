// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auth_tokens_dto_output.dart';
import '../models/change_password_dto.dart';
import '../models/login_dto.dart';
import '../models/me_dto_output.dart';
import '../models/ok_dto_output.dart';
import '../models/refresh_dto.dart';

part 'platform_auth_client.g.dart';

@RestApi()
abstract class PlatformAuthClient {
  factory PlatformAuthClient(Dio dio, {String? baseUrl}) = _PlatformAuthClient;

  @POST('/api/v1/platform/auth/login')
  Future<AuthTokensDtoOutput> platformAuthControllerLogin({@Body() required LoginDto body});

  @POST('/api/v1/platform/auth/refresh')
  Future<AuthTokensDtoOutput> platformAuthControllerRefresh({@Body() required RefreshDto body});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/platform/auth/logout')
  Future<OkDtoOutput> platformAuthControllerLogout({@Header('Idempotency-Key') required String idempotencyKey});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/platform/auth/change-password')
  Future<AuthTokensDtoOutput> platformAuthControllerChangePassword({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required ChangePasswordDto body,
  });

  @GET('/api/v1/platform/auth/me')
  Future<MeDtoOutput> platformAuthControllerMe();
}
