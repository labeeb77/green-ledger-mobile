// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'outcome.dart';
import 'user4.dart';

part 'last_visit.freezed.dart';
part 'last_visit.g.dart';

@Freezed()
abstract class LastVisit with _$LastVisit {
  const factory LastVisit({required String visitDate, required Outcome outcome, required User4 user}) = _LastVisit;

  factory LastVisit.fromJson(Map<String, Object?> json) => _$LastVisitFromJson(json);
}
