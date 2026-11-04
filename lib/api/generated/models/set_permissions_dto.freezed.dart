// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_permissions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetPermissionsDto {

 List<Overrides2> get overrides;
/// Create a copy of SetPermissionsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPermissionsDtoCopyWith<SetPermissionsDto> get copyWith => _$SetPermissionsDtoCopyWithImpl<SetPermissionsDto>(this as SetPermissionsDto, _$identity);

  /// Serializes this SetPermissionsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SetPermissionsDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPermissionsDto&&const DeepCollectionEquality().equals(other.overrides, _this.overrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SetPermissionsDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.overrides));
}

@override
String toString() {
  final _this = this as SetPermissionsDto;
  return 'SetPermissionsDto(overrides: ${_this.overrides})';
}


}

/// @nodoc
abstract mixin class $SetPermissionsDtoCopyWith<$Res>  {
  factory $SetPermissionsDtoCopyWith(SetPermissionsDto value, $Res Function(SetPermissionsDto) _then) = _$SetPermissionsDtoCopyWithImpl;
@useResult
$Res call({
 List<Overrides2> overrides
});




}
/// @nodoc
class _$SetPermissionsDtoCopyWithImpl<$Res>
    implements $SetPermissionsDtoCopyWith<$Res> {
  _$SetPermissionsDtoCopyWithImpl(this._self, this._then);

  final SetPermissionsDto _self;
  final $Res Function(SetPermissionsDto) _then;

/// Create a copy of SetPermissionsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overrides = null,}) {
  return _then(SetPermissionsDto(
overrides: null == overrides ? _self.overrides : overrides // ignore: cast_nullable_to_non_nullable
as List<Overrides2>,
  ));
}

}


/// Adds pattern-matching-related methods to [SetPermissionsDto].
extension SetPermissionsDtoPatterns on SetPermissionsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetPermissionsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetPermissionsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetPermissionsDto value)  $default,){
final _that = this;
switch (_that) {
case _SetPermissionsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetPermissionsDto value)?  $default,){
final _that = this;
switch (_that) {
case _SetPermissionsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Overrides2> overrides)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetPermissionsDto() when $default != null:
return $default(_that.overrides);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Overrides2> overrides)  $default,) {final _that = this;
switch (_that) {
case _SetPermissionsDto():
return $default(_that.overrides);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Overrides2> overrides)?  $default,) {final _that = this;
switch (_that) {
case _SetPermissionsDto() when $default != null:
return $default(_that.overrides);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetPermissionsDto implements SetPermissionsDto {
  const _SetPermissionsDto({required  List<Overrides2> overrides}): _overrides = overrides;
  factory _SetPermissionsDto.fromJson(Map<String, dynamic> json) => _$SetPermissionsDtoFromJson(json);

 final  List<Overrides2> _overrides;
@override List<Overrides2> get overrides {
  if (_overrides is EqualUnmodifiableListView) return _overrides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_overrides);
}


/// Create a copy of SetPermissionsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPermissionsDtoCopyWith<_SetPermissionsDto> get copyWith => __$SetPermissionsDtoCopyWithImpl<_SetPermissionsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetPermissionsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPermissionsDto&&const DeepCollectionEquality().equals(other.overrides, _overrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_overrides));
}

@override
String toString() {
    return 'SetPermissionsDto(overrides: $overrides)';
}


}

/// @nodoc
abstract mixin class _$SetPermissionsDtoCopyWith<$Res> implements $SetPermissionsDtoCopyWith<$Res> {
  factory _$SetPermissionsDtoCopyWith(_SetPermissionsDto value, $Res Function(_SetPermissionsDto) _then) = __$SetPermissionsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<Overrides2> overrides
});




}
/// @nodoc
class __$SetPermissionsDtoCopyWithImpl<$Res>
    implements _$SetPermissionsDtoCopyWith<$Res> {
  __$SetPermissionsDtoCopyWithImpl(this._self, this._then);

  final _SetPermissionsDto _self;
  final $Res Function(_SetPermissionsDto) _then;

/// Create a copy of SetPermissionsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overrides = null,}) {
  return _then(_SetPermissionsDto(
overrides: null == overrides ? _self._overrides : overrides // ignore: cast_nullable_to_non_nullable
as List<Overrides2>,
  ));
}


}

// dart format on
