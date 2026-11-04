// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_permissions_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPermissionsDtoOutput {

 UserPermissionsDtoOutputRole get role; List<Overrides> get overrides; Map<String, EffectiveEffective> get effective;
/// Create a copy of UserPermissionsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPermissionsDtoOutputCopyWith<UserPermissionsDtoOutput> get copyWith => _$UserPermissionsDtoOutputCopyWithImpl<UserPermissionsDtoOutput>(this as UserPermissionsDtoOutput, _$identity);

  /// Serializes this UserPermissionsDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserPermissionsDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPermissionsDtoOutput&&(identical(other.role, _this.role) || other.role == _this.role)&&const DeepCollectionEquality().equals(other.overrides, _this.overrides)&&const DeepCollectionEquality().equals(other.effective, _this.effective));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserPermissionsDtoOutput;
  return Object.hash(runtimeType,_this.role,const DeepCollectionEquality().hash(_this.overrides),const DeepCollectionEquality().hash(_this.effective));
}

@override
String toString() {
  final _this = this as UserPermissionsDtoOutput;
  return 'UserPermissionsDtoOutput(role: ${_this.role}, overrides: ${_this.overrides}, effective: ${_this.effective})';
}


}

/// @nodoc
abstract mixin class $UserPermissionsDtoOutputCopyWith<$Res>  {
  factory $UserPermissionsDtoOutputCopyWith(UserPermissionsDtoOutput value, $Res Function(UserPermissionsDtoOutput) _then) = _$UserPermissionsDtoOutputCopyWithImpl;
@useResult
$Res call({
 UserPermissionsDtoOutputRole role, List<Overrides> overrides, Map<String, EffectiveEffective> effective
});




}
/// @nodoc
class _$UserPermissionsDtoOutputCopyWithImpl<$Res>
    implements $UserPermissionsDtoOutputCopyWith<$Res> {
  _$UserPermissionsDtoOutputCopyWithImpl(this._self, this._then);

  final UserPermissionsDtoOutput _self;
  final $Res Function(UserPermissionsDtoOutput) _then;

/// Create a copy of UserPermissionsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? overrides = null,Object? effective = null,}) {
  return _then(UserPermissionsDtoOutput(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserPermissionsDtoOutputRole,overrides: null == overrides ? _self.overrides : overrides // ignore: cast_nullable_to_non_nullable
as List<Overrides>,effective: null == effective ? _self.effective : effective // ignore: cast_nullable_to_non_nullable
as Map<String, EffectiveEffective>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPermissionsDtoOutput].
extension UserPermissionsDtoOutputPatterns on UserPermissionsDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPermissionsDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPermissionsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPermissionsDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _UserPermissionsDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPermissionsDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _UserPermissionsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserPermissionsDtoOutputRole role,  List<Overrides> overrides,  Map<String, EffectiveEffective> effective)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPermissionsDtoOutput() when $default != null:
return $default(_that.role,_that.overrides,_that.effective);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserPermissionsDtoOutputRole role,  List<Overrides> overrides,  Map<String, EffectiveEffective> effective)  $default,) {final _that = this;
switch (_that) {
case _UserPermissionsDtoOutput():
return $default(_that.role,_that.overrides,_that.effective);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserPermissionsDtoOutputRole role,  List<Overrides> overrides,  Map<String, EffectiveEffective> effective)?  $default,) {final _that = this;
switch (_that) {
case _UserPermissionsDtoOutput() when $default != null:
return $default(_that.role,_that.overrides,_that.effective);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPermissionsDtoOutput implements UserPermissionsDtoOutput {
  const _UserPermissionsDtoOutput({required this.role, required  List<Overrides> overrides, required  Map<String, EffectiveEffective> effective}): _overrides = overrides,_effective = effective;
  factory _UserPermissionsDtoOutput.fromJson(Map<String, dynamic> json) => _$UserPermissionsDtoOutputFromJson(json);

@override final  UserPermissionsDtoOutputRole role;
 final  List<Overrides> _overrides;
@override List<Overrides> get overrides {
  if (_overrides is EqualUnmodifiableListView) return _overrides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_overrides);
}

 final  Map<String, EffectiveEffective> _effective;
@override Map<String, EffectiveEffective> get effective {
  if (_effective is EqualUnmodifiableMapView) return _effective;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_effective);
}


/// Create a copy of UserPermissionsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPermissionsDtoOutputCopyWith<_UserPermissionsDtoOutput> get copyWith => __$UserPermissionsDtoOutputCopyWithImpl<_UserPermissionsDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPermissionsDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPermissionsDtoOutput&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.overrides, _overrides)&&const DeepCollectionEquality().equals(other.effective, _effective));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,role,const DeepCollectionEquality().hash(_overrides),const DeepCollectionEquality().hash(_effective));
}

@override
String toString() {
    return 'UserPermissionsDtoOutput(role: $role, overrides: $overrides, effective: $effective)';
}


}

/// @nodoc
abstract mixin class _$UserPermissionsDtoOutputCopyWith<$Res> implements $UserPermissionsDtoOutputCopyWith<$Res> {
  factory _$UserPermissionsDtoOutputCopyWith(_UserPermissionsDtoOutput value, $Res Function(_UserPermissionsDtoOutput) _then) = __$UserPermissionsDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 UserPermissionsDtoOutputRole role, List<Overrides> overrides, Map<String, EffectiveEffective> effective
});




}
/// @nodoc
class __$UserPermissionsDtoOutputCopyWithImpl<$Res>
    implements _$UserPermissionsDtoOutputCopyWith<$Res> {
  __$UserPermissionsDtoOutputCopyWithImpl(this._self, this._then);

  final _UserPermissionsDtoOutput _self;
  final $Res Function(_UserPermissionsDtoOutput) _then;

/// Create a copy of UserPermissionsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? overrides = null,Object? effective = null,}) {
  return _then(_UserPermissionsDtoOutput(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserPermissionsDtoOutputRole,overrides: null == overrides ? _self._overrides : overrides // ignore: cast_nullable_to_non_nullable
as List<Overrides>,effective: null == effective ? _self._effective : effective // ignore: cast_nullable_to_non_nullable
as Map<String, EffectiveEffective>,
  ));
}


}

// dart format on
