// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum Permission {
  @JsonValue('settings')
  settings('settings'),
  @JsonValue('users')
  users('users'),
  /// Incorrect name has been replaced. Original name: `users.create_staff`.
  @JsonValue('users.create_staff')
  undefined0('users.create_staff'),
  @JsonValue('products')
  products('products'),
  /// Incorrect name has been replaced. Original name: `pricing.rules`.
  @JsonValue('pricing.rules')
  undefined1('pricing.rules'),
  @JsonValue('customers')
  customers('customers'),
  /// Incorrect name has been replaced. Original name: `customers.credit_limit`.
  @JsonValue('customers.credit_limit')
  undefined2('customers.credit_limit'),
  @JsonValue('suppliers')
  suppliers('suppliers'),
  @JsonValue('goods_receipts')
  goodsReceipts('goods_receipts'),
  @JsonValue('supplier_bills')
  supplierBills('supplier_bills'),
  @JsonValue('sales')
  sales('sales'),
  /// Incorrect name has been replaced. Original name: `sales.rate_below_minimum`.
  @JsonValue('sales.rate_below_minimum')
  undefined3('sales.rate_below_minimum'),
  /// Incorrect name has been replaced. Original name: `sales.over_credit_limit`.
  @JsonValue('sales.over_credit_limit')
  undefined4('sales.over_credit_limit'),
  @JsonValue('collections')
  collections('collections'),
  /// Incorrect name has been replaced. Original name: `cash_handovers.confirm`.
  @JsonValue('cash_handovers.confirm')
  undefined5('cash_handovers.confirm'),
  /// Incorrect name has been replaced. Original name: `stock.adjust`.
  @JsonValue('stock.adjust')
  undefined6('stock.adjust'),
  @JsonValue('returns')
  returns('returns'),
  /// Incorrect name has been replaced. Original name: `returns.inspect`.
  @JsonValue('returns.inspect')
  undefined7('returns.inspect'),
  @JsonValue('expenses')
  expenses('expenses'),
  /// Incorrect name has been replaced. Original name: `entries.cancel`.
  @JsonValue('entries.cancel')
  undefined8('entries.cancel'),
  @JsonValue('cost_margin')
  costMargin('cost_margin'),
  @JsonValue('reports')
  reports('reports'),
  /// Incorrect name has been replaced. Original name: `approvals.decide`.
  @JsonValue('approvals.decide')
  undefined9('approvals.decide'),
  @JsonValue('activity_log')
  activityLog('activity_log'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Permission(this.json);

  factory Permission.fromJson(String json) => values.firstWhere(
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
  static List<Permission> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
