// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspect_return_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InspectReturnDto {

 List<Lines19> get lines;
/// Create a copy of InspectReturnDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectReturnDtoCopyWith<InspectReturnDto> get copyWith => _$InspectReturnDtoCopyWithImpl<InspectReturnDto>(this as InspectReturnDto, _$identity);

  /// Serializes this InspectReturnDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InspectReturnDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectReturnDto&&const DeepCollectionEquality().equals(other.lines, _this.lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InspectReturnDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.lines));
}

@override
String toString() {
  final _this = this as InspectReturnDto;
  return 'InspectReturnDto(lines: ${_this.lines})';
}


}

/// @nodoc
abstract mixin class $InspectReturnDtoCopyWith<$Res>  {
  factory $InspectReturnDtoCopyWith(InspectReturnDto value, $Res Function(InspectReturnDto) _then) = _$InspectReturnDtoCopyWithImpl;
@useResult
$Res call({
 List<Lines19> lines
});




}
/// @nodoc
class _$InspectReturnDtoCopyWithImpl<$Res>
    implements $InspectReturnDtoCopyWith<$Res> {
  _$InspectReturnDtoCopyWithImpl(this._self, this._then);

  final InspectReturnDto _self;
  final $Res Function(InspectReturnDto) _then;

/// Create a copy of InspectReturnDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,}) {
  return _then(InspectReturnDto(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines19>,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectReturnDto].
extension InspectReturnDtoPatterns on InspectReturnDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectReturnDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectReturnDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectReturnDto value)  $default,){
final _that = this;
switch (_that) {
case _InspectReturnDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectReturnDto value)?  $default,){
final _that = this;
switch (_that) {
case _InspectReturnDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Lines19> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectReturnDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Lines19> lines)  $default,) {final _that = this;
switch (_that) {
case _InspectReturnDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Lines19> lines)?  $default,) {final _that = this;
switch (_that) {
case _InspectReturnDto() when $default != null:
return $default(_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectReturnDto implements InspectReturnDto {
  const _InspectReturnDto({required  List<Lines19> lines}): _lines = lines;
  factory _InspectReturnDto.fromJson(Map<String, dynamic> json) => _$InspectReturnDtoFromJson(json);

 final  List<Lines19> _lines;
@override List<Lines19> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of InspectReturnDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectReturnDtoCopyWith<_InspectReturnDto> get copyWith => __$InspectReturnDtoCopyWithImpl<_InspectReturnDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectReturnDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectReturnDto&&const DeepCollectionEquality().equals(other.lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines));
}

@override
String toString() {
    return 'InspectReturnDto(lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$InspectReturnDtoCopyWith<$Res> implements $InspectReturnDtoCopyWith<$Res> {
  factory _$InspectReturnDtoCopyWith(_InspectReturnDto value, $Res Function(_InspectReturnDto) _then) = __$InspectReturnDtoCopyWithImpl;
@override @useResult
$Res call({
 List<Lines19> lines
});




}
/// @nodoc
class __$InspectReturnDtoCopyWithImpl<$Res>
    implements _$InspectReturnDtoCopyWith<$Res> {
  __$InspectReturnDtoCopyWithImpl(this._self, this._then);

  final _InspectReturnDto _self;
  final $Res Function(_InspectReturnDto) _then;

/// Create a copy of InspectReturnDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,}) {
  return _then(_InspectReturnDto(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines19>,
  ));
}


}

// dart format on
