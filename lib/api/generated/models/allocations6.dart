// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocations6.freezed.dart';
part 'allocations6.g.dart';

@Freezed()
abstract class Allocations6 with _$Allocations6 {
  const factory Allocations6({
    required String? billId,
    required String billNumber,
    required int amount,
  }) = _Allocations6;
  
  factory Allocations6.fromJson(Map<String, Object?> json) => _$Allocations6FromJson(json);
}
