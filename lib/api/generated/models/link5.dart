// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';

part 'link5.freezed.dart';
part 'link5.g.dart';

@Freezed()
abstract class Link5 with _$Link5 {
  const factory Link5({
    required Report report,
    required String? groupBy,
  }) = _Link5;
  
  factory Link5.fromJson(Map<String, Object?> json) => _$Link5FromJson(json);
}
