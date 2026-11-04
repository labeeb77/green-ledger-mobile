// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers.freezed.dart';
part 'customers.g.dart';

@Freezed()
abstract class Customers with _$Customers {
  const factory Customers({
    required String id,
    required String name,
    required String? detail,
  }) = _Customers;
  
  factory Customers.fromJson(Map<String, Object?> json) => _$CustomersFromJson(json);
}
