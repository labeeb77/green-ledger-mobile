// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method.dart';

part 'splits4.freezed.dart';
part 'splits4.g.dart';

@Freezed()
abstract class Splits4 with _$Splits4 {
  const factory Splits4({
    required Method method,
    required int amount,
    String? accountId,
    String? reference,
    String? screenshotFileId,
    String? chequeNo,
    String? chequeBank,
    DateTime? chequeDate,
  }) = _Splits4;
  
  factory Splits4.fromJson(Map<String, Object?> json) => _$Splits4FromJson(json);
}
