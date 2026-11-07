// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product10.freezed.dart';
part 'product10.g.dart';

@Freezed()
abstract class Product10 with _$Product10 {
  const factory Product10({required String id, required String name, required String stockUnit}) = _Product10;

  factory Product10.fromJson(Map<String, Object?> json) => _$Product10FromJson(json);
}
