// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier3.freezed.dart';
part 'supplier3.g.dart';

@Freezed()
abstract class Supplier3 with _$Supplier3 {
  const factory Supplier3({
    required String id,
    required String name,
  }) = _Supplier3;
  
  factory Supplier3.fromJson(Map<String, Object?> json) => _$Supplier3FromJson(json);
}
