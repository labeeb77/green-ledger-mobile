// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'by_method3.dart';

part 'collected.freezed.dart';
part 'collected.g.dart';

@Freezed()
abstract class Collected with _$Collected {
  const factory Collected({required int total, required ByMethod3 byMethod}) = _Collected;

  factory Collected.fromJson(Map<String, Object?> json) => _$CollectedFromJson(json);
}
