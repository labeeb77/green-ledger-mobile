// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill2.freezed.dart';
part 'bill2.g.dart';

@Freezed()
abstract class Bill2 with _$Bill2 {
  const factory Bill2({required String id, required String? number}) = _Bill2;

  factory Bill2.fromJson(Map<String, Object?> json) => _$Bill2FromJson(json);
}
