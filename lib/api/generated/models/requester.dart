// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'requester.freezed.dart';
part 'requester.g.dart';

@Freezed()
abstract class Requester with _$Requester {
  const factory Requester({required String id, required String name, required Role role}) = _Requester;

  factory Requester.fromJson(Map<String, Object?> json) => _$RequesterFromJson(json);
}
