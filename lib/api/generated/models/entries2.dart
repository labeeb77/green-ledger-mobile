// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reason2.dart';
import 'user5.dart';

part 'entries2.freezed.dart';
part 'entries2.g.dart';

@Freezed()
abstract class Entries2 with _$Entries2 {
  const factory Entries2({
    required String id,
    required String date,
    required Reason2 reason,
    required String? reference,
    required String sourceType,
    required String sourceId,
    required User5? user,
    required String quantity,
    required String? packCount,
    required String? packUnit,
    required String balance,
  }) = _Entries2;

  factory Entries2.fromJson(Map<String, Object?> json) => _$Entries2FromJson(json);
}
