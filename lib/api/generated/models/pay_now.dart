// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method.dart';

part 'pay_now.freezed.dart';
part 'pay_now.g.dart';

@Freezed()
abstract class PayNow with _$PayNow {
  const factory PayNow({
    required Method method,
    required int amount,
    String? accountId,
    String? reference,
    String? screenshotFileId,
    String? chequeNo,
    String? chequeBank,
    DateTime? chequeDate,
  }) = _PayNow;
  
  factory PayNow.fromJson(Map<String, Object?> json) => _$PayNowFromJson(json);
}
