// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_link_dto_output.freezed.dart';
part 'file_link_dto_output.g.dart';

@Freezed()
abstract class FileLinkDtoOutput with _$FileLinkDtoOutput {
  const factory FileLinkDtoOutput({required String id, required String url}) = _FileLinkDtoOutput;

  factory FileLinkDtoOutput.fromJson(Map<String, Object?> json) => _$FileLinkDtoOutputFromJson(json);
}
