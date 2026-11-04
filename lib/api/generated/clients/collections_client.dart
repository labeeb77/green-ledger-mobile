// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/bounce_cheque_dto.dart';
import '../models/cancel_result_dto_output.dart';
import '../models/cheque_dto_output.dart';
import '../models/clear_cheque_dto.dart';
import '../models/confirm_handover_dto.dart';
import '../models/create_customer_receipt_dto.dart';
import '../models/create_handover_dto.dart';
import '../models/customer_receipt_dto_output.dart';
import '../models/handover_dto_output.dart';
import '../models/my_bag_dto_output.dart';
import '../models/ok_result_dto_output.dart';
import '../models/receipt_allocation_preview_dto_output.dart';
import '../models/sales_cancel_dto.dart';
import '../models/status3.dart';
import '../models/status4.dart';
import '../models/status6.dart';
import '../models/unverified_split_dto_output.dart';

part 'collections_client.g.dart';

@RestApi()
abstract class CollectionsClient {
  factory CollectionsClient(Dio dio, {String? baseUrl}) = _CollectionsClient;

  @GET('/api/v1/customer-receipts')
  Future<List<CustomerReceiptDtoOutput>> customerReceiptsControllerList({
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('customerId') String? customerId,
    @Query('status') Status3? status,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customer-receipts')
  Future<CustomerReceiptDtoOutput> customerReceiptsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateCustomerReceiptDto body,
  });

  @GET('/api/v1/customer-receipts/allocation-preview')
  Future<ReceiptAllocationPreviewDtoOutput> customerReceiptsControllerPreview({
    @Query('customerId') required String customerId,
    @Query('amount') required int amount,
  });

  @GET('/api/v1/customer-receipts/unverified')
  Future<List<UnverifiedSplitDtoOutput>> customerReceiptsControllerUnverified();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customer-receipts/splits/{splitId}/verify')
  Future<OkResultDtoOutput> customerReceiptsControllerVerify({
    @Path('splitId') required String splitId,
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  @GET('/api/v1/customer-receipts/{id}')
  Future<CustomerReceiptDtoOutput> customerReceiptsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customer-receipts/{id}/cancel')
  Future<CancelResultDtoOutput> customerReceiptsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required SalesCancelDto body,
  });

  @GET('/api/v1/cheques')
  Future<List<ChequeDtoOutput>> chequesControllerList({
    @Query('status') Status4? status,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/cheques/{id}/clear')
  Future<OkResultDtoOutput> chequesControllerClear({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required ClearChequeDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/cheques/{id}/bounce')
  Future<OkResultDtoOutput> chequesControllerBounce({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required BounceChequeDto body,
  });

  @GET('/api/v1/cash-handovers')
  Future<List<HandoverDtoOutput>> cashHandoversControllerList({
    @Query('status') Status6? status,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/cash-handovers')
  Future<HandoverDtoOutput> cashHandoversControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateHandoverDto body,
  });

  @GET('/api/v1/cash-handovers/my-bag')
  Future<MyBagDtoOutput> cashHandoversControllerMyBag();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/cash-handovers/{id}/confirm')
  Future<HandoverDtoOutput> cashHandoversControllerConfirm({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required ConfirmHandoverDto body,
  });
}
