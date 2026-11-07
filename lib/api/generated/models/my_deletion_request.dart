// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'request.dart';

part 'my_deletion_request.freezed.dart';
part 'my_deletion_request.g.dart';

@Freezed()
abstract class MyDeletionRequest with _$MyDeletionRequest {
  const factory MyDeletionRequest({required Request? request}) = _MyDeletionRequest;

  factory MyDeletionRequest.fromJson(Map<String, Object?> json) => _$MyDeletionRequestFromJson(json);
}
