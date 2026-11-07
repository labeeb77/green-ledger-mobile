// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/active.dart';
import '../models/create_grade_dto.dart';
import '../models/create_pack_unit_dto.dart';
import '../models/create_product_dto.dart';
import '../models/product_dto_output.dart';
import '../models/update_grade_dto.dart';
import '../models/update_pack_unit_dto.dart';
import '../models/update_product_dto.dart';

part 'products_client.g.dart';

@RestApi()
abstract class ProductsClient {
  factory ProductsClient(Dio dio, {String? baseUrl}) = _ProductsClient;

  @GET('/api/v1/products')
  Future<List<ProductDtoOutput>> productsControllerList({
    @Query('search') String? search,
    @Query('active') Active? active,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/products')
  Future<ProductDtoOutput> productsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateProductDto body,
  });

  @GET('/api/v1/products/{id}')
  Future<ProductDtoOutput> productsControllerGet({@Path('id') required String id});

  @PATCH('/api/v1/products/{id}')
  Future<ProductDtoOutput> productsControllerUpdate({
    @Path('id') required String id,
    @Body() required UpdateProductDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/products/{id}/pack-units')
  Future<ProductDtoOutput> productsControllerAddPackUnit({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreatePackUnitDto body,
  });

  @PATCH('/api/v1/products/{id}/pack-units/{packUnitId}')
  Future<ProductDtoOutput> productsControllerUpdatePackUnit({
    @Path('id') required String id,
    @Path('packUnitId') required String packUnitId,
    @Body() required UpdatePackUnitDto body,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/products/{id}/grades')
  Future<ProductDtoOutput> productsControllerAddGrade({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateGradeDto body,
  });

  @PATCH('/api/v1/products/{id}/grades/{gradeId}')
  Future<ProductDtoOutput> productsControllerUpdateGrade({
    @Path('id') required String id,
    @Path('gradeId') required String gradeId,
    @Body() required UpdateGradeDto body,
  });
}
