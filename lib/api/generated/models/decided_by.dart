// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'decided_by.freezed.dart';
part 'decided_by.g.dart';

@Freezed()
abstract class DecidedBy with _$DecidedBy {
  const factory DecidedBy({
    required String id,
    required String name,
    required Role role,
  }) = _DecidedBy;
  
  factory DecidedBy.fromJson(Map<String, Object?> json) => _$DecidedByFromJson(json);
}
