// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status4.dart';

part 'cheque.freezed.dart';
part 'cheque.g.dart';

@Freezed()
abstract class Cheque with _$Cheque {
  const factory Cheque({
    required String id,
    required String number,
    required String? bank,
    required String? chequeDate,
    required Status4 status,
  }) = _Cheque;

  factory Cheque.fromJson(Map<String, Object?> json) => _$ChequeFromJson(json);
}
