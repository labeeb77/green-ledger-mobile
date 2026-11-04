// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_expense_category_dto.dart';
import '../models/expense_category_dto_output.dart';
import '../models/update_expense_category_dto.dart';

part 'expense_categories_client.g.dart';

@RestApi()
abstract class ExpenseCategoriesClient {
  factory ExpenseCategoriesClient(Dio dio, {String? baseUrl}) = _ExpenseCategoriesClient;

  @GET('/api/v1/expense-categories')
  Future<List<ExpenseCategoryDtoOutput>> expenseCategoriesControllerList();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/expense-categories')
  Future<ExpenseCategoryDtoOutput> expenseCategoriesControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateExpenseCategoryDto body,
  });

  @PATCH('/api/v1/expense-categories/{id}')
  Future<ExpenseCategoryDtoOutput> expenseCategoriesControllerUpdate({
    @Path('id') required String id,
    @Body() required UpdateExpenseCategoryDto body,
  });
}
