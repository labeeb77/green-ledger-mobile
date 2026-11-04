// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_order_dto.freezed.dart';
part 'cancel_order_dto.g.dart';

@Freezed()
abstract class CancelOrderDto with _$CancelOrderDto {
  const factory CancelOrderDto({
    required String reason,
  }) = _CancelOrderDto;
  
  factory CancelOrderDto.fromJson(Map<String, Object?> json) => _$CancelOrderDtoFromJson(json);
}
