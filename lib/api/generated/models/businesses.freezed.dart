// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'businesses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Businesses {

 int get total; int get active; int get trial; int get expired; int get suspended;
/// Create a copy of Businesses
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessesCopyWith<Businesses> get copyWith => _$BusinessesCopyWithImpl<Businesses>(this as Businesses, _$identity);

  /// Serializes this Businesses to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Businesses;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Businesses&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.trial, _this.trial) || other.trial == _this.trial)&&(identical(other.expired, _this.expired) || other.expired == _this.expired)&&(identical(other.suspended, _this.suspended) || other.suspended == _this.suspended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Businesses;
  return Object.hash(runtimeType,_this.total,_this.active,_this.trial,_this.expired,_this.suspended);
}

@override
String toString() {
  final _this = this as Businesses;
  return 'Businesses(total: ${_this.total}, active: ${_this.active}, trial: ${_this.trial}, expired: ${_this.expired}, suspended: ${_this.suspended})';
}


}

/// @nodoc
abstract mixin class $BusinessesCopyWith<$Res>  {
  factory $BusinessesCopyWith(Businesses value, $Res Function(Businesses) _then) = _$BusinessesCopyWithImpl;
@useResult
$Res call({
 int total, int active, int trial, int expired, int suspended
});




}
/// @nodoc
class _$BusinessesCopyWithImpl<$Res>
    implements $BusinessesCopyWith<$Res> {
  _$BusinessesCopyWithImpl(this._self, this._then);

  final Businesses _self;
  final $Res Function(Businesses) _then;

/// Create a copy of Businesses
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? active = null,Object? trial = null,Object? expired = null,Object? suspended = null,}) {
  return _then(Businesses(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,trial: null == trial ? _self.trial : trial // ignore: cast_nullable_to_non_nullable
as int,expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as int,suspended: null == suspended ? _self.suspended : suspended // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Businesses].
extension BusinessesPatterns on Businesses {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Businesses value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Businesses() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Businesses value)  $default,){
final _that = this;
switch (_that) {
case _Businesses():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Businesses value)?  $default,){
final _that = this;
switch (_that) {
case _Businesses() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int active,  int trial,  int expired,  int suspended)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Businesses() when $default != null:
return $default(_that.total,_that.active,_that.trial,_that.expired,_that.suspended);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int active,  int trial,  int expired,  int suspended)  $default,) {final _that = this;
switch (_that) {
case _Businesses():
return $default(_that.total,_that.active,_that.trial,_that.expired,_that.suspended);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int active,  int trial,  int expired,  int suspended)?  $default,) {final _that = this;
switch (_that) {
case _Businesses() when $default != null:
return $default(_that.total,_that.active,_that.trial,_that.expired,_that.suspended);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Businesses implements Businesses {
  const _Businesses({required this.total, required this.active, required this.trial, required this.expired, required this.suspended});
  factory _Businesses.fromJson(Map<String, dynamic> json) => _$BusinessesFromJson(json);

@override final  int total;
@override final  int active;
@override final  int trial;
@override final  int expired;
@override final  int suspended;

/// Create a copy of Businesses
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessesCopyWith<_Businesses> get copyWith => __$BusinessesCopyWithImpl<_Businesses>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Businesses&&(identical(other.total, total) || other.total == total)&&(identical(other.active, active) || other.active == active)&&(identical(other.trial, trial) || other.trial == trial)&&(identical(other.expired, expired) || other.expired == expired)&&(identical(other.suspended, suspended) || other.suspended == suspended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,active,trial,expired,suspended);
}

@override
String toString() {
    return 'Businesses(total: $total, active: $active, trial: $trial, expired: $expired, suspended: $suspended)';
}


}

/// @nodoc
abstract mixin class _$BusinessesCopyWith<$Res> implements $BusinessesCopyWith<$Res> {
  factory _$BusinessesCopyWith(_Businesses value, $Res Function(_Businesses) _then) = __$BusinessesCopyWithImpl;
@override @useResult
$Res call({
 int total, int active, int trial, int expired, int suspended
});




}
/// @nodoc
class __$BusinessesCopyWithImpl<$Res>
    implements _$BusinessesCopyWith<$Res> {
  __$BusinessesCopyWithImpl(this._self, this._then);

  final _Businesses _self;
  final $Res Function(_Businesses) _then;

/// Create a copy of Businesses
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? active = null,Object? trial = null,Object? expired = null,Object? suspended = null,}) {
  return _then(_Businesses(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,trial: null == trial ? _self.trial : trial // ignore: cast_nullable_to_non_nullable
as int,expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as int,suspended: null == suspended ? _self.suspended : suspended // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
