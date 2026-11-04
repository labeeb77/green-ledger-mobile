// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'deposit_account.freezed.dart';
part 'deposit_account.g.dart';

@Freezed()
abstract class DepositAccount with _$DepositAccount {
  const factory DepositAccount({
    required String id,
    required String name,
  }) = _DepositAccount;
  
  factory DepositAccount.fromJson(Map<String, Object?> json) => _$DepositAccountFromJson(json);
}
