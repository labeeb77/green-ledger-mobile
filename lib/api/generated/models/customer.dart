// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@Freezed()
abstract class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String name,
  }) = _Customer;
  
  factory Customer.fromJson(Map<String, Object?> json) => _$CustomerFromJson(json);
}
