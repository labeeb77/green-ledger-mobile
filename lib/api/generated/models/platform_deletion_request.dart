// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'platform_deletion_request_handled_by.dart';
import 'platform_deletion_request_status.dart';

part 'platform_deletion_request.freezed.dart';
part 'platform_deletion_request.g.dart';

@Freezed()
abstract class PlatformDeletionRequest with _$PlatformDeletionRequest {
  const factory PlatformDeletionRequest({
    required String id,
    required PlatformDeletionRequestStatus status,
    required String? reason,
    required DateTime createdAt,
    required DateTime? closedAt,
    required String? closedNote,
    required PlatformDeletionRequestHandledBy handledBy,
    required String businessId,
    required String businessName,
    required String userId,
    required String userName,
    required String phone,
    required String role,
  }) = _PlatformDeletionRequest;

  factory PlatformDeletionRequest.fromJson(Map<String, Object?> json) => _$PlatformDeletionRequestFromJson(json);
}
