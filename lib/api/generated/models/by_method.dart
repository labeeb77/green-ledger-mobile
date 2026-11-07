// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'by_method.freezed.dart';
part 'by_method.g.dart';

@Freezed()
abstract class ByMethod with _$ByMethod {
  const factory ByMethod({
    required int cash,
    required int upi,
    @JsonKey(name: 'bank_transfer') required int bankTransfer,
    required int cheque,
  }) = _ByMethod;

  factory ByMethod.fromJson(Map<String, Object?> json) => _$ByMethodFromJson(json);
}
