// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overrides2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Overrides2 {

 Permission get permission; Level get level;
/// Create a copy of Overrides2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Overrides2CopyWith<Overrides2> get copyWith => _$Overrides2CopyWithImpl<Overrides2>(this as Overrides2, _$identity);

  /// Serializes this Overrides2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Overrides2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Overrides2&&(identical(other.permission, _this.permission) || other.permission == _this.permission)&&(identical(other.level, _this.level) || other.level == _this.level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Overrides2;
  return Object.hash(runtimeType,_this.permission,_this.level);
}

@override
String toString() {
  final _this = this as Overrides2;
  return 'Overrides2(permission: ${_this.permission}, level: ${_this.level})';
}


}

/// @nodoc
abstract mixin class $Overrides2CopyWith<$Res>  {
  factory $Overrides2CopyWith(Overrides2 value, $Res Function(Overrides2) _then) = _$Overrides2CopyWithImpl;
@useResult
$Res call({
 Permission permission, Level level
});




}
/// @nodoc
class _$Overrides2CopyWithImpl<$Res>
    implements $Overrides2CopyWith<$Res> {
  _$Overrides2CopyWithImpl(this._self, this._then);

  final Overrides2 _self;
  final $Res Function(Overrides2) _then;

/// Create a copy of Overrides2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permission = null,Object? level = null,}) {
  return _then(Overrides2(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as Permission,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as Level,
  ));
}

}


/// Adds pattern-matching-related methods to [Overrides2].
extension Overrides2Patterns on Overrides2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Overrides2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Overrides2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Overrides2 value)  $default,){
final _that = this;
switch (_that) {
case _Overrides2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Overrides2 value)?  $default,){
final _that = this;
switch (_that) {
case _Overrides2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Permission permission,  Level level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Overrides2() when $default != null:
return $default(_that.permission,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Permission permission,  Level level)  $default,) {final _that = this;
switch (_that) {
case _Overrides2():
return $default(_that.permission,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Permission permission,  Level level)?  $default,) {final _that = this;
switch (_that) {
case _Overrides2() when $default != null:
return $default(_that.permission,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Overrides2 implements Overrides2 {
  const _Overrides2({required this.permission, required this.level});
  factory _Overrides2.fromJson(Map<String, dynamic> json) => _$Overrides2FromJson(json);

@override final  Permission permission;
@override final  Level level;

/// Create a copy of Overrides2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Overrides2CopyWith<_Overrides2> get copyWith => __$Overrides2CopyWithImpl<_Overrides2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Overrides2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overrides2&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,permission,level);
}

@override
String toString() {
    return 'Overrides2(permission: $permission, level: $level)';
}


}

/// @nodoc
abstract mixin class _$Overrides2CopyWith<$Res> implements $Overrides2CopyWith<$Res> {
  factory _$Overrides2CopyWith(_Overrides2 value, $Res Function(_Overrides2) _then) = __$Overrides2CopyWithImpl;
@override @useResult
$Res call({
 Permission permission, Level level
});




}
/// @nodoc
class __$Overrides2CopyWithImpl<$Res>
    implements _$Overrides2CopyWith<$Res> {
  __$Overrides2CopyWithImpl(this._self, this._then);

  final _Overrides2 _self;
  final $Res Function(_Overrides2) _then;

/// Create a copy of Overrides2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? level = null,}) {
  return _then(_Overrides2(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as Permission,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as Level,
  ));
}


}

// dart format on
