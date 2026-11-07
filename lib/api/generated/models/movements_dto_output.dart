// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entries2.dart';
import 'product7.dart';

part 'movements_dto_output.freezed.dart';
part 'movements_dto_output.g.dart';

@Freezed()
abstract class MovementsDtoOutput with _$MovementsDtoOutput {
  const factory MovementsDtoOutput({
    required Product7 product,
    required String from,
    required String to,
    required String opening,
    required List<Entries2> entries,
    required String closing,
  }) = _MovementsDtoOutput;

  factory MovementsDtoOutput.fromJson(Map<String, Object?> json) => _$MovementsDtoOutputFromJson(json);
}
