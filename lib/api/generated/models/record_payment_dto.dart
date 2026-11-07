// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'record_payment_dto_method.dart';

part 'record_payment_dto.freezed.dart';
part 'record_payment_dto.g.dart';

@Freezed()
abstract class RecordPaymentDto with _$RecordPaymentDto {
  const factory RecordPaymentDto({
    /// Amount in paise (₹1 = 100)
    required int amount,
    required RecordPaymentDtoMethod method,
    String? paidOn,
    String? reference,
    String? notes,
    DateTime? extendTo,
  }) = _RecordPaymentDto;

  factory RecordPaymentDto.fromJson(Map<String, Object?> json) => _$RecordPaymentDtoFromJson(json);
}
