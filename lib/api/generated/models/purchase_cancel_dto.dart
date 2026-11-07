// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_cancel_dto.freezed.dart';
part 'purchase_cancel_dto.g.dart';

@Freezed()
abstract class PurchaseCancelDto with _$PurchaseCancelDto {
  const factory PurchaseCancelDto({required String reason}) = _PurchaseCancelDto;

  factory PurchaseCancelDto.fromJson(Map<String, Object?> json) => _$PurchaseCancelDtoFromJson(json);
}
