// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_user_dto.dart';
import '../models/device_dto_output.dart';
import '../models/ok_dto_output.dart';
import '../models/pending_deletion.dart';
import '../models/set_permissions_dto.dart';
import '../models/update_user_dto.dart';
import '../models/user_dto_output.dart';
import '../models/user_permissions_dto_output.dart';
import '../models/user_with_temporary_password_dto_output.dart';

part 'users_client.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(Dio dio, {String? baseUrl}) = _UsersClient;

  @GET('/api/v1/users')
  Future<List<UserDtoOutput>> usersControllerList();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/users')
  Future<UserWithTemporaryPasswordDtoOutput> usersControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateUserDto body,
  });

  @GET('/api/v1/users/{id}')
  Future<UserDtoOutput> usersControllerGet({@Path('id') required String id});

  @PATCH('/api/v1/users/{id}')
  Future<UserDtoOutput> usersControllerUpdate({@Path('id') required String id, @Body() required UpdateUserDto body});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/users/{id}/reset-password')
  Future<UserWithTemporaryPasswordDtoOutput> usersControllerResetPassword({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  @GET('/api/v1/users/{id}/permissions')
  Future<UserPermissionsDtoOutput> usersControllerPermissions({@Path('id') required String id});

  @PUT('/api/v1/users/{id}/permissions')
  Future<UserPermissionsDtoOutput> usersControllerSetPermissions({
    @Path('id') required String id,
    @Body() required SetPermissionsDto body,
  });

  @GET('/api/v1/users/{id}/devices')
  Future<List<DeviceDtoOutput>> usersControllerDevices({@Path('id') required String id});

  @DELETE('/api/v1/users/{id}/devices/{sessionId}')
  Future<OkDtoOutput> usersControllerRevokeDevice({
    @Path('id') required String id,
    @Path('sessionId') required String sessionId,
  });

  @GET('/api/v1/users/deletion-requests')
  Future<List<PendingDeletion>> usersControllerDeletionRequests();
}
