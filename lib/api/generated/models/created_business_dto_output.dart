// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'business2.dart';
import 'owner2.dart';

part 'created_business_dto_output.freezed.dart';
part 'created_business_dto_output.g.dart';

@Freezed()
abstract class CreatedBusinessDtoOutput with _$CreatedBusinessDtoOutput {
  const factory CreatedBusinessDtoOutput({
    required Business2 business,
    required Owner2 owner,
    required String temporaryPassword,
  }) = _CreatedBusinessDtoOutput;
  
  factory CreatedBusinessDtoOutput.fromJson(Map<String, Object?> json) => _$CreatedBusinessDtoOutputFromJson(json);
}
