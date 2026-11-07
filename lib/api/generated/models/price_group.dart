// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_group.freezed.dart';
part 'price_group.g.dart';

@Freezed()
abstract class PriceGroup with _$PriceGroup {
  const factory PriceGroup({required String id, required String name}) = _PriceGroup;

  factory PriceGroup.fromJson(Map<String, Object?> json) => _$PriceGroupFromJson(json);
}
