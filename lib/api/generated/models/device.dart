// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'platform.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@Freezed()
abstract class Device with _$Device {
  const factory Device({
    required String id,
    @Default(Platform.other)
    Platform platform,
    String? name,
  }) = _Device;
  
  factory Device.fromJson(Map<String, Object?> json) => _$DeviceFromJson(json);
}
