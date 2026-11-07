// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method.dart';
import 'account2.dart';
import 'cheque.dart';

part 'splits3.freezed.dart';
part 'splits3.g.dart';

@Freezed()
abstract class Splits3 with _$Splits3 {
  const factory Splits3({
    required String id,
    required Method method,
    required Account2 account,
    required int amount,
    required String? reference,
    required String? screenshotUrl,
    required bool verified,
    required Cheque? cheque,
  }) = _Splits3;

  factory Splits3.fromJson(Map<String, Object?> json) => _$Splits3FromJson(json);
}
