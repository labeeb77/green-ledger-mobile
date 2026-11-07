// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/approval_count_dto_output.dart';
import '../models/approval_dto_output.dart';
import '../models/approval_page_dto_output.dart';
import '../models/decide_dto.dart';
import '../models/status.dart';
import '../models/type.dart';

part 'approvals_client.g.dart';

@RestApi()
abstract class ApprovalsClient {
  factory ApprovalsClient(Dio dio, {String? baseUrl}) = _ApprovalsClient;

  @GET('/api/v1/approvals')
  Future<ApprovalPageDtoOutput> approvalsControllerList({
    @Query('limit') int? limit = 50,
    @Query('status') Status? status,
    @Query('type') Type? type,
    @Query('cursor') String? cursor,
  });

  @GET('/api/v1/approvals/count')
  Future<ApprovalCountDtoOutput> approvalsControllerCount();

  @GET('/api/v1/approvals/mine')
  Future<ApprovalPageDtoOutput> approvalsControllerMine({
    @Query('limit') int? limit = 50,
    @Query('status') Status? status,
    @Query('type') Type? type,
    @Query('cursor') String? cursor,
  });

  @GET('/api/v1/approvals/{id}')
  Future<ApprovalDtoOutput> approvalsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/approvals/{id}/approve')
  Future<ApprovalDtoOutput> approvalsControllerApprove({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required DecideDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/approvals/{id}/reject')
  Future<ApprovalDtoOutput> approvalsControllerReject({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required DecideDto body,
  });
}
