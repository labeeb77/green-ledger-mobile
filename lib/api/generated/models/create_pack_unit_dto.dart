// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_pack_unit_dto_size_type.dart';

part 'create_pack_unit_dto.freezed.dart';
part 'create_pack_unit_dto.g.dart';

@Freezed()
abstract class CreatePackUnitDto with _$CreatePackUnitDto {
  const factory CreatePackUnitDto({required String name, required CreatePackUnitDtoSizeType sizeType, dynamic size}) =
      _CreatePackUnitDto;

  factory CreatePackUnitDto.fromJson(Map<String, Object?> json) => _$CreatePackUnitDtoFromJson(json);
}
