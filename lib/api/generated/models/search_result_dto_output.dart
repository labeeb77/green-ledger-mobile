// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'customers.dart';
import 'documents.dart';
import 'products.dart';

part 'search_result_dto_output.freezed.dart';
part 'search_result_dto_output.g.dart';

@Freezed()
abstract class SearchResultDtoOutput with _$SearchResultDtoOutput {
  const factory SearchResultDtoOutput({
    required List<Customers> customers,
    required List<Products> products,
    required List<Documents> documents,
  }) = _SearchResultDtoOutput;
  
  factory SearchResultDtoOutput.fromJson(Map<String, Object?> json) => _$SearchResultDtoOutputFromJson(json);
}
