// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product2.freezed.dart';
part 'product2.g.dart';

@Freezed()
abstract class Product2 with _$Product2 {
  const factory Product2({required String id, required String name, required String stockUnit}) = _Product2;

  factory Product2.fromJson(Map<String, Object?> json) => _$Product2FromJson(json);
}
