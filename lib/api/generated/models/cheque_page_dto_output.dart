// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cheque_dto_output.dart';

part 'cheque_page_dto_output.freezed.dart';
part 'cheque_page_dto_output.g.dart';

@Freezed()
abstract class ChequePageDtoOutput with _$ChequePageDtoOutput {
  const factory ChequePageDtoOutput({
    required List<ChequeDtoOutput> items,
    required String? nextCursor,
  }) = _ChequePageDtoOutput;
  
  factory ChequePageDtoOutput.fromJson(Map<String, Object?> json) => _$ChequePageDtoOutputFromJson(json);
}
