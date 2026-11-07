// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'supplier_return_dto_output.dart';

part 'supplier_return_page_dto_output.freezed.dart';
part 'supplier_return_page_dto_output.g.dart';

@Freezed()
abstract class SupplierReturnPageDtoOutput with _$SupplierReturnPageDtoOutput {
  const factory SupplierReturnPageDtoOutput({
    required List<SupplierReturnDtoOutput> items,
    required String? nextCursor,
  }) = _SupplierReturnPageDtoOutput;

  factory SupplierReturnPageDtoOutput.fromJson(Map<String, Object?> json) =>
      _$SupplierReturnPageDtoOutputFromJson(json);
}
