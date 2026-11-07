// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'by_method3.freezed.dart';
part 'by_method3.g.dart';

@Freezed()
abstract class ByMethod3 with _$ByMethod3 {
  const factory ByMethod3({
    required int cash,
    required int upi,
    @JsonKey(name: 'bank_transfer') required int bankTransfer,
    required int cheque,
  }) = _ByMethod3;

  factory ByMethod3.fromJson(Map<String, Object?> json) => _$ByMethod3FromJson(json);
}
