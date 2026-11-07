// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'unverified_split_dto_output.dart';

part 'unverified_split_page_dto_output.freezed.dart';
part 'unverified_split_page_dto_output.g.dart';

@Freezed()
abstract class UnverifiedSplitPageDtoOutput with _$UnverifiedSplitPageDtoOutput {
  const factory UnverifiedSplitPageDtoOutput({
    required List<UnverifiedSplitDtoOutput> items,
    required String? nextCursor,
  }) = _UnverifiedSplitPageDtoOutput;
  
  factory UnverifiedSplitPageDtoOutput.fromJson(Map<String, Object?> json) => _$UnverifiedSplitPageDtoOutputFromJson(json);
}
