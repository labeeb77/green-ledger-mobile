// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auth_tokens_dto_output.dart';
import '../models/change_password_dto.dart';
import '../models/device_dto_output.dart';
import '../models/login_dto.dart';
import '../models/me_dto_output.dart';
import '../models/ok_dto_output.dart';
import '../models/refresh_dto.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie
  @POST('/api/v1/auth/login')
  Future<AuthTokensDtoOutput> authControllerLogin({
    @Body() required LoginDto body,
    @Header('X-Client') String? xClient,
  });

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie
  @POST('/api/v1/auth/refresh')
  Future<AuthTokensDtoOutput> authControllerRefresh({
    @Body() required RefreshDto body,
    @Header('X-Client') String? xClient,
  });

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie.
  ///
  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/auth/logout')
  Future<OkDtoOutput> authControllerLogout({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Header('X-Client') String? xClient,
  });

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie.
  ///
  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/auth/change-password')
  Future<AuthTokensDtoOutput> authControllerChangePassword({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required ChangePasswordDto body,
    @Header('X-Client') String? xClient,
  });

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie
  @GET('/api/v1/auth/me')
  Future<MeDtoOutput> authControllerMe({@Header('X-Client') String? xClient});

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie
  @GET('/api/v1/auth/devices')
  Future<List<DeviceDtoOutput>> authControllerDevices({@Header('X-Client') String? xClient});

  /// [xClient] - Send "web" to receive the refresh token as an httpOnly cookie
  @DELETE('/api/v1/auth/devices/{id}')
  Future<OkDtoOutput> authControllerRevokeDevice({@Path('id') required String id, @Header('X-Client') String? xClient});
}
