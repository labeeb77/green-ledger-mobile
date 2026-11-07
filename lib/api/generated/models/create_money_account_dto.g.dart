// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_money_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateMoneyAccountDto _$CreateMoneyAccountDtoFromJson(Map<String, dynamic> json) => _CreateMoneyAccountDto(
  type: CreateMoneyAccountDtoType.fromJson(json['type'] as String),
  name: json['name'] as String,
  bankName: json['bankName'] as String?,
  accountNumber: json['accountNumber'] as String?,
  ifsc: json['ifsc'] as String?,
  upiId: json['upiId'] as String?,
  linkedAccountId: json['linkedAccountId'] as String?,
  openingBalance: (json['openingBalance'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateMoneyAccountDtoToJson(_CreateMoneyAccountDto instance) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'ifsc': instance.ifsc,
  'upiId': instance.upiId,
  'linkedAccountId': instance.linkedAccountId,
  'openingBalance': instance.openingBalance,
};
