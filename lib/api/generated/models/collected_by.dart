// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collected_by.freezed.dart';
part 'collected_by.g.dart';

@Freezed()
abstract class CollectedBy with _$CollectedBy {
  const factory CollectedBy({required String id, required String name}) = _CollectedBy;

  factory CollectedBy.fromJson(Map<String, Object?> json) => _$CollectedByFromJson(json);
}
