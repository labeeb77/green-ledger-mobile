// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'credit_type.dart';

part 'allocations.freezed.dart';
part 'allocations.g.dart';

@Freezed()
abstract class Allocations with _$Allocations {
  const factory Allocations({
    required CreditType creditType,
    required String creditId,
    required String creditNumber,
    required String? billId,
    required String billNumber,
    required int amount,
  }) = _Allocations;

  factory Allocations.fromJson(Map<String, Object?> json) => _$AllocationsFromJson(json);
}
