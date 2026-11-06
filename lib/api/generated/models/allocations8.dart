// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocations8.freezed.dart';
part 'allocations8.g.dart';

@Freezed()
abstract class Allocations8 with _$Allocations8 {
  const factory Allocations8({
    required String billId,
    required int amount,
  }) = _Allocations8;
  
  factory Allocations8.fromJson(Map<String, Object?> json) => _$Allocations8FromJson(json);
}
