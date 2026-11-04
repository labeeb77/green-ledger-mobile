// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier.freezed.dart';
part 'supplier.g.dart';

@Freezed()
abstract class Supplier with _$Supplier {
  const factory Supplier({
    required String id,
    required String name,
  }) = _Supplier;
  
  factory Supplier.fromJson(Map<String, Object?> json) => _$SupplierFromJson(json);
}
