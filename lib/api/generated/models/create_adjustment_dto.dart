// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines9.dart';

part 'create_adjustment_dto.freezed.dart';
part 'create_adjustment_dto.g.dart';

@Freezed()
abstract class CreateAdjustmentDto with _$CreateAdjustmentDto {
  const factory CreateAdjustmentDto({required String notes, required List<Lines9> lines, String? entryDate}) =
      _CreateAdjustmentDto;

  factory CreateAdjustmentDto.fromJson(Map<String, Object?> json) => _$CreateAdjustmentDtoFromJson(json);
}
