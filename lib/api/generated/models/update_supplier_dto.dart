// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_supplier_dto.freezed.dart';
part 'update_supplier_dto.g.dart';

@Freezed()
abstract class UpdateSupplierDto with _$UpdateSupplierDto {
  const factory UpdateSupplierDto({
    String? name,
    String? phone,
    String? address,
    String? notes,

    /// Amount in paise (₹1 = 100)
    int? openingBalance,
    bool? active,
  }) = _UpdateSupplierDto;

  factory UpdateSupplierDto.fromJson(Map<String, Object?> json) => _$UpdateSupplierDtoFromJson(json);
}
