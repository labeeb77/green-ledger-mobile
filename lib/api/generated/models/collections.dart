// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'by_method.dart';
import 'link2.dart';

part 'collections.freezed.dart';
part 'collections.g.dart';

@Freezed()
abstract class Collections with _$Collections {
  const factory Collections({
    required int total,
    required ByMethod byMethod,
    required Link2 link,
  }) = _Collections;
  
  factory Collections.fromJson(Map<String, Object?> json) => _$CollectionsFromJson(json);
}
