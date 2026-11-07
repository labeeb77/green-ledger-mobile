// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';
import 'grade.dart';
import 'pack_unit.dart';

part 'lines.freezed.dart';
part 'lines.g.dart';

@Freezed()
abstract class Lines with _$Lines {
  const factory Lines({
    required String id,
    required Product product,
    required Grade? grade,
    required PackUnit? packUnit,
    required String? packCount,
    required String? gross,
    required String? tare,
    required String net,
    required int? rate,
    required bool billed,
  }) = _Lines;

  factory Lines.fromJson(Map<String, Object?> json) => _$LinesFromJson(json);
}
