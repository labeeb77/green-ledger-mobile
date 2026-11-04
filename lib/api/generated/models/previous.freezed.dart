// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previous.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Previous {

 int get rate; DateTime get date;
/// Create a copy of Previous
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreviousCopyWith<Previous> get copyWith => _$PreviousCopyWithImpl<Previous>(this as Previous, _$identity);

  /// Serializes this Previous to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Previous;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Previous&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.date, _this.date) || other.date == _this.date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Previous;
  return Object.hash(runtimeType,_this.rate,_this.date);
}

@override
String toString() {
  final _this = this as Previous;
  return 'Previous(rate: ${_this.rate}, date: ${_this.date})';
}


}

/// @nodoc
abstract mixin class $PreviousCopyWith<$Res>  {
  factory $PreviousCopyWith(Previous value, $Res Function(Previous) _then) = _$PreviousCopyWithImpl;
@useResult
$Res call({
 int rate, DateTime date
});




}
/// @nodoc
class _$PreviousCopyWithImpl<$Res>
    implements $PreviousCopyWith<$Res> {
  _$PreviousCopyWithImpl(this._self, this._then);

  final Previous _self;
  final $Res Function(Previous) _then;

/// Create a copy of Previous
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rate = null,Object? date = null,}) {
  return _then(Previous(
rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Previous].
extension PreviousPatterns on Previous {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Previous value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Previous() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Previous value)  $default,){
final _that = this;
switch (_that) {
case _Previous():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Previous value)?  $default,){
final _that = this;
switch (_that) {
case _Previous() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rate,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Previous() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rate,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _Previous():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rate,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _Previous() when $default != null:
return $default(_that.rate,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Previous implements Previous {
  const _Previous({required this.rate, required this.date});
  factory _Previous.fromJson(Map<String, dynamic> json) => _$PreviousFromJson(json);

@override final  int rate;
@override final  DateTime date;

/// Create a copy of Previous
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreviousCopyWith<_Previous> get copyWith => __$PreviousCopyWithImpl<_Previous>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreviousToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Previous&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rate,date);
}

@override
String toString() {
    return 'Previous(rate: $rate, date: $date)';
}


}

/// @nodoc
abstract mixin class _$PreviousCopyWith<$Res> implements $PreviousCopyWith<$Res> {
  factory _$PreviousCopyWith(_Previous value, $Res Function(_Previous) _then) = __$PreviousCopyWithImpl;
@override @useResult
$Res call({
 int rate, DateTime date
});




}
/// @nodoc
class __$PreviousCopyWithImpl<$Res>
    implements _$PreviousCopyWith<$Res> {
  __$PreviousCopyWithImpl(this._self, this._then);

  final _Previous _self;
  final $Res Function(_Previous) _then;

/// Create a copy of Previous
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = null,Object? date = null,}) {
  return _then(_Previous(
rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
