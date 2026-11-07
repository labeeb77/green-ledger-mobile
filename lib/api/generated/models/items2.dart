// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'items2.freezed.dart';
part 'items2.g.dart';

@Freezed()
abstract class Items2 with _$Items2 {
  const factory Items2({
    required String id,
    required String type,
    required String title,
    required String? body,
    required String? link,
    required bool read,
    required DateTime createdAt,
  }) = _Items2;
  
  factory Items2.fromJson(Map<String, Object?> json) => _$Items2FromJson(json);
}
