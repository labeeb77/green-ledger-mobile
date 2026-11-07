// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@Freezed()
abstract class Products with _$Products {
  const factory Products({required String id, required String name, required String? detail}) = _Products;

  factory Products.fromJson(Map<String, Object?> json) => _$ProductsFromJson(json);
}
