// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum ApprovalDtoOutputType {
  @JsonValue('new_customer')
  newCustomer('new_customer'),
  @JsonValue('cancellation')
  cancellation('cancellation'),
  @JsonValue('rate_below_minimum')
  rateBelowMinimum('rate_below_minimum'),
  @JsonValue('over_credit_limit')
  overCreditLimit('over_credit_limit'),
  @JsonValue('wastage')
  wastage('wastage'),
  @JsonValue('stock_adjustment')
  stockAdjustment('stock_adjustment'),
  @JsonValue('write_off')
  writeOff('write_off'),
  @JsonValue('customer_return')
  customerReturn('customer_return'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ApprovalDtoOutputType(this.json);

  factory ApprovalDtoOutputType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;
  String toJson() {
    final value = json;
    if (value == null) {
      throw StateError(
        'Cannot convert enum value with null JSON representation to String. '
        'This usually happens for \$unknown or @JsonValue(null) entries.',
      );
    }
    return value as String;
  }

  @override
  String toString() => json?.toString() ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<ApprovalDtoOutputType> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
