// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCountDto {

 List<Lines11> get lines;
/// Create a copy of UpdateCountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCountDtoCopyWith<UpdateCountDto> get copyWith => _$UpdateCountDtoCopyWithImpl<UpdateCountDto>(this as UpdateCountDto, _$identity);

  /// Serializes this UpdateCountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateCountDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountDto&&const DeepCollectionEquality().equals(other.lines, _this.lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateCountDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.lines));
}

@override
String toString() {
  final _this = this as UpdateCountDto;
  return 'UpdateCountDto(lines: ${_this.lines})';
}


}

/// @nodoc
abstract mixin class $UpdateCountDtoCopyWith<$Res>  {
  factory $UpdateCountDtoCopyWith(UpdateCountDto value, $Res Function(UpdateCountDto) _then) = _$UpdateCountDtoCopyWithImpl;
@useResult
$Res call({
 List<Lines11> lines
});




}
/// @nodoc
class _$UpdateCountDtoCopyWithImpl<$Res>
    implements $UpdateCountDtoCopyWith<$Res> {
  _$UpdateCountDtoCopyWithImpl(this._self, this._then);

  final UpdateCountDto _self;
  final $Res Function(UpdateCountDto) _then;

/// Create a copy of UpdateCountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,}) {
  return _then(UpdateCountDto(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines11>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCountDto].
extension UpdateCountDtoPatterns on UpdateCountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCountDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCountDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Lines11> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCountDto() when $default != null:
return $default(_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Lines11> lines)  $default,) {final _that = this;
switch (_that) {
case _UpdateCountDto():
return $default(_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Lines11> lines)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCountDto() when $default != null:
return $default(_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateCountDto implements UpdateCountDto {
  const _UpdateCountDto({required  List<Lines11> lines}): _lines = lines;
  factory _UpdateCountDto.fromJson(Map<String, dynamic> json) => _$UpdateCountDtoFromJson(json);

 final  List<Lines11> _lines;
@override List<Lines11> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of UpdateCountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCountDtoCopyWith<_UpdateCountDto> get copyWith => __$UpdateCountDtoCopyWithImpl<_UpdateCountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateCountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCountDto&&const DeepCollectionEquality().equals(other.lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines));
}

@override
String toString() {
    return 'UpdateCountDto(lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$UpdateCountDtoCopyWith<$Res> implements $UpdateCountDtoCopyWith<$Res> {
  factory _$UpdateCountDtoCopyWith(_UpdateCountDto value, $Res Function(_UpdateCountDto) _then) = __$UpdateCountDtoCopyWithImpl;
@override @useResult
$Res call({
 List<Lines11> lines
});




}
/// @nodoc
class __$UpdateCountDtoCopyWithImpl<$Res>
    implements _$UpdateCountDtoCopyWith<$Res> {
  __$UpdateCountDtoCopyWithImpl(this._self, this._then);

  final _UpdateCountDto _self;
  final $Res Function(_UpdateCountDto) _then;

/// Create a copy of UpdateCountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,}) {
  return _then(_UpdateCountDto(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines11>,
  ));
}


}

// dart format on
