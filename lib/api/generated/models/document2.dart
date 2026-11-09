// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type5.dart';
import 'status3.dart';
import 'customer10.dart';

part 'document2.freezed.dart';
part 'document2.g.dart';

@Freezed()
abstract class Document2 with _$Document2 {
  const factory Document2({
    required Type5 type,
    required String id,
    required String number,
    required Status3 status,
    required int total,
    required Customer10 customer,
  }) = _Document2;

  factory Document2.fromJson(Map<String, Object?> json) => _$Document2FromJson(json);
}
