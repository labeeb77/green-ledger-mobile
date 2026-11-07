// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_money_account_dto.freezed.dart';
part 'update_money_account_dto.g.dart';

@Freezed()
abstract class UpdateMoneyAccountDto with _$UpdateMoneyAccountDto {
  const factory UpdateMoneyAccountDto({
    String? name,
    String? bankName,
    String? accountNumber,
    String? ifsc,
    String? upiId,
    String? linkedAccountId,

    /// Amount in paise (₹1 = 100)
    int? openingBalance,
    bool? active,
  }) = _UpdateMoneyAccountDto;

  factory UpdateMoneyAccountDto.fromJson(Map<String, Object?> json) => _$UpdateMoneyAccountDtoFromJson(json);
}
