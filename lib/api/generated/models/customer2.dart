// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer2.freezed.dart';
part 'customer2.g.dart';

@Freezed()
abstract class Customer2 with _$Customer2 {
  const factory Customer2({required String id, required String name}) = _Customer2;

  factory Customer2.fromJson(Map<String, Object?> json) => _$Customer2FromJson(json);
}
