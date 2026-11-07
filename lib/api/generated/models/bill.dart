// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@Freezed()
abstract class Bill with _$Bill {
  const factory Bill({required String id, required String number}) = _Bill;

  factory Bill.fromJson(Map<String, Object?> json) => _$BillFromJson(json);
}
