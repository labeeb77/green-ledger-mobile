// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocations5.freezed.dart';
part 'allocations5.g.dart';

@Freezed()
abstract class Allocations5 with _$Allocations5 {
  const factory Allocations5({
    required String receiptId,
    required String receiptNumber,
    required int amount,
  }) = _Allocations5;
  
  factory Allocations5.fromJson(Map<String, Object?> json) => _$Allocations5FromJson(json);
}
