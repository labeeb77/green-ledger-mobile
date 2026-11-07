// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/activity_page_dto_output.dart';

part 'activity_log_client.g.dart';

@RestApi()
abstract class ActivityLogClient {
  factory ActivityLogClient(Dio dio, {String? baseUrl}) = _ActivityLogClient;

  @GET('/api/v1/activity-log')
  Future<ActivityPageDtoOutput> activityLogControllerList({
    @Query('limit') int? limit = 50,
    @Query('entityType') String? entityType,
    @Query('entityId') String? entityId,
    @Query('userId') String? userId,
    @Query('action') String? action,
    @Query('from') String? from,
    @Query('to') String? to,
    @Query('cursor') String? cursor,
  });
}
