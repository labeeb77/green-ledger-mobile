// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum SalesBillSummaryDtoOutputPaymentStatus {
  @JsonValue('unpaid')
  unpaid('unpaid'),
  @JsonValue('partly_paid')
  partlyPaid('partly_paid'),
  @JsonValue('paid')
  paid('paid'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SalesBillSummaryDtoOutputPaymentStatus(this.json);

  factory SalesBillSummaryDtoOutputPaymentStatus.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
  String toJson() {
    final value = json;
    if (value == null) {
      throw StateError('Cannot convert enum value with null JSON representation to String. '
          'This usually happens for \$unknown or @JsonValue(null) entries.');
    }
    return value as String;
  }

  @override
  String toString() => json?.toString() ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<SalesBillSummaryDtoOutputPaymentStatus> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
