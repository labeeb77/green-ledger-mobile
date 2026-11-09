// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'closed_by.freezed.dart';
part 'closed_by.g.dart';

@Freezed()
abstract class ClosedBy with _$ClosedBy {
  const factory ClosedBy({required String id, required String name}) = _ClosedBy;

  factory ClosedBy.fromJson(Map<String, Object?> json) => _$ClosedByFromJson(json);
}
