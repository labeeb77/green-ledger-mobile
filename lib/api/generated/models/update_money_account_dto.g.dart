// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_money_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateMoneyAccountDto _$UpdateMoneyAccountDtoFromJson(Map<String, dynamic> json) => _UpdateMoneyAccountDto(
  name: json['name'] as String?,
  bankName: json['bankName'] as String?,
  accountNumber: json['accountNumber'] as String?,
  ifsc: json['ifsc'] as String?,
  upiId: json['upiId'] as String?,
  linkedAccountId: json['linkedAccountId'] as String?,
  openingBalance: (json['openingBalance'] as num?)?.toInt(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateMoneyAccountDtoToJson(_UpdateMoneyAccountDto instance) => <String, dynamic>{
  'name': instance.name,
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'ifsc': instance.ifsc,
  'upiId': instance.upiId,
  'linkedAccountId': instance.linkedAccountId,
  'openingBalance': instance.openingBalance,
  'active': instance.active,
};
