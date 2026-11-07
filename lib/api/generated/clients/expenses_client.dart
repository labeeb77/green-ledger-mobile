// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/cancel_dto.dart';
import '../models/cancel_result_dto_output.dart';
import '../models/create_expense_dto.dart';
import '../models/expense_dto_output.dart';
import '../models/expense_list_dto_output.dart';
import '../models/status3.dart';

part 'expenses_client.g.dart';

@RestApi()
abstract class ExpensesClient {
  factory ExpensesClient(Dio dio, {String? baseUrl}) = _ExpensesClient;

  @GET('/api/v1/expenses')
  Future<ExpenseListDtoOutput> expensesControllerList({
    @Query('limit') int? limit = 50,
    @Query('from') String? from,
    @Query('to') String? to,
    @Query('categoryId') String? categoryId,
    @Query('accountId') String? accountId,
    @Query('status') Status3? status,
    @Query('cursor') String? cursor,
  });

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/expenses')
  Future<ExpenseDtoOutput> expensesControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateExpenseDto body,
  });

  @GET('/api/v1/expenses/{id}')
  Future<ExpenseDtoOutput> expensesControllerGet({@Path('id') required String id});

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/expenses/{id}/cancel')
  Future<CancelResultDtoOutput> expensesControllerCancel({
    @Path('id') required String id,
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CancelDto body,
  });
}
