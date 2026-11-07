// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@Freezed()
abstract class Account with _$Account {
  const factory Account({required String id, required String name}) = _Account;

  factory Account.fromJson(Map<String, Object?> json) => _$AccountFromJson(json);
}
