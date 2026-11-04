// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_account_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoneyAccountDtoOutput _$MoneyAccountDtoOutputFromJson(
  Map<String, dynamic> json,
) => _MoneyAccountDtoOutput(
  id: json['id'] as String,
  type: MoneyAccountDtoOutputType.fromJson(json['type'] as String),
  name: json['name'] as String,
  bankName: json['bankName'] as String?,
  accountNumber: json['accountNumber'] as String?,
  ifsc: json['ifsc'] as String?,
  upiId: json['upiId'] as String?,
  linkedAccountId: json['linkedAccountId'] as String?,
  agentUserId: json['agentUserId'] as String?,
  openingBalance: (json['openingBalance'] as num).toInt(),
  balance: (json['balance'] as num).toInt(),
  system: json['system'] as bool,
  active: json['active'] as bool,
);

Map<String, dynamic> _$MoneyAccountDtoOutputToJson(
  _MoneyAccountDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'ifsc': instance.ifsc,
  'upiId': instance.upiId,
  'linkedAccountId': instance.linkedAccountId,
  'agentUserId': instance.agentUserId,
  'openingBalance': instance.openingBalance,
  'balance': instance.balance,
  'system': instance.system,
  'active': instance.active,
};
