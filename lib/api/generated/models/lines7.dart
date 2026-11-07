// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product5.dart';
import 'pack_unit4.dart';
import 'wastage_reason.dart';

part 'lines7.freezed.dart';
part 'lines7.g.dart';

@Freezed()
abstract class Lines7 with _$Lines7 {
  const factory Lines7({
    required String id,
    required Product5 product,
    required PackUnit4? packUnit,
    required String? packCount,
    required String quantity,
    required WastageReason? wastageReason,
    required int? unitCost,
    required int? value,
  }) = _Lines7;

  factory Lines7.fromJson(Map<String, Object?> json) => _$Lines7FromJson(json);
}
