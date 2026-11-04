// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status7.dart';
import 'access.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@Freezed()
abstract class Subscription with _$Subscription {
  const factory Subscription({
    required Status7 status,
    required DateTime expiresAt,
    required int userLimit,
    required Access access,
  }) = _Subscription;
  
  factory Subscription.fromJson(Map<String, Object?> json) => _$SubscriptionFromJson(json);
}
