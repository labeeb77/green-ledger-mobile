// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'credit_type.dart';

part 'allocations2.freezed.dart';
part 'allocations2.g.dart';

@Freezed()
abstract class Allocations2 with _$Allocations2 {
  const factory Allocations2({
    required CreditType creditType,
    required String creditId,
    required String creditNumber,
    required String? billId,
    required String billNumber,
    required int amount,
  }) = _Allocations2;
  
  factory Allocations2.fromJson(Map<String, Object?> json) => _$Allocations2FromJson(json);
}
