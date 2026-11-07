// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspected_by.freezed.dart';
part 'inspected_by.g.dart';

@Freezed()
abstract class InspectedBy with _$InspectedBy {
  const factory InspectedBy({required String id, required String name}) = _InspectedBy;

  factory InspectedBy.fromJson(Map<String, Object?> json) => _$InspectedByFromJson(json);
}
