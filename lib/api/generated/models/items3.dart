// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'items3.freezed.dart';
part 'items3.g.dart';

@Freezed()
abstract class Items3 with _$Items3 {
  const factory Items3({
    required String id,
    required String type,
    required String title,
    required String? body,
    required String? link,
    required bool read,
    required DateTime createdAt,
  }) = _Items3;
  
  factory Items3.fromJson(Map<String, Object?> json) => _$Items3FromJson(json);
}
