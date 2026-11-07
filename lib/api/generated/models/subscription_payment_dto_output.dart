// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_payment_dto_output.freezed.dart';
part 'subscription_payment_dto_output.g.dart';

@Freezed()
abstract class SubscriptionPaymentDtoOutput with _$SubscriptionPaymentDtoOutput {
  const factory SubscriptionPaymentDtoOutput({
    required String id,
    required int amount,
    required String paidOn,
    required String method,
    required String? reference,
    required String? notes,
    required String? extendedTo,
    required DateTime createdAt,
  }) = _SubscriptionPaymentDtoOutput;

  factory SubscriptionPaymentDtoOutput.fromJson(Map<String, Object?> json) =>
      _$SubscriptionPaymentDtoOutputFromJson(json);
}
