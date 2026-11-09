// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'packs.freezed.dart';
part 'packs.g.dart';

@Freezed()
abstract class Packs with _$Packs {
  const factory Packs({
    required String packUnitId,
    required String name,
    required String count,
    required bool estimated,
  }) = _Packs;

  factory Packs.fromJson(Map<String, Object?> json) => _$PacksFromJson(json);
}
