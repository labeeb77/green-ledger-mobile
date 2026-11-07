// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type4.dart';

part 'documents.freezed.dart';
part 'documents.g.dart';

@Freezed()
abstract class Documents with _$Documents {
  const factory Documents({
    required String id,
    required Type4 type,
    required String number,
    required String date,
    required String party,
  }) = _Documents;

  factory Documents.fromJson(Map<String, Object?> json) => _$DocumentsFromJson(json);
}
