// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_supplier_dto.freezed.dart';
part 'create_supplier_dto.g.dart';

@Freezed()
abstract class CreateSupplierDto with _$CreateSupplierDto {
  const factory CreateSupplierDto({
    required String name,
    String? phone,
    String? address,
    String? notes,

    /// Amount in paise (₹1 = 100)
    int? openingBalance,
  }) = _CreateSupplierDto;
  
  factory CreateSupplierDto.fromJson(Map<String, Object?> json) => _$CreateSupplierDtoFromJson(json);
}
