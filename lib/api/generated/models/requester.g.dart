// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requester.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Requester _$RequesterFromJson(Map<String, dynamic> json) =>
    _Requester(id: json['id'] as String, name: json['name'] as String, role: Role.fromJson(json['role'] as String));

Map<String, dynamic> _$RequesterToJson(_Requester instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'role': instance.role,
};
