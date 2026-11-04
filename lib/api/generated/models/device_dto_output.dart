// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_dto_output.freezed.dart';
part 'device_dto_output.g.dart';

@Freezed()
abstract class DeviceDtoOutput with _$DeviceDtoOutput {
  const factory DeviceDtoOutput({
    required String id,
    required String deviceId,
    required String? name,
    required String? platform,
    required DateTime? lastSeenAt,
    required DateTime createdAt,
    required bool revoked,
    required bool current,
  }) = _DeviceDtoOutput;
  
  factory DeviceDtoOutput.fromJson(Map<String, Object?> json) => _$DeviceDtoOutputFromJson(json);
}
