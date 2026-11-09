// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reporter.freezed.dart';
part 'reporter.g.dart';

@Freezed()
abstract class Reporter with _$Reporter {
  const factory Reporter({required String id, required String name}) = _Reporter;

  factory Reporter.fromJson(Map<String, Object?> json) => _$ReporterFromJson(json);
}
