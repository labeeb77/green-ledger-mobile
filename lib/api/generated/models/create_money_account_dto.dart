// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_money_account_dto_type.dart';

part 'create_money_account_dto.freezed.dart';
part 'create_money_account_dto.g.dart';

@Freezed()
abstract class CreateMoneyAccountDto with _$CreateMoneyAccountDto {
  const factory CreateMoneyAccountDto({
    required CreateMoneyAccountDtoType type,
    required String name,
    String? bankName,
    String? accountNumber,
    String? ifsc,
    String? upiId,
    String? linkedAccountId,

    /// Amount in paise (₹1 = 100)
    int? openingBalance,
  }) = _CreateMoneyAccountDto;

  factory CreateMoneyAccountDto.fromJson(Map<String, Object?> json) => _$CreateMoneyAccountDtoFromJson(json);
}
