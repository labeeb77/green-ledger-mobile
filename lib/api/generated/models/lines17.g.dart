// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines17.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines17 _$Lines17FromJson(Map<String, dynamic> json) => _Lines17(
  id: json['id'] as String,
  billLineId: json['billLineId'] as String?,
  product: Product10.fromJson(json['product'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null ? null : PackUnit7.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  quantity: json['quantity'] as String,
  rate: (json['rate'] as num?)?.toInt(),
  amount: (json['amount'] as num?)?.toInt(),
  inspection: Inspection.fromJson(json['inspection'] as String),
  inspectedBy: json['inspectedBy'] == null ? null : InspectedBy.fromJson(json['inspectedBy'] as Map<String, dynamic>),
  inspectedAt: json['inspectedAt'] == null ? null : DateTime.parse(json['inspectedAt'] as String),
);

Map<String, dynamic> _$Lines17ToJson(_Lines17 instance) => <String, dynamic>{
  'id': instance.id,
  'billLineId': instance.billLineId,
  'product': instance.product,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
  'rate': instance.rate,
  'amount': instance.amount,
  'inspection': instance.inspection,
  'inspectedBy': instance.inspectedBy,
  'inspectedAt': instance.inspectedAt?.toIso8601String(),
};
