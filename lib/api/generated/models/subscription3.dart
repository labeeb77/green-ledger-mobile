// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status8.dart';

part 'subscription3.freezed.dart';
part 'subscription3.g.dart';

@Freezed()
abstract class Subscription3 with _$Subscription3 {
  const factory Subscription3({
    required Status8 status,
    required DateTime expiresAt,
    required int userLimit,
    required String? notes,
  }) = _Subscription3;

  factory Subscription3.fromJson(Map<String, Object?> json) => _$Subscription3FromJson(json);
}
