// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines15.dart';

part 'create_order_dto.freezed.dart';
part 'create_order_dto.g.dart';

@Freezed()
abstract class CreateOrderDto with _$CreateOrderDto {
  const factory CreateOrderDto({
    required String customerId,
    required List<Lines15> lines,
    String? orderDate,
    String? notes,
  }) = _CreateOrderDto;

  factory CreateOrderDto.fromJson(Map<String, Object?> json) => _$CreateOrderDtoFromJson(json);
}
