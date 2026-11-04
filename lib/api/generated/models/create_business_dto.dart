// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner.dart';

part 'create_business_dto.freezed.dart';
part 'create_business_dto.g.dart';

@Freezed()
abstract class CreateBusinessDto with _$CreateBusinessDto {
  const factory CreateBusinessDto({
    required String name,
    required Owner owner,
    @Default(14)
    int trialDays,
    @Default(10)
    int userLimit,
    String? phone,
    String? address,
  }) = _CreateBusinessDto;
  
  factory CreateBusinessDto.fromJson(Map<String, Object?> json) => _$CreateBusinessDtoFromJson(json);
}
