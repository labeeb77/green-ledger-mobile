// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product10.dart';
import 'pack_unit7.dart';
import 'inspection.dart';
import 'inspected_by.dart';

part 'lines17.freezed.dart';
part 'lines17.g.dart';

@Freezed()
abstract class Lines17 with _$Lines17 {
  const factory Lines17({
    required String id,
    required String? billLineId,
    required Product10 product,
    required PackUnit7? packUnit,
    required String? packCount,
    required String quantity,
    required int? rate,
    required int? amount,
    required Inspection inspection,
    required InspectedBy? inspectedBy,
    required DateTime? inspectedAt,
  }) = _Lines17;
  
  factory Lines17.fromJson(Map<String, Object?> json) => _$Lines17FromJson(json);
}
