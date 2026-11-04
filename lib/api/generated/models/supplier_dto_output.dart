// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_dto_output.freezed.dart';
part 'supplier_dto_output.g.dart';

@Freezed()
abstract class SupplierDtoOutput with _$SupplierDtoOutput {
  const factory SupplierDtoOutput({
    required String id,
    required String name,
    required String? phone,
    required String? address,
    required String? notes,
    required int openingBalance,
    required int due,
    required bool active,
    required DateTime createdAt,
  }) = _SupplierDtoOutput;
  
  factory SupplierDtoOutput.fromJson(Map<String, Object?> json) => _$SupplierDtoOutputFromJson(json);
}
