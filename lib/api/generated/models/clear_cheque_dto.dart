// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'clear_cheque_dto.freezed.dart';
part 'clear_cheque_dto.g.dart';

@Freezed()
abstract class ClearChequeDto with _$ClearChequeDto {
  const factory ClearChequeDto({required String accountId, String? note}) = _ClearChequeDto;

  factory ClearChequeDto.fromJson(Map<String, Object?> json) => _$ClearChequeDtoFromJson(json);
}
