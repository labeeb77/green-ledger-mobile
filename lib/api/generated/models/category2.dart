// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category2.freezed.dart';
part 'category2.g.dart';

@Freezed()
abstract class Category2 with _$Category2 {
  const factory Category2({
    required String id,
    required String name,
  }) = _Category2;
  
  factory Category2.fromJson(Map<String, Object?> json) => _$Category2FromJson(json);
}
