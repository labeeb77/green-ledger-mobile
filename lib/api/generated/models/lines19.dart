// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'result.dart';

part 'lines19.freezed.dart';
part 'lines19.g.dart';

@Freezed()
abstract class Lines19 with _$Lines19 {
  const factory Lines19({
    required String lineId,
    required Result result,
  }) = _Lines19;
  
  factory Lines19.fromJson(Map<String, Object?> json) => _$Lines19FromJson(json);
}
