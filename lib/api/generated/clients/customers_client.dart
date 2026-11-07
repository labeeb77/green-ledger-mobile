// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_customer_dto.dart';
import '../models/customer_areas_dto_output.dart';
import '../models/customer_dto_output.dart';
import '../models/statement_dto_output.dart';
import '../models/status2.dart';
import '../models/update_customer_dto.dart';

part 'customers_client.g.dart';

@RestApi()
abstract class CustomersClient {
  factory CustomersClient(Dio dio, {String? baseUrl}) = _CustomersClient;

  @GET('/api/v1/customers')
  Future<List<CustomerDtoOutput>> customersControllerList({
    @Query('search') String? search,
    @Query('area') String? area,
    @Query('agentUserId') String? agentUserId,
    @Query('priceGroupId') String? priceGroupId,
    @Query('status') Status2? status,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/customers')
  Future<CustomerDtoOutput> customersControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateCustomerDto body,
  });

  @GET('/api/v1/customers/areas')
  Future<CustomerAreasDtoOutput> customersControllerAreas();

  @GET('/api/v1/customers/{id}')
  Future<CustomerDtoOutput> customersControllerGet({@Path('id') required String id});

  @PATCH('/api/v1/customers/{id}')
  Future<CustomerDtoOutput> customersControllerUpdate({
    @Path('id') required String id,
    @Body() required UpdateCustomerDto body,
  });

  @GET('/api/v1/customers/{id}/statement')
  Future<StatementDtoOutput> customersControllerStatement({
    @Path('id') required String id,
    @Query('from') required String from,
    @Query('to') required String to,
  });
}
