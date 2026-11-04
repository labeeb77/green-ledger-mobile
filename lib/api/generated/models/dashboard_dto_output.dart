// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'collections.dart';
import 'expenses.dart';
import 'low_stock.dart';
import 'outstanding.dart';
import 'overdue_customers.dart';
import 'sales.dart';
import 'supplier_dues.dart';

part 'dashboard_dto_output.freezed.dart';
part 'dashboard_dto_output.g.dart';

@Freezed()
abstract class DashboardDtoOutput with _$DashboardDtoOutput {
  const factory DashboardDtoOutput({
    required DateTime from,
    required DateTime to,
    required Sales? sales,
    required Collections? collections,
    required Outstanding? outstanding,
    required SupplierDues? supplierDues,
    required Expenses? expenses,
    required List<LowStock>? lowStock,
    required List<OverdueCustomers>? overdueCustomers,
  }) = _DashboardDtoOutput;
  
  factory DashboardDtoOutput.fromJson(Map<String, Object?> json) => _$DashboardDtoOutputFromJson(json);
}
