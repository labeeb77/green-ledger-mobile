// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/cancel_dto.dart';
import '../models/cancel_result_dto_output.dart';
import '../models/create_customer_return_dto.dart';
import '../models/create_sales_bill_dto.dart';
import '../models/customer_return_dto_output.dart';
import '../models/inspect_return_dto.dart';
import '../models/sales_bill_dto_output.dart';
import '../models/sales_bill_summary_dto_output.dart';
import '../models/sales_cancel_dto.dart';
import '../models/status3.dart';

part 'sales_client.g.dart';

@RestApi()
abstract class SalesClient {
  factory SalesClient(Dio dio, {String? baseUrl}) = _SalesClient;

  @GET('/api/v1/sales-bills')
  Future<List<SalesBillSummaryDtoOutput>> salesBillsControllerList({
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('customerId') String? customerId,
    @Query('status') Status3? status,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/sales-bills')
  Future<SalesBillDtoOutput> salesBillsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateSalesBillDto body,
  });

  @GET('/api/v1/sales-bills/{id}')
  Future<SalesBillDtoOutput> salesBillsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/sales-bills/{id}/cancel')
  Future<CancelResultDtoOutput> salesBillsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required SalesCancelDto body,
  });

  @GET('/api/v1/customer-returns')
  Future<List<CustomerReturnDtoOutput>> customerReturnsControllerList({
    @Query('customerId') String? customerId,
    @Query('status') Status3? status,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customer-returns')
  Future<CustomerReturnDtoOutput> customerReturnsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateCustomerReturnDto body,
  });

  @GET('/api/v1/customer-returns/to-inspect')
  Future<List<CustomerReturnDtoOutput>> customerReturnsControllerToInspect();

  @GET('/api/v1/customer-returns/{id}')
  Future<CustomerReturnDtoOutput> customerReturnsControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customer-returns/{id}/inspect')
  Future<CustomerReturnDtoOutput> customerReturnsControllerInspect({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required InspectReturnDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customer-returns/{id}/cancel')
  Future<CancelResultDtoOutput> customerReturnsControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CancelDto body,
  });
}
