// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_dto_output.dart';

part 'order_page_dto_output.freezed.dart';
part 'order_page_dto_output.g.dart';

@Freezed()
abstract class OrderPageDtoOutput with _$OrderPageDtoOutput {
  const factory OrderPageDtoOutput({required List<OrderDtoOutput> items, required String? nextCursor}) =
      _OrderPageDtoOutput;

  factory OrderPageDtoOutput.fromJson(Map<String, Object?> json) => _$OrderPageDtoOutputFromJson(json);
}
