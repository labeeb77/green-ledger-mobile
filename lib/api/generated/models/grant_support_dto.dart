// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grant_support_dto.freezed.dart';
part 'grant_support_dto.g.dart';

@Freezed()
abstract class GrantSupportDto with _$GrantSupportDto {
  const factory GrantSupportDto({
    @Default(24)
    int hours,
  }) = _GrantSupportDto;
  
  factory GrantSupportDto.fromJson(Map<String, Object?> json) => _$GrantSupportDtoFromJson(json);
}
