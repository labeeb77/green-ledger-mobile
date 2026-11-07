// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResultDtoOutput _$SearchResultDtoOutputFromJson(Map<String, dynamic> json) => _SearchResultDtoOutput(
  customers: (json['customers'] as List<dynamic>).map((e) => Customers.fromJson(e as Map<String, dynamic>)).toList(),
  products: (json['products'] as List<dynamic>).map((e) => Products.fromJson(e as Map<String, dynamic>)).toList(),
  documents: (json['documents'] as List<dynamic>).map((e) => Documents.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$SearchResultDtoOutputToJson(_SearchResultDtoOutput instance) => <String, dynamic>{
  'customers': instance.customers,
  'products': instance.products,
  'documents': instance.documents,
};
