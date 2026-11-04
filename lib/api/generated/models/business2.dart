// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription3.dart';

part 'business2.freezed.dart';
part 'business2.g.dart';

@Freezed()
abstract class Business2 with _$Business2 {
  const factory Business2({
    required String id,
    required String name,
    required String? phone,
    required DateTime createdAt,
    required Subscription3? subscription,
    required int userCount,
    required int activeUserCount,
    required String? lastActivityAt,
    required String? supportAccessUntil,
  }) = _Business2;
  
  factory Business2.fromJson(Map<String, Object?> json) => _$Business2FromJson(json);
}
