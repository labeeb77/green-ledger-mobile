// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method.dart';
import 'account.dart';

part 'splits.freezed.dart';
part 'splits.g.dart';

@Freezed()
abstract class Splits with _$Splits {
  const factory Splits({
    required Method method,
    required Account account,
    required int amount,
    required String? reference,
  }) = _Splits;
  
  factory Splits.fromJson(Map<String, Object?> json) => _$SplitsFromJson(json);
}
