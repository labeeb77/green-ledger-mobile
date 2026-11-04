// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grant_support_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GrantSupportDto {

 int get hours;
/// Create a copy of GrantSupportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrantSupportDtoCopyWith<GrantSupportDto> get copyWith => _$GrantSupportDtoCopyWithImpl<GrantSupportDto>(this as GrantSupportDto, _$identity);

  /// Serializes this GrantSupportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GrantSupportDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrantSupportDto&&(identical(other.hours, _this.hours) || other.hours == _this.hours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GrantSupportDto;
  return Object.hash(runtimeType,_this.hours);
}

@override
String toString() {
  final _this = this as GrantSupportDto;
  return 'GrantSupportDto(hours: ${_this.hours})';
}


}

/// @nodoc
abstract mixin class $GrantSupportDtoCopyWith<$Res>  {
  factory $GrantSupportDtoCopyWith(GrantSupportDto value, $Res Function(GrantSupportDto) _then) = _$GrantSupportDtoCopyWithImpl;
@useResult
$Res call({
 int hours
});




}
/// @nodoc
class _$GrantSupportDtoCopyWithImpl<$Res>
    implements $GrantSupportDtoCopyWith<$Res> {
  _$GrantSupportDtoCopyWithImpl(this._self, this._then);

  final GrantSupportDto _self;
  final $Res Function(GrantSupportDto) _then;

/// Create a copy of GrantSupportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hours = null,}) {
  return _then(GrantSupportDto(
hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GrantSupportDto].
extension GrantSupportDtoPatterns on GrantSupportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrantSupportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrantSupportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrantSupportDto value)  $default,){
final _that = this;
switch (_that) {
case _GrantSupportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrantSupportDto value)?  $default,){
final _that = this;
switch (_that) {
case _GrantSupportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrantSupportDto() when $default != null:
return $default(_that.hours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hours)  $default,) {final _that = this;
switch (_that) {
case _GrantSupportDto():
return $default(_that.hours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hours)?  $default,) {final _that = this;
switch (_that) {
case _GrantSupportDto() when $default != null:
return $default(_that.hours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrantSupportDto implements GrantSupportDto {
  const _GrantSupportDto({this.hours = 24});
  factory _GrantSupportDto.fromJson(Map<String, dynamic> json) => _$GrantSupportDtoFromJson(json);

@override@JsonKey() final  int hours;

/// Create a copy of GrantSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrantSupportDtoCopyWith<_GrantSupportDto> get copyWith => __$GrantSupportDtoCopyWithImpl<_GrantSupportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrantSupportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrantSupportDto&&(identical(other.hours, hours) || other.hours == hours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,hours);
}

@override
String toString() {
    return 'GrantSupportDto(hours: $hours)';
}


}

/// @nodoc
abstract mixin class _$GrantSupportDtoCopyWith<$Res> implements $GrantSupportDtoCopyWith<$Res> {
  factory _$GrantSupportDtoCopyWith(_GrantSupportDto value, $Res Function(_GrantSupportDto) _then) = __$GrantSupportDtoCopyWithImpl;
@override @useResult
$Res call({
 int hours
});




}
/// @nodoc
class __$GrantSupportDtoCopyWithImpl<$Res>
    implements _$GrantSupportDtoCopyWith<$Res> {
  __$GrantSupportDtoCopyWithImpl(this._self, this._then);

  final _GrantSupportDto _self;
  final $Res Function(_GrantSupportDto) _then;

/// Create a copy of GrantSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hours = null,}) {
  return _then(_GrantSupportDto(
hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
