// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cheque_dto_output_status.dart';
import 'customer5.dart';
import 'deposit_account.dart';
import 'receipt.dart';

part 'cheque_dto_output.freezed.dart';
part 'cheque_dto_output.g.dart';

@Freezed()
abstract class ChequeDtoOutput with _$ChequeDtoOutput {
  const factory ChequeDtoOutput({
    required String id,
    required String number,
    required String? bank,
    required String? chequeDate,
    required int amount,
    required ChequeDtoOutputStatus status,
    required Customer5 customer,
    required Receipt receipt,
    required DepositAccount? depositAccount,
    required DateTime? decidedAt,
    required String? note,
  }) = _ChequeDtoOutput;

  factory ChequeDtoOutput.fromJson(Map<String, Object?> json) => _$ChequeDtoOutputFromJson(json);
}
