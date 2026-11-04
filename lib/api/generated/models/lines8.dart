// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reason.dart';

part 'lines8.freezed.dart';
part 'lines8.g.dart';

@Freezed()
abstract class Lines8 with _$Lines8 {
  const factory Lines8({
    required String productId,
    required dynamic quantity,
    required Reason reason,
    String? packUnitId,
    dynamic packCount,
  }) = _Lines8;
  
  factory Lines8.fromJson(Map<String, Object?> json) => _$Lines8FromJson(json);
}
