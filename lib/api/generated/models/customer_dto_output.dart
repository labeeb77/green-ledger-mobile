// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent.dart';
import 'customer_dto_output_status.dart';
import 'last_visit.dart';
import 'price_group.dart';

part 'customer_dto_output.freezed.dart';
part 'customer_dto_output.g.dart';

@Freezed()
abstract class CustomerDtoOutput with _$CustomerDtoOutput {
  const factory CustomerDtoOutput({
    required String id,
    required String name,
    required String? phone,
    required String? whatsapp,
    required String? area,
    required String? address,
    required String? notes,
    required PriceGroup? priceGroup,
    required int creditLimit,
    required int creditDays,
    required Agent? agent,
    required int openingBalance,
    required CustomerDtoOutputStatus status,
    required int outstanding,
    required int overdue,
    required LastVisit? lastVisit,
    required DateTime createdAt,
  }) = _CustomerDtoOutput;

  factory CustomerDtoOutput.fromJson(Map<String, Object?> json) => _$CustomerDtoOutputFromJson(json);
}
