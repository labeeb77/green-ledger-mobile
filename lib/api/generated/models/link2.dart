// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';

part 'link2.freezed.dart';
part 'link2.g.dart';

@Freezed()
abstract class Link2 with _$Link2 {
  const factory Link2({
    required Report report,
    required String? groupBy,
  }) = _Link2;
  
  factory Link2.fromJson(Map<String, Object?> json) => _$Link2FromJson(json);
}
