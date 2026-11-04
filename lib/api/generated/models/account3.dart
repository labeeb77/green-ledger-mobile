// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account3.freezed.dart';
part 'account3.g.dart';

@Freezed()
abstract class Account3 with _$Account3 {
  const factory Account3({
    required String id,
    required String name,
  }) = _Account3;
  
  factory Account3.fromJson(Map<String, Object?> json) => _$Account3FromJson(json);
}
