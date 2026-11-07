// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/allocation_preview_dto_output.dart';
import '../models/billed.dart';
import '../models/cancel_result_dto_output.dart';
import '../models/create_goods_receipt_dto.dart';
import '../models/create_purchase_bill_dto.dart';
import '../models/create_supplier_payment_dto.dart';
import '../models/create_supplier_return_dto.dart';
import '../models/goods_receipt_dto_output.dart';
import '../models/goods_receipt_page_dto_output.dart';
import '../models/purchase_bill_dto_output.dart';
import '../models/purchase_bill_summary_page_dto_output.dart';
import '../models/purchase_cancel_dto.dart';
import '../models/supplier_payment_dto_output.dart';
import '../models/supplier_payment_page_dto_output.dart';
import '../models/supplier_return_dto_output.dart';
import '../models/supplier_return_page_dto_output.dart';
import '../models/unbilled_line_dto_output.dart';

part 'purchases_client.g.dart';

@RestApi()
abstract class PurchasesClient {
  factory PurchasesClient(Dio dio, {String? baseUrl}) = _PurchasesClient;

  @GET('/api/v1/goods-receipts')
  Future<GoodsReceiptPageDtoOutput> goodsReceiptsControllerList({
    @Query('limit') int? limit = 50,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('supplierId') String? supplierId,
    @Query('cursor') String? cursor,
    @Query('billed') Billed? billed,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/goods-receipts')
  Future<GoodsReceiptDtoOutput> goodsReceiptsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateGoodsReceiptDto body,
  });

  @GET('/api/v1/goods-receipts/unbilled')
  Future<List<UnbilledLineDtoOutput>> goodsReceiptsControllerUnbilled({
    @Query('supplierId') required String supplierId,
  });

  @GET('/api/v1/goods-receipts/{id}')
  Future<GoodsReceiptDtoOutput> goodsReceiptsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/goods-receipts/{id}/cancel')
  Future<CancelResultDtoOutput> goodsReceiptsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required PurchaseCancelDto body,
  });

  @GET('/api/v1/purchase-bills')
  Future<PurchaseBillSummaryPageDtoOutput> purchaseBillsControllerList({
    @Query('limit') int? limit = 50,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('supplierId') String? supplierId,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/purchase-bills')
  Future<PurchaseBillDtoOutput> purchaseBillsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreatePurchaseBillDto body,
  });

  @GET('/api/v1/purchase-bills/{id}')
  Future<PurchaseBillDtoOutput> purchaseBillsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/purchase-bills/{id}/cancel')
  Future<CancelResultDtoOutput> purchaseBillsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required PurchaseCancelDto body,
  });

  @GET('/api/v1/supplier-payments')
  Future<SupplierPaymentPageDtoOutput> supplierPaymentsControllerList({
    @Query('limit') int? limit = 50,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('supplierId') String? supplierId,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/supplier-payments')
  Future<SupplierPaymentDtoOutput> supplierPaymentsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateSupplierPaymentDto body,
  });

  @GET('/api/v1/supplier-payments/allocation-preview')
  Future<AllocationPreviewDtoOutput> supplierPaymentsControllerPreview({
    @Query('supplierId') required String supplierId,
    @Query('amount') required int amount,
  });

  @GET('/api/v1/supplier-payments/{id}')
  Future<SupplierPaymentDtoOutput> supplierPaymentsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/supplier-payments/{id}/cancel')
  Future<CancelResultDtoOutput> supplierPaymentsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required PurchaseCancelDto body,
  });

  @GET('/api/v1/supplier-returns')
  Future<SupplierReturnPageDtoOutput> supplierReturnsControllerList({
    @Query('limit') int? limit = 50,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('supplierId') String? supplierId,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/supplier-returns')
  Future<SupplierReturnDtoOutput> supplierReturnsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateSupplierReturnDto body,
  });

  @GET('/api/v1/supplier-returns/{id}')
  Future<SupplierReturnDtoOutput> supplierReturnsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/supplier-returns/{id}/cancel')
  Future<CancelResultDtoOutput> supplierReturnsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required PurchaseCancelDto body,
  });
}
