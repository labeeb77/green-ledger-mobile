// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product6.dart';

part 'lines10.freezed.dart';
part 'lines10.g.dart';

@Freezed()
abstract class Lines10 with _$Lines10 {
  const factory Lines10({
    required Product6 product,
    required String snapshotQuantity,
    required String? countedQuantity,
    required String systemQuantity,
    required String? difference,
  }) = _Lines10;
  
  factory Lines10.fromJson(Map<String, Object?> json) => _$Lines10FromJson(json);
}
