// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';

part 'link3.freezed.dart';
part 'link3.g.dart';

@Freezed()
abstract class Link3 with _$Link3 {
  const factory Link3({
    required Report report,
    required String? groupBy,
  }) = _Link3;
  
  factory Link3.fromJson(Map<String, Object?> json) => _$Link3FromJson(json);
}
