// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastRate {

 int get rate; String get date;
/// Create a copy of LastRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastRateCopyWith<LastRate> get copyWith => _$LastRateCopyWithImpl<LastRate>(this as LastRate, _$identity);

  /// Serializes this LastRate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LastRate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastRate&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.date, _this.date) || other.date == _this.date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LastRate;
  return Object.hash(runtimeType,_this.rate,_this.date);
}

@override
String toString() {
  final _this = this as LastRate;
  return 'LastRate(rate: ${_this.rate}, date: ${_this.date})';
}


}

/// @nodoc
abstract mixin class $LastRateCopyWith<$Res>  {
  factory $LastRateCopyWith(LastRate value, $Res Function(LastRate) _then) = _$LastRateCopyWithImpl;
@useResult
$Res call({
 int rate, String date
});




}
/// @nodoc
class _$LastRateCopyWithImpl<$Res>
    implements $LastRateCopyWith<$Res> {
  _$LastRateCopyWithImpl(this._self, this._then);

  final LastRate _self;
  final $Res Function(LastRate) _then;

/// Create a copy of LastRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rate = null,Object? date = null,}) {
  return _then(LastRate(
rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LastRate].
extension LastRatePatterns on LastRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastRate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastRate value)  $default,){
final _that = this;
switch (_that) {
case _LastRate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastRate value)?  $default,){
final _that = this;
switch (_that) {
case _LastRate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rate,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastRate() when $default != null:
return $default(_that.rate,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rate,  String date)  $default,) {final _that = this;
switch (_that) {
case _LastRate():
return $default(_that.rate,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rate,  String date)?  $default,) {final _that = this;
switch (_that) {
case _LastRate() when $default != null:
return $default(_that.rate,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastRate implements LastRate {
  const _LastRate({required this.rate, required this.date});
  factory _LastRate.fromJson(Map<String, dynamic> json) => _$LastRateFromJson(json);

@override final  int rate;
@override final  String date;

/// Create a copy of LastRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastRateCopyWith<_LastRate> get copyWith => __$LastRateCopyWithImpl<_LastRate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastRateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastRate&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rate,date);
}

@override
String toString() {
    return 'LastRate(rate: $rate, date: $date)';
}


}

/// @nodoc
abstract mixin class _$LastRateCopyWith<$Res> implements $LastRateCopyWith<$Res> {
  factory _$LastRateCopyWith(_LastRate value, $Res Function(_LastRate) _then) = __$LastRateCopyWithImpl;
@override @useResult
$Res call({
 int rate, String date
});




}
/// @nodoc
class __$LastRateCopyWithImpl<$Res>
    implements _$LastRateCopyWith<$Res> {
  __$LastRateCopyWithImpl(this._self, this._then);

  final _LastRate _self;
  final $Res Function(_LastRate) _then;

/// Create a copy of LastRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = null,Object? date = null,}) {
  return _then(_LastRate(
rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
