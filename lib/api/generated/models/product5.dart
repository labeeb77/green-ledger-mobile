// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product5.freezed.dart';
part 'product5.g.dart';

@Freezed()
abstract class Product5 with _$Product5 {
  const factory Product5({
    required String id,
    required String name,
    required String stockUnit,
  }) = _Product5;
  
  factory Product5.fromJson(Map<String, Object?> json) => _$Product5FromJson(json);
}
