// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product3.freezed.dart';
part 'product3.g.dart';

@Freezed()
abstract class Product3 with _$Product3 {
  const factory Product3({
    required String id,
    required String name,
    required String stockUnit,
  }) = _Product3;
  
  factory Product3.fromJson(Map<String, Object?> json) => _$Product3FromJson(json);
}
