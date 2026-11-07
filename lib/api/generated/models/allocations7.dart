// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocations7.freezed.dart';
part 'allocations7.g.dart';

@Freezed()
abstract class Allocations7 with _$Allocations7 {
  const factory Allocations7({
    required String billId,

    /// Amount in paise (₹1 = 100)
    required int amount,
  }) = _Allocations7;

  factory Allocations7.fromJson(Map<String, Object?> json) => _$Allocations7FromJson(json);
}
