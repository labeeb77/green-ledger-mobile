// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_dues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierDues _$SupplierDuesFromJson(Map<String, dynamic> json) =>
    _SupplierDues(total: (json['total'] as num).toInt(), link: Link4.fromJson(json['link'] as Map<String, dynamic>));

Map<String, dynamic> _$SupplierDuesToJson(_SupplierDues instance) => <String, dynamic>{
  'total': instance.total,
  'link': instance.link,
};
