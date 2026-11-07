// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_return_dto_output.dart';

part 'customer_return_page_dto_output.freezed.dart';
part 'customer_return_page_dto_output.g.dart';

@Freezed()
abstract class CustomerReturnPageDtoOutput with _$CustomerReturnPageDtoOutput {
  const factory CustomerReturnPageDtoOutput({
    required List<CustomerReturnDtoOutput> items,
    required String? nextCursor,
  }) = _CustomerReturnPageDtoOutput;
  
  factory CustomerReturnPageDtoOutput.fromJson(Map<String, Object?> json) => _$CustomerReturnPageDtoOutputFromJson(json);
}
