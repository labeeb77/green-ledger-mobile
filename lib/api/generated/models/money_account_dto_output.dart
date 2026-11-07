// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'money_account_dto_output_type.dart';

part 'money_account_dto_output.freezed.dart';
part 'money_account_dto_output.g.dart';

@Freezed()
abstract class MoneyAccountDtoOutput with _$MoneyAccountDtoOutput {
  const factory MoneyAccountDtoOutput({
    required String id,
    required MoneyAccountDtoOutputType type,
    required String name,
    required String? bankName,
    required String? accountNumber,
    required String? ifsc,
    required String? upiId,
    required String? linkedAccountId,
    required String? agentUserId,
    required int openingBalance,
    required int balance,
    required bool system,
    required bool active,
  }) = _MoneyAccountDtoOutput;

  factory MoneyAccountDtoOutput.fromJson(Map<String, Object?> json) => _$MoneyAccountDtoOutputFromJson(json);
}
