// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_customer_dto.freezed.dart';
part 'create_customer_dto.g.dart';

@Freezed()
abstract class CreateCustomerDto with _$CreateCustomerDto {
  const factory CreateCustomerDto({
    required String name,
    String? phone,
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
  }) = _CreateCustomerDto;
  
  factory CreateCustomerDto.fromJson(Map<String, Object?> json) => _$CreateCustomerDtoFromJson(json);
}
