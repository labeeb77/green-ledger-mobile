// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_price_group_dto.dart';
import '../models/customer_rate_dto_output.dart';
import '../models/daily_rates_dto_output.dart';
import '../models/price_group_dto_output.dart';
import '../models/rate_quote_dto_output.dart';
import '../models/set_customer_rate_dto.dart';
import '../models/set_daily_rates_dto.dart';
import '../models/update_price_group_dto.dart';

part 'pricing_client.g.dart';

@RestApi()
abstract class PricingClient {
  factory PricingClient(Dio dio, {String? baseUrl}) = _PricingClient;

  @GET('/api/v1/pricing/daily-rates')
  Future<DailyRatesDtoOutput> pricingControllerDailyRates({
    @Query('date') DateTime? date,
  });

  @PUT('/api/v1/pricing/daily-rates')
  Future<DailyRatesDtoOutput> pricingControllerSetDailyRates({
    @Body() required SetDailyRatesDto body,
  });

  @GET('/api/v1/pricing/price-groups')
  Future<List<PriceGroupDtoOutput>> pricingControllerPriceGroups();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/pricing/price-groups')
  Future<PriceGroupDtoOutput> pricingControllerCreatePriceGroup({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreatePriceGroupDto body,
  });

  @PATCH('/api/v1/pricing/price-groups/{id}')
  Future<PriceGroupDtoOutput> pricingControllerUpdatePriceGroup({
    @Path('id') required String id,
    @Body() required UpdatePriceGroupDto body,
  });

  @GET('/api/v1/pricing/quote')
  Future<RateQuoteDtoOutput> pricingControllerQuote({
    @Query('productId') required String productId,
    @Query('customerId') String? customerId,
    @Query('packUnitId') String? packUnitId,
    @Query('date') DateTime? date,
  });

  @GET('/api/v1/customers/{customerId}/rates')
  Future<List<CustomerRateDtoOutput>> customerRatesControllerList({
    @Path('customerId') required String customerId,
  });

  @PUT('/api/v1/customers/{customerId}/rates/{productId}')
  Future<List<CustomerRateDtoOutput>> customerRatesControllerSet({
    @Path('customerId') required String customerId,
    @Path('productId') required String productId,
    @Body() required SetCustomerRateDto body,
  });

  @DELETE('/api/v1/customers/{customerId}/rates/{productId}')
  Future<List<CustomerRateDtoOutput>> customerRatesControllerRemove({
    @Path('customerId') required String customerId,
    @Path('productId') required String productId,
  });
}
