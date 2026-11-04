// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_pack_unit_dto.freezed.dart';
part 'update_pack_unit_dto.g.dart';

@Freezed()
abstract class UpdatePackUnitDto with _$UpdatePackUnitDto {
  const factory UpdatePackUnitDto({
    String? name,
    bool? active,
  }) = _UpdatePackUnitDto;
  
  factory UpdatePackUnitDto.fromJson(Map<String, Object?> json) => _$UpdatePackUnitDtoFromJson(json);
}
