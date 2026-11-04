// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bounce_cheque_dto.freezed.dart';
part 'bounce_cheque_dto.g.dart';

@Freezed()
abstract class BounceChequeDto with _$BounceChequeDto {
  const factory BounceChequeDto({
    required String reason,
  }) = _BounceChequeDto;
  
  factory BounceChequeDto.fromJson(Map<String, Object?> json) => _$BounceChequeDtoFromJson(json);
}
