// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'outcome.dart';
import 'user7.dart';

part 'last_visit2.freezed.dart';
part 'last_visit2.g.dart';

@Freezed()
abstract class LastVisit2 with _$LastVisit2 {
  const factory LastVisit2({required String visitDate, required Outcome outcome, required User7 user}) = _LastVisit2;

  factory LastVisit2.fromJson(Map<String, Object?> json) => _$LastVisit2FromJson(json);
}
