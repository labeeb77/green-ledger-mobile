// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'document.dart';
import 'reason3.dart';
import 'status7.dart';
import 'reporter.dart';
import 'closed_by.dart';

part 'items3.freezed.dart';
part 'items3.g.dart';

@Freezed()
abstract class Items3 with _$Items3 {
  const factory Items3({
    required String id,
    required Document document,
    required Reason3 reason,
    required String? note,
    required Status7 status,
    required Reporter reporter,
    required DateTime createdAt,
    required ClosedBy? closedBy,
    required DateTime? closedAt,
    required String? closeNote,
  }) = _Items3;

  factory Items3.fromJson(Map<String, Object?> json) => _$Items3FromJson(json);
}
