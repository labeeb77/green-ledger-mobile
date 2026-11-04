// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'account4.dart';
import 'status3.dart';
import 'created_by7.dart';

part 'items2.freezed.dart';
part 'items2.g.dart';

@Freezed()
abstract class Items2 with _$Items2 {
  const factory Items2({
    required String id,
    required String number,
    required DateTime expenseDate,
    required Category category,
    required Account4 account,
    required int amount,
    required String? reference,
    required String? notes,
    required Status3 status,
    required CreatedBy7? createdBy,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _Items2;
  
  factory Items2.fromJson(Map<String, Object?> json) => _$Items2FromJson(json);
}
