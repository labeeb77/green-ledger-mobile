// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'link3.dart';

part 'outstanding.freezed.dart';
part 'outstanding.g.dart';

@Freezed()
abstract class Outstanding with _$Outstanding {
  const factory Outstanding({required int total, required int overdue, required int customers, required Link3 link}) =
      _Outstanding;

  factory Outstanding.fromJson(Map<String, Object?> json) => _$OutstandingFromJson(json);
}
