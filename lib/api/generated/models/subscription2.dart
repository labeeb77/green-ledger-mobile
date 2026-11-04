// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status7.dart';

part 'subscription2.freezed.dart';
part 'subscription2.g.dart';

@Freezed()
abstract class Subscription2 with _$Subscription2 {
  const factory Subscription2({
    required Status7 status,
    required DateTime expiresAt,
    required int userLimit,
    required String? notes,
  }) = _Subscription2;
  
  factory Subscription2.fromJson(Map<String, Object?> json) => _$Subscription2FromJson(json);
}
