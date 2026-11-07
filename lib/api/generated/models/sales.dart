// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'link.dart';

part 'sales.freezed.dart';
part 'sales.g.dart';

@Freezed()
abstract class Sales with _$Sales {
  const factory Sales({required int total, required int bills, required Link link}) = _Sales;

  factory Sales.fromJson(Map<String, Object?> json) => _$SalesFromJson(json);
}
