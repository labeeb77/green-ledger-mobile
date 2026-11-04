// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines18.dart';

part 'create_customer_return_dto.freezed.dart';
part 'create_customer_return_dto.g.dart';

@Freezed()
abstract class CreateCustomerReturnDto with _$CreateCustomerReturnDto {
  const factory CreateCustomerReturnDto({
    required String customerId,
    required List<Lines18> lines,
    String? billId,
    DateTime? returnDate,
    String? notes,
  }) = _CreateCustomerReturnDto;
  
  factory CreateCustomerReturnDto.fromJson(Map<String, Object?> json) => _$CreateCustomerReturnDtoFromJson(json);
}
