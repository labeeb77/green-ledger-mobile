// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role2.dart';

part 'user2.freezed.dart';
part 'user2.g.dart';

@Freezed()
abstract class User2 with _$User2 {
  const factory User2({required String id, required String name, required String phone, required Role2 role}) = _User2;

  factory User2.fromJson(Map<String, Object?> json) => _$User2FromJson(json);
}
