// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines6.dart';

part 'create_supplier_return_dto.freezed.dart';
part 'create_supplier_return_dto.g.dart';

@Freezed()
abstract class CreateSupplierReturnDto with _$CreateSupplierReturnDto {
  const factory CreateSupplierReturnDto({
    required String supplierId,
    required List<Lines6> lines,
    DateTime? returnDate,
    String? billId,
    String? reason,
  }) = _CreateSupplierReturnDto;
  
  factory CreateSupplierReturnDto.fromJson(Map<String, Object?> json) => _$CreateSupplierReturnDtoFromJson(json);
}
