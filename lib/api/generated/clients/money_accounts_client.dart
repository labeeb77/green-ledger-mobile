// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_money_account_dto.dart';
import '../models/money_account_dto_output.dart';
import '../models/update_money_account_dto.dart';

part 'money_accounts_client.g.dart';

@RestApi()
abstract class MoneyAccountsClient {
  factory MoneyAccountsClient(Dio dio, {String? baseUrl}) = _MoneyAccountsClient;

  @GET('/api/v1/money-accounts')
  Future<List<MoneyAccountDtoOutput>> moneyAccountsControllerList();

  /// [idempotencyKey] - Client-generated UUID; retries with the same key never post twice.
  @POST('/api/v1/money-accounts')
  Future<MoneyAccountDtoOutput> moneyAccountsControllerCreate({
    @Header('Idempotency-Key') required String idempotencyKey,
    @Body() required CreateMoneyAccountDto body,
  });

  @PATCH('/api/v1/money-accounts/{id}')
  Future<MoneyAccountDtoOutput> moneyAccountsControllerUpdate({
    @Path('id') required String id,
    @Body() required UpdateMoneyAccountDto body,
  });
}
