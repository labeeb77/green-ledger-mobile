// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'deletion_request_handled_by.dart';
import 'deletion_request_status.dart';

part 'deletion_request.freezed.dart';
part 'deletion_request.g.dart';

@Freezed()
abstract class DeletionRequest with _$DeletionRequest {
  const factory DeletionRequest({
    required String id,
    required DeletionRequestStatus status,
    required String? reason,
    required DateTime createdAt,
    required DateTime? closedAt,
    required String? closedNote,
    required DeletionRequestHandledBy handledBy,
  }) = _DeletionRequest;

  factory DeletionRequest.fromJson(Map<String, Object?> json) => _$DeletionRequestFromJson(json);
}
