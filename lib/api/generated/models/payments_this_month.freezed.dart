// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_this_month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentsThisMonth {

 int get count; int get amount;
/// Create a copy of PaymentsThisMonth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentsThisMonthCopyWith<PaymentsThisMonth> get copyWith => _$PaymentsThisMonthCopyWithImpl<PaymentsThisMonth>(this as PaymentsThisMonth, _$identity);

  /// Serializes this PaymentsThisMonth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentsThisMonth;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentsThisMonth&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentsThisMonth;
  return Object.hash(runtimeType,_this.count,_this.amount);
}

@override
String toString() {
  final _this = this as PaymentsThisMonth;
  return 'PaymentsThisMonth(count: ${_this.count}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $PaymentsThisMonthCopyWith<$Res>  {
  factory $PaymentsThisMonthCopyWith(PaymentsThisMonth value, $Res Function(PaymentsThisMonth) _then) = _$PaymentsThisMonthCopyWithImpl;
@useResult
$Res call({
 int count, int amount
});




}
/// @nodoc
class _$PaymentsThisMonthCopyWithImpl<$Res>
    implements $PaymentsThisMonthCopyWith<$Res> {
  _$PaymentsThisMonthCopyWithImpl(this._self, this._then);

  final PaymentsThisMonth _self;
  final $Res Function(PaymentsThisMonth) _then;

/// Create a copy of PaymentsThisMonth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? amount = null,}) {
  return _then(PaymentsThisMonth(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentsThisMonth].
extension PaymentsThisMonthPatterns on PaymentsThisMonth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentsThisMonth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentsThisMonth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentsThisMonth value)  $default,){
final _that = this;
switch (_that) {
case _PaymentsThisMonth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentsThisMonth value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentsThisMonth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentsThisMonth() when $default != null:
return $default(_that.count,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int amount)  $default,) {final _that = this;
switch (_that) {
case _PaymentsThisMonth():
return $default(_that.count,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentsThisMonth() when $default != null:
return $default(_that.count,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentsThisMonth implements PaymentsThisMonth {
  const _PaymentsThisMonth({required this.count, required this.amount});
  factory _PaymentsThisMonth.fromJson(Map<String, dynamic> json) => _$PaymentsThisMonthFromJson(json);

@override final  int count;
@override final  int amount;

/// Create a copy of PaymentsThisMonth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentsThisMonthCopyWith<_PaymentsThisMonth> get copyWith => __$PaymentsThisMonthCopyWithImpl<_PaymentsThisMonth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentsThisMonthToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentsThisMonth&&(identical(other.count, count) || other.count == count)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,count,amount);
}

@override
String toString() {
    return 'PaymentsThisMonth(count: $count, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PaymentsThisMonthCopyWith<$Res> implements $PaymentsThisMonthCopyWith<$Res> {
  factory _$PaymentsThisMonthCopyWith(_PaymentsThisMonth value, $Res Function(_PaymentsThisMonth) _then) = __$PaymentsThisMonthCopyWithImpl;
@override @useResult
$Res call({
 int count, int amount
});




}
/// @nodoc
class __$PaymentsThisMonthCopyWithImpl<$Res>
    implements _$PaymentsThisMonthCopyWith<$Res> {
  __$PaymentsThisMonthCopyWithImpl(this._self, this._then);

  final _PaymentsThisMonth _self;
  final $Res Function(_PaymentsThisMonth) _then;

/// Create a copy of PaymentsThisMonth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? amount = null,}) {
  return _then(_PaymentsThisMonth(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
