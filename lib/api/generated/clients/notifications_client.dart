// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/notification_list_dto_output.dart';
import '../models/push_token_dto_output.dart';
import '../models/register_push_token_dto.dart';
import '../models/unread.dart';

part 'notifications_client.g.dart';

@RestApi()
abstract class NotificationsClient {
  factory NotificationsClient(Dio dio, {String? baseUrl}) = _NotificationsClient;

  @GET('/api/v1/notifications')
  Future<NotificationListDtoOutput> notificationsControllerList({@Query('unread') Unread? unread});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/notifications/read-all')
  Future<NotificationListDtoOutput> notificationsControllerReadAll({
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/notifications/{id}/read')
  Future<NotificationListDtoOutput> notificationsControllerRead({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/push-tokens')
  Future<PushTokenDtoOutput> notificationsControllerRegister({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required RegisterPushTokenDto body,
  });

  @DELETE('/api/v1/push-tokens/{id}')
  Future<void> notificationsControllerRemove({@Path('id') required String id});
}
