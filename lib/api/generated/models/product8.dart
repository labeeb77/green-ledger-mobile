// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product8.freezed.dart';
part 'product8.g.dart';

@Freezed()
abstract class Product8 with _$Product8 {
  const factory Product8({
    required String id,
    required String name,
    required String stockUnit,
  }) = _Product8;
  
  factory Product8.fromJson(Map<String, Object?> json) => _$Product8FromJson(json);
}
