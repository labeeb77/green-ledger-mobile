// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cheque _$ChequeFromJson(Map<String, dynamic> json) => _Cheque(
  id: json['id'] as String,
  number: json['number'] as String,
  bank: json['bank'] as String?,
  chequeDate: json['chequeDate'] as String?,
  status: Status4.fromJson(json['status'] as String),
);

Map<String, dynamic> _$ChequeToJson(_Cheque instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'bank': instance.bank,
  'chequeDate': instance.chequeDate,
  'status': instance.status,
};
