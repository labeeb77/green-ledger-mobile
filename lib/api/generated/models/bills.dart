// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bills.freezed.dart';
part 'bills.g.dart';

@Freezed()
abstract class Bills with _$Bills {
  const factory Bills({required String id, required String? number, required int? total}) = _Bills;

  factory Bills.fromJson(Map<String, Object?> json) => _$BillsFromJson(json);
}
