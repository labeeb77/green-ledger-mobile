// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardDtoOutput _$DashboardDtoOutputFromJson(Map<String, dynamic> json) => _DashboardDtoOutput(
  from: json['from'] as String,
  to: json['to'] as String,
  sales: json['sales'] == null ? null : Sales.fromJson(json['sales'] as Map<String, dynamic>),
  collections: json['collections'] == null ? null : Collections.fromJson(json['collections'] as Map<String, dynamic>),
  outstanding: json['outstanding'] == null ? null : Outstanding.fromJson(json['outstanding'] as Map<String, dynamic>),
  supplierDues: json['supplierDues'] == null
      ? null
      : SupplierDues.fromJson(json['supplierDues'] as Map<String, dynamic>),
  expenses: json['expenses'] == null ? null : Expenses.fromJson(json['expenses'] as Map<String, dynamic>),
  lowStock: (json['lowStock'] as List<dynamic>?)?.map((e) => LowStock.fromJson(e as Map<String, dynamic>)).toList(),
  overdueCustomers: (json['overdueCustomers'] as List<dynamic>?)
      ?.map((e) => OverdueCustomers.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DashboardDtoOutputToJson(_DashboardDtoOutput instance) => <String, dynamic>{
  'from': instance.from,
  'to': instance.to,
  'sales': instance.sales,
  'collections': instance.collections,
  'outstanding': instance.outstanding,
  'supplierDues': instance.supplierDues,
  'expenses': instance.expenses,
  'lowStock': instance.lowStock,
  'overdueCustomers': instance.overdueCustomers,
};
