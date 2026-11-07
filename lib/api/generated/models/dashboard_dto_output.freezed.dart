// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardDtoOutput {

 String get from; String get to; Sales? get sales; Collections? get collections; Outstanding? get outstanding; SupplierDues? get supplierDues; Expenses? get expenses; List<LowStock>? get lowStock; List<OverdueCustomers>? get overdueCustomers;
/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardDtoOutputCopyWith<DashboardDtoOutput> get copyWith => _$DashboardDtoOutputCopyWithImpl<DashboardDtoOutput>(this as DashboardDtoOutput, _$identity);

  /// Serializes this DashboardDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardDtoOutput&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.sales, _this.sales) || other.sales == _this.sales)&&(identical(other.collections, _this.collections) || other.collections == _this.collections)&&(identical(other.outstanding, _this.outstanding) || other.outstanding == _this.outstanding)&&(identical(other.supplierDues, _this.supplierDues) || other.supplierDues == _this.supplierDues)&&(identical(other.expenses, _this.expenses) || other.expenses == _this.expenses)&&const DeepCollectionEquality().equals(other.lowStock, _this.lowStock)&&const DeepCollectionEquality().equals(other.overdueCustomers, _this.overdueCustomers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardDtoOutput;
  return Object.hash(runtimeType,_this.from,_this.to,_this.sales,_this.collections,_this.outstanding,_this.supplierDues,_this.expenses,const DeepCollectionEquality().hash(_this.lowStock),const DeepCollectionEquality().hash(_this.overdueCustomers));
}

@override
String toString() {
  final _this = this as DashboardDtoOutput;
  return 'DashboardDtoOutput(from: ${_this.from}, to: ${_this.to}, sales: ${_this.sales}, collections: ${_this.collections}, outstanding: ${_this.outstanding}, supplierDues: ${_this.supplierDues}, expenses: ${_this.expenses}, lowStock: ${_this.lowStock}, overdueCustomers: ${_this.overdueCustomers})';
}


}

/// @nodoc
abstract mixin class $DashboardDtoOutputCopyWith<$Res>  {
  factory $DashboardDtoOutputCopyWith(DashboardDtoOutput value, $Res Function(DashboardDtoOutput) _then) = _$DashboardDtoOutputCopyWithImpl;
@useResult
$Res call({
 String from, String to, Sales? sales, Collections? collections, Outstanding? outstanding, SupplierDues? supplierDues, Expenses? expenses, List<LowStock>? lowStock, List<OverdueCustomers>? overdueCustomers
});


$SalesCopyWith<$Res>? get sales;$CollectionsCopyWith<$Res>? get collections;$OutstandingCopyWith<$Res>? get outstanding;$SupplierDuesCopyWith<$Res>? get supplierDues;$ExpensesCopyWith<$Res>? get expenses;

}
/// @nodoc
class _$DashboardDtoOutputCopyWithImpl<$Res>
    implements $DashboardDtoOutputCopyWith<$Res> {
  _$DashboardDtoOutputCopyWithImpl(this._self, this._then);

  final DashboardDtoOutput _self;
  final $Res Function(DashboardDtoOutput) _then;

/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = null,Object? to = null,Object? sales = freezed,Object? collections = freezed,Object? outstanding = freezed,Object? supplierDues = freezed,Object? expenses = freezed,Object? lowStock = freezed,Object? overdueCustomers = freezed,}) {
  return _then(DashboardDtoOutput(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,sales: freezed == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as Sales?,collections: freezed == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as Collections?,outstanding: freezed == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as Outstanding?,supplierDues: freezed == supplierDues ? _self.supplierDues : supplierDues // ignore: cast_nullable_to_non_nullable
as SupplierDues?,expenses: freezed == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as Expenses?,lowStock: freezed == lowStock ? _self.lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as List<LowStock>?,overdueCustomers: freezed == overdueCustomers ? _self.overdueCustomers : overdueCustomers // ignore: cast_nullable_to_non_nullable
as List<OverdueCustomers>?,
  ));
}
/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesCopyWith<$Res>? get sales {
    if (_self.sales == null) {
    return null;
  }

  return $SalesCopyWith<$Res>(_self.sales!, (value) {
    return _then(_self.copyWith(sales: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectionsCopyWith<$Res>? get collections {
    if (_self.collections == null) {
    return null;
  }

  return $CollectionsCopyWith<$Res>(_self.collections!, (value) {
    return _then(_self.copyWith(collections: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutstandingCopyWith<$Res>? get outstanding {
    if (_self.outstanding == null) {
    return null;
  }

  return $OutstandingCopyWith<$Res>(_self.outstanding!, (value) {
    return _then(_self.copyWith(outstanding: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupplierDuesCopyWith<$Res>? get supplierDues {
    if (_self.supplierDues == null) {
    return null;
  }

  return $SupplierDuesCopyWith<$Res>(_self.supplierDues!, (value) {
    return _then(_self.copyWith(supplierDues: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpensesCopyWith<$Res>? get expenses {
    if (_self.expenses == null) {
    return null;
  }

  return $ExpensesCopyWith<$Res>(_self.expenses!, (value) {
    return _then(_self.copyWith(expenses: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardDtoOutput].
extension DashboardDtoOutputPatterns on DashboardDtoOutput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardDtoOutput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _DashboardDtoOutput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardDtoOutput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String from,  String to,  Sales? sales,  Collections? collections,  Outstanding? outstanding,  SupplierDues? supplierDues,  Expenses? expenses,  List<LowStock>? lowStock,  List<OverdueCustomers>? overdueCustomers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardDtoOutput() when $default != null:
return $default(_that.from,_that.to,_that.sales,_that.collections,_that.outstanding,_that.supplierDues,_that.expenses,_that.lowStock,_that.overdueCustomers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String from,  String to,  Sales? sales,  Collections? collections,  Outstanding? outstanding,  SupplierDues? supplierDues,  Expenses? expenses,  List<LowStock>? lowStock,  List<OverdueCustomers>? overdueCustomers)  $default,) {final _that = this;
switch (_that) {
case _DashboardDtoOutput():
return $default(_that.from,_that.to,_that.sales,_that.collections,_that.outstanding,_that.supplierDues,_that.expenses,_that.lowStock,_that.overdueCustomers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String from,  String to,  Sales? sales,  Collections? collections,  Outstanding? outstanding,  SupplierDues? supplierDues,  Expenses? expenses,  List<LowStock>? lowStock,  List<OverdueCustomers>? overdueCustomers)?  $default,) {final _that = this;
switch (_that) {
case _DashboardDtoOutput() when $default != null:
return $default(_that.from,_that.to,_that.sales,_that.collections,_that.outstanding,_that.supplierDues,_that.expenses,_that.lowStock,_that.overdueCustomers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardDtoOutput implements DashboardDtoOutput {
  const _DashboardDtoOutput({required this.from, required this.to, required this.sales, required this.collections, required this.outstanding, required this.supplierDues, required this.expenses, required  List<LowStock>? lowStock, required  List<OverdueCustomers>? overdueCustomers}): _lowStock = lowStock,_overdueCustomers = overdueCustomers;
  factory _DashboardDtoOutput.fromJson(Map<String, dynamic> json) => _$DashboardDtoOutputFromJson(json);

@override final  String from;
@override final  String to;
@override final  Sales? sales;
@override final  Collections? collections;
@override final  Outstanding? outstanding;
@override final  SupplierDues? supplierDues;
@override final  Expenses? expenses;
 final  List<LowStock>? _lowStock;
@override List<LowStock>? get lowStock {
  final value = _lowStock;
  if (value == null) return null;
  if (_lowStock is EqualUnmodifiableListView) return _lowStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OverdueCustomers>? _overdueCustomers;
@override List<OverdueCustomers>? get overdueCustomers {
  final value = _overdueCustomers;
  if (value == null) return null;
  if (_overdueCustomers is EqualUnmodifiableListView) return _overdueCustomers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardDtoOutputCopyWith<_DashboardDtoOutput> get copyWith => __$DashboardDtoOutputCopyWithImpl<_DashboardDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardDtoOutput&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.sales, sales) || other.sales == sales)&&(identical(other.collections, collections) || other.collections == collections)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.supplierDues, supplierDues) || other.supplierDues == supplierDues)&&(identical(other.expenses, expenses) || other.expenses == expenses)&&const DeepCollectionEquality().equals(other.lowStock, _lowStock)&&const DeepCollectionEquality().equals(other.overdueCustomers, _overdueCustomers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to,sales,collections,outstanding,supplierDues,expenses,const DeepCollectionEquality().hash(_lowStock),const DeepCollectionEquality().hash(_overdueCustomers));
}

@override
String toString() {
    return 'DashboardDtoOutput(from: $from, to: $to, sales: $sales, collections: $collections, outstanding: $outstanding, supplierDues: $supplierDues, expenses: $expenses, lowStock: $lowStock, overdueCustomers: $overdueCustomers)';
}


}

/// @nodoc
abstract mixin class _$DashboardDtoOutputCopyWith<$Res> implements $DashboardDtoOutputCopyWith<$Res> {
  factory _$DashboardDtoOutputCopyWith(_DashboardDtoOutput value, $Res Function(_DashboardDtoOutput) _then) = __$DashboardDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String from, String to, Sales? sales, Collections? collections, Outstanding? outstanding, SupplierDues? supplierDues, Expenses? expenses, List<LowStock>? lowStock, List<OverdueCustomers>? overdueCustomers
});


@override $SalesCopyWith<$Res>? get sales;@override $CollectionsCopyWith<$Res>? get collections;@override $OutstandingCopyWith<$Res>? get outstanding;@override $SupplierDuesCopyWith<$Res>? get supplierDues;@override $ExpensesCopyWith<$Res>? get expenses;

}
/// @nodoc
class __$DashboardDtoOutputCopyWithImpl<$Res>
    implements _$DashboardDtoOutputCopyWith<$Res> {
  __$DashboardDtoOutputCopyWithImpl(this._self, this._then);

  final _DashboardDtoOutput _self;
  final $Res Function(_DashboardDtoOutput) _then;

/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,Object? sales = freezed,Object? collections = freezed,Object? outstanding = freezed,Object? supplierDues = freezed,Object? expenses = freezed,Object? lowStock = freezed,Object? overdueCustomers = freezed,}) {
  return _then(_DashboardDtoOutput(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,sales: freezed == sales ? _self.sales : sales // ignore: cast_nullable_to_non_nullable
as Sales?,collections: freezed == collections ? _self.collections : collections // ignore: cast_nullable_to_non_nullable
as Collections?,outstanding: freezed == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as Outstanding?,supplierDues: freezed == supplierDues ? _self.supplierDues : supplierDues // ignore: cast_nullable_to_non_nullable
as SupplierDues?,expenses: freezed == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as Expenses?,lowStock: freezed == lowStock ? _self._lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as List<LowStock>?,overdueCustomers: freezed == overdueCustomers ? _self._overdueCustomers : overdueCustomers // ignore: cast_nullable_to_non_nullable
as List<OverdueCustomers>?,
  ));
}

/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesCopyWith<$Res>? get sales {
    if (_self.sales == null) {
    return null;
  }

  return $SalesCopyWith<$Res>(_self.sales!, (value) {
    return _then(_self.copyWith(sales: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectionsCopyWith<$Res>? get collections {
    if (_self.collections == null) {
    return null;
  }

  return $CollectionsCopyWith<$Res>(_self.collections!, (value) {
    return _then(_self.copyWith(collections: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutstandingCopyWith<$Res>? get outstanding {
    if (_self.outstanding == null) {
    return null;
  }

  return $OutstandingCopyWith<$Res>(_self.outstanding!, (value) {
    return _then(_self.copyWith(outstanding: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupplierDuesCopyWith<$Res>? get supplierDues {
    if (_self.supplierDues == null) {
    return null;
  }

  return $SupplierDuesCopyWith<$Res>(_self.supplierDues!, (value) {
    return _then(_self.copyWith(supplierDues: value));
  });
}/// Create a copy of DashboardDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpensesCopyWith<$Res>? get expenses {
    if (_self.expenses == null) {
    return null;
  }

  return $ExpensesCopyWith<$Res>(_self.expenses!, (value) {
    return _then(_self.copyWith(expenses: value));
  });
}
}

// dart format on
