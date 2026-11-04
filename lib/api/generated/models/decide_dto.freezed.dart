// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decide_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecideDto {

 String? get note;
/// Create a copy of DecideDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecideDtoCopyWith<DecideDto> get copyWith => _$DecideDtoCopyWithImpl<DecideDto>(this as DecideDto, _$identity);

  /// Serializes this DecideDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DecideDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecideDto&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DecideDto;
  return Object.hash(runtimeType,_this.note);
}

@override
String toString() {
  final _this = this as DecideDto;
  return 'DecideDto(note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $DecideDtoCopyWith<$Res>  {
  factory $DecideDtoCopyWith(DecideDto value, $Res Function(DecideDto) _then) = _$DecideDtoCopyWithImpl;
@useResult
$Res call({
 String? note
});




}
/// @nodoc
class _$DecideDtoCopyWithImpl<$Res>
    implements $DecideDtoCopyWith<$Res> {
  _$DecideDtoCopyWithImpl(this._self, this._then);

  final DecideDto _self;
  final $Res Function(DecideDto) _then;

/// Create a copy of DecideDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? note = freezed,}) {
  return _then(DecideDto(
note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DecideDto].
extension DecideDtoPatterns on DecideDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecideDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecideDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecideDto value)  $default,){
final _that = this;
switch (_that) {
case _DecideDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecideDto value)?  $default,){
final _that = this;
switch (_that) {
case _DecideDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecideDto() when $default != null:
return $default(_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? note)  $default,) {final _that = this;
switch (_that) {
case _DecideDto():
return $default(_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? note)?  $default,) {final _that = this;
switch (_that) {
case _DecideDto() when $default != null:
return $default(_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DecideDto implements DecideDto {
  const _DecideDto({this.note});
  factory _DecideDto.fromJson(Map<String, dynamic> json) => _$DecideDtoFromJson(json);

@override final  String? note;

/// Create a copy of DecideDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecideDtoCopyWith<_DecideDto> get copyWith => __$DecideDtoCopyWithImpl<_DecideDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecideDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecideDto&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,note);
}

@override
String toString() {
    return 'DecideDto(note: $note)';
}


}

/// @nodoc
abstract mixin class _$DecideDtoCopyWith<$Res> implements $DecideDtoCopyWith<$Res> {
  factory _$DecideDtoCopyWith(_DecideDto value, $Res Function(_DecideDto) _then) = __$DecideDtoCopyWithImpl;
@override @useResult
$Res call({
 String? note
});




}
/// @nodoc
class __$DecideDtoCopyWithImpl<$Res>
    implements _$DecideDtoCopyWith<$Res> {
  __$DecideDtoCopyWithImpl(this._self, this._then);

  final _DecideDto _self;
  final $Res Function(_DecideDto) _then;

/// Create a copy of DecideDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? note = freezed,}) {
  return _then(_DecideDto(
note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
