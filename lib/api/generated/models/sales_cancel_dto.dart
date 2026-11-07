// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_cancel_dto.freezed.dart';
part 'sales_cancel_dto.g.dart';

@Freezed()
abstract class SalesCancelDto with _$SalesCancelDto {
  const factory SalesCancelDto({required String reason}) = _SalesCancelDto;

  factory SalesCancelDto.fromJson(Map<String, Object?> json) => _$SalesCancelDtoFromJson(json);
}
