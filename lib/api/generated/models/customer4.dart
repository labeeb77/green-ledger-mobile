// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer4.freezed.dart';
part 'customer4.g.dart';

@Freezed()
abstract class Customer4 with _$Customer4 {
  const factory Customer4({
    required String id,
    required String name,
  }) = _Customer4;
  
  factory Customer4.fromJson(Map<String, Object?> json) => _$Customer4FromJson(json);
}
