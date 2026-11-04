// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_goods_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateGoodsReceiptDto _$CreateGoodsReceiptDtoFromJson(
  Map<String, dynamic> json,
) => _CreateGoodsReceiptDto(
  supplierId: json['supplierId'] as String,
  lines: (json['lines'] as List<dynamic>)
      .map((e) => Lines2.fromJson(e as Map<String, dynamic>))
      .toList(),
  receiptDate: json['receiptDate'] == null
      ? null
      : DateTime.parse(json['receiptDate'] as String),
  vehicleNo: json['vehicleNo'] as String?,
  notes: json['notes'] as String?,
  slipPhotoFileId: json['slipPhotoFileId'] as String?,
);

Map<String, dynamic> _$CreateGoodsReceiptDtoToJson(
  _CreateGoodsReceiptDto instance,
) => <String, dynamic>{
  'supplierId': instance.supplierId,
  'lines': instance.lines,
  'receiptDate': instance.receiptDate?.toIso8601String(),
  'vehicleNo': instance.vehicleNo,
  'notes': instance.notes,
  'slipPhotoFileId': instance.slipPhotoFileId,
};
