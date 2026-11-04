// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product7.freezed.dart';
part 'product7.g.dart';

@Freezed()
abstract class Product7 with _$Product7 {
  const factory Product7({
    required String id,
    required String name,
    required String stockUnit,
  }) = _Product7;
  
  factory Product7.fromJson(Map<String, Object?> json) => _$Product7FromJson(json);
}
