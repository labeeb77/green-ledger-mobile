// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'business.freezed.dart';
part 'business.g.dart';

@Freezed()
abstract class Business with _$Business {
  const factory Business({
    required String id,
    required String name,
  }) = _Business;
  
  factory Business.fromJson(Map<String, Object?> json) => _$BusinessFromJson(json);
}
