// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmed_by.freezed.dart';
part 'confirmed_by.g.dart';

@Freezed()
abstract class ConfirmedBy with _$ConfirmedBy {
  const factory ConfirmedBy({
    required String id,
    required String name,
  }) = _ConfirmedBy;
  
  factory ConfirmedBy.fromJson(Map<String, Object?> json) => _$ConfirmedByFromJson(json);
}
