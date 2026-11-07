// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'by_method2.freezed.dart';
part 'by_method2.g.dart';

@Freezed()
abstract class ByMethod2 with _$ByMethod2 {
  const factory ByMethod2({
    required int cash,
    required int upi,
    @JsonKey(name: 'bank_transfer') required int bankTransfer,
    required int cheque,
  }) = _ByMethod2;

  factory ByMethod2.fromJson(Map<String, Object?> json) => _$ByMethod2FromJson(json);
}
