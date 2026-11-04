// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines19.dart';

part 'inspect_return_dto.freezed.dart';
part 'inspect_return_dto.g.dart';

@Freezed()
abstract class InspectReturnDto with _$InspectReturnDto {
  const factory InspectReturnDto({
    required List<Lines19> lines,
  }) = _InspectReturnDto;
  
  factory InspectReturnDto.fromJson(Map<String, Object?> json) => _$InspectReturnDtoFromJson(json);
}
