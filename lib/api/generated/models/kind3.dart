// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum Kind3 {
  @JsonValue('text')
  text('text'),
  @JsonValue('date')
  date('date'),
  @JsonValue('money')
  money('money'),
  @JsonValue('quantity')
  quantity('quantity'),
  @JsonValue('number')
  number('number'),
  @JsonValue('percent')
  percent('percent'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Kind3(this.json);

  factory Kind3.fromJson(String json) => values.firstWhere(
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
  static List<Kind3> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
