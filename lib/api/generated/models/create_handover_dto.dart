// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_handover_dto.freezed.dart';
part 'create_handover_dto.g.dart';

@Freezed()
abstract class CreateHandoverDto with _$CreateHandoverDto {
  const factory CreateHandoverDto({
    int? declaredAmount,
    String? note,
  }) = _CreateHandoverDto;
  
  factory CreateHandoverDto.fromJson(Map<String, Object?> json) => _$CreateHandoverDtoFromJson(json);
}
