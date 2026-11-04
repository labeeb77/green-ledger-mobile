// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed()
abstract class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String stockUnit,
  }) = _Product;
  
  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
