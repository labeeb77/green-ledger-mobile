// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'close_deletion_request_body_status.dart';

part 'close_deletion_request_body.freezed.dart';
part 'close_deletion_request_body.g.dart';

@Freezed()
abstract class CloseDeletionRequestBody with _$CloseDeletionRequestBody {
  const factory CloseDeletionRequestBody({required CloseDeletionRequestBodyStatus status, String? note}) =
      _CloseDeletionRequestBody;

  factory CloseDeletionRequestBody.fromJson(Map<String, Object?> json) => _$CloseDeletionRequestBodyFromJson(json);
}
