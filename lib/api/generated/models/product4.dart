// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product4.freezed.dart';
part 'product4.g.dart';

@Freezed()
abstract class Product4 with _$Product4 {
  const factory Product4({required String id, required String name, required String stockUnit}) = _Product4;

  factory Product4.fromJson(Map<String, Object?> json) => _$Product4FromJson(json);
}
