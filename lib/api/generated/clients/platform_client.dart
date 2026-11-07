// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/business_summary_dto_output.dart';
import '../models/create_business_dto.dart';
import '../models/created_business_dto_output.dart';
import '../models/owner_password_reset_dto_output.dart';
import '../models/platform_report_dto_output.dart';
import '../models/record_payment_dto.dart';
import '../models/subscription_payment_dto_output.dart';
import '../models/support_session_dto_output.dart';
import '../models/update_subscription_dto.dart';

part 'platform_client.g.dart';

@RestApi()
abstract class PlatformClient {
  factory PlatformClient(Dio dio, {String? baseUrl}) = _PlatformClient;

  @GET('/api/v1/platform/businesses')
  Future<List<BusinessSummaryDtoOutput>> platformControllerList();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/platform/businesses')
  Future<CreatedBusinessDtoOutput> platformControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateBusinessDto body,
  });

  @PATCH('/api/v1/platform/businesses/{id}/subscription')
  Future<BusinessSummaryDtoOutput> platformControllerUpdateSubscription({
    @Path('id') required String id,
    @Body() required UpdateSubscriptionDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/platform/businesses/{id}/owner/reset-password')
  Future<OwnerPasswordResetDtoOutput> platformControllerResetOwnerPassword({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  @GET('/api/v1/platform/businesses/{id}/payments')
  Future<List<SubscriptionPaymentDtoOutput>> platformControllerPayments({@Path('id') required String id});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/platform/businesses/{id}/payments')
  Future<SubscriptionPaymentDtoOutput> platformControllerRecordPayment({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required RecordPaymentDto body,
  });

  @GET('/api/v1/platform/reports')
  Future<PlatformReportDtoOutput> platformReportsControllerReport();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/platform/businesses/{id}/support-session')
  Future<SupportSessionDtoOutput> platformSupportControllerOpen({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
  });
}
