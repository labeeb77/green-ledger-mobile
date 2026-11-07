// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/cancel_dto.dart';
import '../models/cancel_result_dto_output.dart';
import '../models/create_adjustment_dto.dart';
import '../models/create_count_dto.dart';
import '../models/create_wastage_dto.dart';
import '../models/movements_dto_output.dart';
import '../models/status3.dart';
import '../models/stock_count_dto_output.dart';
import '../models/stock_count_page_dto_output.dart';
import '../models/stock_entry_dto_output.dart';
import '../models/stock_entry_page_dto_output.dart';
import '../models/stock_row_dto_output.dart';
import '../models/type2.dart';
import '../models/update_count_dto.dart';

part 'stock_client.g.dart';

@RestApi()
abstract class StockClient {
  factory StockClient(Dio dio, {String? baseUrl}) = _StockClient;

  @GET('/api/v1/stock')
  Future<List<StockRowDtoOutput>> stockControllerOnHand();

  @GET('/api/v1/stock/entries')
  Future<StockEntryPageDtoOutput> stockControllerListEntries({
    @Query('limit') int? limit = 50,
    @Query('type') Type2? type,
    @Query('status') Status3? status,
    @Query('from') String? from,
    @Query('to') String? to,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/wastage')
  Future<StockEntryDtoOutput> stockControllerWastage({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateWastageDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/adjustments')
  Future<StockEntryDtoOutput> stockControllerAdjustment({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateAdjustmentDto body,
  });

  @GET('/api/v1/stock/entries/{id}')
  Future<StockEntryDtoOutput> stockControllerGetEntry({@Path('id') required String id});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/entries/{id}/cancel')
  Future<CancelResultDtoOutput> stockControllerCancelEntry({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CancelDto body,
  });

  @GET('/api/v1/stock/counts')
  Future<StockCountPageDtoOutput> stockControllerListCounts({
    @Query('limit') int? limit = 50,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/counts')
  Future<StockCountDtoOutput> stockControllerCreateCount({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateCountDto body,
  });

  @GET('/api/v1/stock/counts/{id}')
  Future<StockCountDtoOutput> stockControllerGetCount({@Path('id') required String id});

  @PUT('/api/v1/stock/counts/{id}')
  Future<StockCountDtoOutput> stockControllerUpdateCount({
    @Path('id') required String id,
    @Body() required UpdateCountDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/counts/{id}/post')
  Future<StockCountDtoOutput> stockControllerPostCount({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/counts/{id}/discard')
  Future<StockCountDtoOutput> stockControllerDiscardCount({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/stock/counts/{id}/cancel')
  Future<CancelResultDtoOutput> stockControllerCancelCount({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CancelDto body,
  });

  @GET('/api/v1/stock/{productId}/movements')
  Future<MovementsDtoOutput> stockControllerMovements({
    @Path('productId') required String productId,
    @Query('from') String? from,
    @Query('to') String? to,
  });
}
