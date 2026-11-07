// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines12.dart';
import 'pay_now.dart';

part 'create_sales_bill_dto.freezed.dart';
part 'create_sales_bill_dto.g.dart';

@Freezed()
abstract class CreateSalesBillDto with _$CreateSalesBillDto {
  const factory CreateSalesBillDto({
    required String customerId,
    required List<Lines12> lines,
    @Default(0) int rounding,
    String? billDate,
    String? notes,
    List<PayNow>? payNow,
  }) = _CreateSalesBillDto;

  factory CreateSalesBillDto.fromJson(Map<String, Object?> json) => _$CreateSalesBillDtoFromJson(json);
}
