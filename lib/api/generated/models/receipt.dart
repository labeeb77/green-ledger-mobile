// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt.freezed.dart';
part 'receipt.g.dart';

@Freezed()
abstract class Receipt with _$Receipt {
  const factory Receipt({required String id, required String number}) = _Receipt;

  factory Receipt.fromJson(Map<String, Object?> json) => _$ReceiptFromJson(json);
}
