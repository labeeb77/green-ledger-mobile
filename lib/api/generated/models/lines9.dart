// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'direction.dart';

part 'lines9.freezed.dart';
part 'lines9.g.dart';

@Freezed()
abstract class Lines9 with _$Lines9 {
  const factory Lines9({
    required String productId,
    required dynamic quantity,
    required Direction direction,
    String? packUnitId,
    dynamic packCount,
  }) = _Lines9;

  factory Lines9.fromJson(Map<String, Object?> json) => _$Lines9FromJson(json);
}
