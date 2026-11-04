// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overrides.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Overrides {

 String get permission; Level get level;
/// Create a copy of Overrides
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverridesCopyWith<Overrides> get copyWith => _$OverridesCopyWithImpl<Overrides>(this as Overrides, _$identity);

  /// Serializes this Overrides to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Overrides;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Overrides&&(identical(other.permission, _this.permission) || other.permission == _this.permission)&&(identical(other.level, _this.level) || other.level == _this.level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Overrides;
  return Object.hash(runtimeType,_this.permission,_this.level);
}

@override
String toString() {
  final _this = this as Overrides;
  return 'Overrides(permission: ${_this.permission}, level: ${_this.level})';
}


}

/// @nodoc
abstract mixin class $OverridesCopyWith<$Res>  {
  factory $OverridesCopyWith(Overrides value, $Res Function(Overrides) _then) = _$OverridesCopyWithImpl;
@useResult
$Res call({
 String permission, Level level
});




}
/// @nodoc
class _$OverridesCopyWithImpl<$Res>
    implements $OverridesCopyWith<$Res> {
  _$OverridesCopyWithImpl(this._self, this._then);

  final Overrides _self;
  final $Res Function(Overrides) _then;

/// Create a copy of Overrides
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permission = null,Object? level = null,}) {
  return _then(Overrides(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as Level,
  ));
}

}


/// Adds pattern-matching-related methods to [Overrides].
extension OverridesPatterns on Overrides {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Overrides value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Overrides() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Overrides value)  $default,){
final _that = this;
switch (_that) {
case _Overrides():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Overrides value)?  $default,){
final _that = this;
switch (_that) {
case _Overrides() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String permission,  Level level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Overrides() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String permission,  Level level)  $default,) {final _that = this;
switch (_that) {
case _Overrides():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String permission,  Level level)?  $default,) {final _that = this;
switch (_that) {
case _Overrides() when $default != null:
return $default(_that.permission,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Overrides implements Overrides {
  const _Overrides({required this.permission, required this.level});
  factory _Overrides.fromJson(Map<String, dynamic> json) => _$OverridesFromJson(json);

@override final  String permission;
@override final  Level level;

/// Create a copy of Overrides
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverridesCopyWith<_Overrides> get copyWith => __$OverridesCopyWithImpl<_Overrides>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverridesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overrides&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,permission,level);
}

@override
String toString() {
    return 'Overrides(permission: $permission, level: $level)';
}


}

/// @nodoc
abstract mixin class _$OverridesCopyWith<$Res> implements $OverridesCopyWith<$Res> {
  factory _$OverridesCopyWith(_Overrides value, $Res Function(_Overrides) _then) = __$OverridesCopyWithImpl;
@override @useResult
$Res call({
 String permission, Level level
});




}
/// @nodoc
class __$OverridesCopyWithImpl<$Res>
    implements _$OverridesCopyWith<$Res> {
  __$OverridesCopyWithImpl(this._self, this._then);

  final _Overrides _self;
  final $Res Function(_Overrides) _then;

/// Create a copy of Overrides
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? level = null,}) {
  return _then(_Overrides(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as Level,
  ));
}


}

// dart format on
