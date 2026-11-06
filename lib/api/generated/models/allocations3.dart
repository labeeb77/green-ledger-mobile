// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocations3.freezed.dart';
part 'allocations3.g.dart';

@Freezed()
abstract class Allocations3 with _$Allocations3 {
  const factory Allocations3({
    required String billId,

    /// Amount in paise (₹1 = 100)
    required int amount,
  }) = _Allocations3;
  
  factory Allocations3.fromJson(Map<String, Object?> json) => _$Allocations3FromJson(json);
}
