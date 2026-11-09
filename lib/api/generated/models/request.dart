// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status9.dart';
import 'handled_by.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@Freezed()
abstract class Request with _$Request {
  const factory Request({
    required String id,
    required Status9 status,
    required String? reason,
    required DateTime createdAt,
    required DateTime? closedAt,
    required String? closedNote,
    required HandledBy handledBy,
  }) = _Request;

  factory Request.fromJson(Map<String, Object?> json) => _$RequestFromJson(json);
}
