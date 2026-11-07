// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'link4.dart';

part 'supplier_dues.freezed.dart';
part 'supplier_dues.g.dart';

@Freezed()
abstract class SupplierDues with _$SupplierDues {
  const factory SupplierDues({required int total, required Link4 link}) = _SupplierDues;

  factory SupplierDues.fromJson(Map<String, Object?> json) => _$SupplierDuesFromJson(json);
}
