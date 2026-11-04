// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_handover_dto.freezed.dart';
part 'confirm_handover_dto.g.dart';

@Freezed()
abstract class ConfirmHandoverDto with _$ConfirmHandoverDto {
  const factory ConfirmHandoverDto({
    required int countedAmount,
    String? accountId,
    String? note,
  }) = _ConfirmHandoverDto;
  
  factory ConfirmHandoverDto.fromJson(Map<String, Object?> json) => _$ConfirmHandoverDtoFromJson(json);
}
