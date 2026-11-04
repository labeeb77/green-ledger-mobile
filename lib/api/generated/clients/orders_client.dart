// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/cancel_order_dto.dart';
import '../models/create_dispatch_dto.dart';
import '../models/create_order_dto.dart';
import '../models/dispatch_result_dto_output.dart';
import '../models/order_dto_output.dart';
import '../models/status5.dart';

part 'orders_client.g.dart';

@RestApi()
abstract class OrdersClient {
  factory OrdersClient(Dio dio, {String? baseUrl}) = _OrdersClient;

  @GET('/api/v1/orders')
  Future<List<OrderDtoOutput>> ordersControllerList({
    @Query('status') Status5? status,
    @Query('customerId') String? customerId,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/orders')
  Future<OrderDtoOutput> ordersControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateOrderDto body,
  });

  @GET('/api/v1/orders/to-dispatch')
  Future<List<OrderDtoOutput>> ordersControllerToDispatch();

  @GET('/api/v1/orders/{id}')
  Future<OrderDtoOutput> ordersControllerGet({
    @Path('id') required String id,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/orders/{id}/cancel')
  Future<OrderDtoOutput> ordersControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CancelOrderDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/dispatches')
  Future<DispatchResultDtoOutput> dispatchesControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateDispatchDto body,
  });
}
