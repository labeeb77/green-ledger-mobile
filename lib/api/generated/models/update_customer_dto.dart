// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_customer_dto_status.dart';

part 'update_customer_dto.freezed.dart';
part 'update_customer_dto.g.dart';

@Freezed()
abstract class UpdateCustomerDto with _$UpdateCustomerDto {
  const factory UpdateCustomerDto({
    String? name,
    String? phone,
    String? whatsapp,
    String? area,
    String? address,
    String? notes,
    String? priceGroupId,

    /// Amount in paise (₹1 = 100)
    int? creditLimit,
    int? creditDays,
    String? agentUserId,

    /// Amount in paise (₹1 = 100)
    int? openingBalance,
    UpdateCustomerDtoStatus? status,
  }) = _UpdateCustomerDto;

  factory UpdateCustomerDto.fromJson(Map<String, Object?> json) => _$UpdateCustomerDtoFromJson(json);
}
