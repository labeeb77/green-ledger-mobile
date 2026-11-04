// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'actor.dart';

part 'items.freezed.dart';
part 'items.g.dart';

@Freezed()
abstract class Items with _$Items {
  const factory Items({
    required String id,
    required DateTime at,
    required Actor actor,
    required String action,
    required String entityType,
    required String? entityId,
    required String? summary,
    dynamic before,
    dynamic after,
  }) = _Items;
  
  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}
