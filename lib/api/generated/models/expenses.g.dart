// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Expenses _$ExpensesFromJson(Map<String, dynamic> json) =>
    _Expenses(total: (json['total'] as num).toInt(), link: Link5.fromJson(json['link'] as Map<String, dynamic>));

Map<String, dynamic> _$ExpensesToJson(_Expenses instance) => <String, dynamic>{
  'total': instance.total,
  'link': instance.link,
};
