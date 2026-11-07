// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines8.dart';

part 'create_wastage_dto.freezed.dart';
part 'create_wastage_dto.g.dart';

@Freezed()
abstract class CreateWastageDto with _$CreateWastageDto {
  const factory CreateWastageDto({required List<Lines8> lines, String? entryDate, String? notes, String? photoFileId}) =
      _CreateWastageDto;

  factory CreateWastageDto.fromJson(Map<String, Object?> json) => _$CreateWastageDtoFromJson(json);
}
