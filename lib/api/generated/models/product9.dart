// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product9.freezed.dart';
part 'product9.g.dart';

@Freezed()
abstract class Product9 with _$Product9 {
  const factory Product9({
    required String id,
    required String name,
    required String stockUnit,
  }) = _Product9;
  
  factory Product9.fromJson(Map<String, Object?> json) => _$Product9FromJson(json);
}
