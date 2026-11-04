// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'decide_dto.freezed.dart';
part 'decide_dto.g.dart';

@Freezed()
abstract class DecideDto with _$DecideDto {
  const factory DecideDto({
    String? note,
  }) = _DecideDto;
  
  factory DecideDto.fromJson(Map<String, Object?> json) => _$DecideDtoFromJson(json);
}
