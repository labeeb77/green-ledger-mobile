// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChequeDtoOutput _$ChequeDtoOutputFromJson(Map<String, dynamic> json) =>
    _ChequeDtoOutput(
      id: json['id'] as String,
      number: json['number'] as String,
      bank: json['bank'] as String?,
      chequeDate: json['chequeDate'] as String?,
      amount: (json['amount'] as num).toInt(),
      status: ChequeDtoOutputStatus.fromJson(json['status'] as String),
      customer: Customer5.fromJson(json['customer'] as Map<String, dynamic>),
      receipt: Receipt.fromJson(json['receipt'] as Map<String, dynamic>),
      depositAccount: json['depositAccount'] == null
          ? null
          : DepositAccount.fromJson(
              json['depositAccount'] as Map<String, dynamic>,
            ),
      decidedAt: json['decidedAt'] == null
          ? null
          : DateTime.parse(json['decidedAt'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$ChequeDtoOutputToJson(_ChequeDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'bank': instance.bank,
      'chequeDate': instance.chequeDate,
      'amount': instance.amount,
      'status': instance.status,
      'customer': instance.customer,
      'receipt': instance.receipt,
      'depositAccount': instance.depositAccount,
      'decidedAt': instance.decidedAt?.toIso8601String(),
      'note': instance.note,
    };
