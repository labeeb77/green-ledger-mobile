// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';

part 'link4.freezed.dart';
part 'link4.g.dart';

@Freezed()
abstract class Link4 with _$Link4 {
  const factory Link4({
    required Report report,
    required String? groupBy,
  }) = _Link4;
  
  factory Link4.fromJson(Map<String, Object?> json) => _$Link4FromJson(json);
}
