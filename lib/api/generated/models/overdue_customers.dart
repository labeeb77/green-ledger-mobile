// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'overdue_customers.freezed.dart';
part 'overdue_customers.g.dart';

@Freezed()
abstract class OverdueCustomers with _$OverdueCustomers {
  const factory OverdueCustomers({
    required String id,
    required String name,
    required String? phone,
    required String? agent,
    required int outstanding,
    required int overdue,
  }) = _OverdueCustomers;

  factory OverdueCustomers.fromJson(Map<String, Object?> json) => _$OverdueCustomersFromJson(json);
}
