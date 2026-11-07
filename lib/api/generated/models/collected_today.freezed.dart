// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collected_today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectedToday {

 int get total; ByMethod2 get byMethod;
/// Create a copy of CollectedToday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectedTodayCopyWith<CollectedToday> get copyWith => _$CollectedTodayCopyWithImpl<CollectedToday>(this as CollectedToday, _$identity);

  /// Serializes this CollectedToday to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CollectedToday;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectedToday&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.byMethod, _this.byMethod) || other.byMethod == _this.byMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CollectedToday;
  return Object.hash(runtimeType,_this.total,_this.byMethod);
}

@override
String toString() {
  final _this = this as CollectedToday;
  return 'CollectedToday(total: ${_this.total}, byMethod: ${_this.byMethod})';
}


}

/// @nodoc
abstract mixin class $CollectedTodayCopyWith<$Res>  {
  factory $CollectedTodayCopyWith(CollectedToday value, $Res Function(CollectedToday) _then) = _$CollectedTodayCopyWithImpl;
@useResult
$Res call({
 int total, ByMethod2 byMethod
});


$ByMethod2CopyWith<$Res> get byMethod;

}
/// @nodoc
class _$CollectedTodayCopyWithImpl<$Res>
    implements $CollectedTodayCopyWith<$Res> {
  _$CollectedTodayCopyWithImpl(this._self, this._then);

  final CollectedToday _self;
  final $Res Function(CollectedToday) _then;

/// Create a copy of CollectedToday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? byMethod = null,}) {
  return _then(CollectedToday(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byMethod: null == byMethod ? _self.byMethod : byMethod // ignore: cast_nullable_to_non_nullable
as ByMethod2,
  ));
}
/// Create a copy of CollectedToday
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ByMethod2CopyWith<$Res> get byMethod {
  
  return $ByMethod2CopyWith<$Res>(_self.byMethod, (value) {
    return _then(_self.copyWith(byMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [CollectedToday].
extension CollectedTodayPatterns on CollectedToday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectedToday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectedToday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectedToday value)  $default,){
final _that = this;
switch (_that) {
case _CollectedToday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectedToday value)?  $default,){
final _that = this;
switch (_that) {
case _CollectedToday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  ByMethod2 byMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectedToday() when $default != null:
return $default(_that.total,_that.byMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  ByMethod2 byMethod)  $default,) {final _that = this;
switch (_that) {
case _CollectedToday():
return $default(_that.total,_that.byMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  ByMethod2 byMethod)?  $default,) {final _that = this;
switch (_that) {
case _CollectedToday() when $default != null:
return $default(_that.total,_that.byMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CollectedToday implements CollectedToday {
  const _CollectedToday({required this.total, required this.byMethod});
  factory _CollectedToday.fromJson(Map<String, dynamic> json) => _$CollectedTodayFromJson(json);

@override final  int total;
@override final  ByMethod2 byMethod;

/// Create a copy of CollectedToday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectedTodayCopyWith<_CollectedToday> get copyWith => __$CollectedTodayCopyWithImpl<_CollectedToday>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectedTodayToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectedToday&&(identical(other.total, total) || other.total == total)&&(identical(other.byMethod, byMethod) || other.byMethod == byMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,byMethod);
}

@override
String toString() {
    return 'CollectedToday(total: $total, byMethod: $byMethod)';
}


}

/// @nodoc
abstract mixin class _$CollectedTodayCopyWith<$Res> implements $CollectedTodayCopyWith<$Res> {
  factory _$CollectedTodayCopyWith(_CollectedToday value, $Res Function(_CollectedToday) _then) = __$CollectedTodayCopyWithImpl;
@override @useResult
$Res call({
 int total, ByMethod2 byMethod
});


@override $ByMethod2CopyWith<$Res> get byMethod;

}
/// @nodoc
class __$CollectedTodayCopyWithImpl<$Res>
    implements _$CollectedTodayCopyWith<$Res> {
  __$CollectedTodayCopyWithImpl(this._self, this._then);

  final _CollectedToday _self;
  final $Res Function(_CollectedToday) _then;

/// Create a copy of CollectedToday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? byMethod = null,}) {
  return _then(_CollectedToday(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byMethod: null == byMethod ? _self.byMethod : byMethod // ignore: cast_nullable_to_non_nullable
as ByMethod2,
  ));
}

/// Create a copy of CollectedToday
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ByMethod2CopyWith<$Res> get byMethod {
  
  return $ByMethod2CopyWith<$Res>(_self.byMethod, (value) {
    return _then(_self.copyWith(byMethod: value));
  });
}
}

// dart format on
