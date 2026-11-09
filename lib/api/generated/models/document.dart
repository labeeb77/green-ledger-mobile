// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type5.dart';
import 'status3.dart';
import 'customer9.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@Freezed()
abstract class Document with _$Document {
  const factory Document({
    required Type5 type,
    required String id,
    required String number,
    required Status3 status,
    required int total,
    required Customer9 customer,
  }) = _Document;

  factory Document.fromJson(Map<String, Object?> json) => _$DocumentFromJson(json);
}
