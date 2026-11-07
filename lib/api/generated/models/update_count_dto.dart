// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines11.dart';

part 'update_count_dto.freezed.dart';
part 'update_count_dto.g.dart';

@Freezed()
abstract class UpdateCountDto with _$UpdateCountDto {
  const factory UpdateCountDto({required List<Lines11> lines}) = _UpdateCountDto;

  factory UpdateCountDto.fromJson(Map<String, Object?> json) => _$UpdateCountDtoFromJson(json);
}
