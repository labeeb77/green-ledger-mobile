// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum Reason2 {
  @JsonValue('opening')
  opening('opening'),
  @JsonValue('goods_receipt')
  goodsReceipt('goods_receipt'),
  @JsonValue('sale')
  sale('sale'),
  @JsonValue('dispatch')
  dispatch('dispatch'),
  @JsonValue('wastage')
  wastage('wastage'),
  @JsonValue('adjustment')
  adjustment('adjustment'),
  @JsonValue('return_in')
  returnIn('return_in'),
  @JsonValue('supplier_return')
  supplierReturn('supplier_return'),
  @JsonValue('physical_count')
  physicalCount('physical_count'),
  @JsonValue('reversal')
  reversal('reversal'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Reason2(this.json);

  factory Reason2.fromJson(String json) => values.firstWhere(
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
  static List<Reason2> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
