// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer5.freezed.dart';
part 'customer5.g.dart';

@Freezed()
abstract class Customer5 with _$Customer5 {
  const factory Customer5({
    required String id,
    required String name,
  }) = _Customer5;
  
  factory Customer5.fromJson(Map<String, Object?> json) => _$Customer5FromJson(json);
}
