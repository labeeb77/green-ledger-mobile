// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/active.dart';
import '../models/create_supplier_dto.dart';
import '../models/statement_dto_output.dart';
import '../models/supplier_dto_output.dart';
import '../models/update_supplier_dto.dart';

part 'suppliers_client.g.dart';

@RestApi()
abstract class SuppliersClient {
  factory SuppliersClient(Dio dio, {String? baseUrl}) = _SuppliersClient;

  @GET('/api/v1/suppliers')
  Future<List<SupplierDtoOutput>> suppliersControllerList({
    @Query('search') String? search,
    @Query('active') Active? active,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/suppliers')
  Future<SupplierDtoOutput> suppliersControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateSupplierDto body,
  });

  @GET('/api/v1/suppliers/{id}')
  Future<SupplierDtoOutput> suppliersControllerGet({
    @Path('id') required String id,
  });

  @PATCH('/api/v1/suppliers/{id}')
  Future<SupplierDtoOutput> suppliersControllerUpdate({
    @Path('id') required String id,
    @Body() required UpdateSupplierDto body,
  });

  @GET('/api/v1/suppliers/{id}/statement')
  Future<StatementDtoOutput> suppliersControllerStatement({
    @Path('id') required String id,
    @Query('from') required DateTime from,
    @Query('to') required DateTime to,
  });
}
