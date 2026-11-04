// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines16.dart';

part 'create_dispatch_dto.freezed.dart';
part 'create_dispatch_dto.g.dart';

@Freezed()
abstract class CreateDispatchDto with _$CreateDispatchDto {
  const factory CreateDispatchDto({
    required String orderId,
    required List<Lines16> lines,
    DateTime? dispatchDate,
    String? vehicleNo,
  }) = _CreateDispatchDto;
  
  factory CreateDispatchDto.fromJson(Map<String, Object?> json) => _$CreateDispatchDtoFromJson(json);
}
