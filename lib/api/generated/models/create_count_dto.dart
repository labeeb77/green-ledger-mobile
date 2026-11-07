// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_count_dto.freezed.dart';
part 'create_count_dto.g.dart';

@Freezed()
abstract class CreateCountDto with _$CreateCountDto {
  const factory CreateCountDto({String? countDate, List<String>? productIds, String? notes}) = _CreateCountDto;

  factory CreateCountDto.fromJson(Map<String, Object?> json) => _$CreateCountDtoFromJson(json);
}
