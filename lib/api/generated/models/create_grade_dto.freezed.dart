// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_grade_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateGradeDto {

 String get name;
/// Create a copy of CreateGradeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGradeDtoCopyWith<CreateGradeDto> get copyWith => _$CreateGradeDtoCopyWithImpl<CreateGradeDto>(this as CreateGradeDto, _$identity);

  /// Serializes this CreateGradeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateGradeDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGradeDto&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateGradeDto;
  return Object.hash(runtimeType,_this.name);
}

@override
String toString() {
  final _this = this as CreateGradeDto;
  return 'CreateGradeDto(name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $CreateGradeDtoCopyWith<$Res>  {
  factory $CreateGradeDtoCopyWith(CreateGradeDto value, $Res Function(CreateGradeDto) _then) = _$CreateGradeDtoCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateGradeDtoCopyWithImpl<$Res>
    implements $CreateGradeDtoCopyWith<$Res> {
  _$CreateGradeDtoCopyWithImpl(this._self, this._then);

  final CreateGradeDto _self;
  final $Res Function(CreateGradeDto) _then;

/// Create a copy of CreateGradeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(CreateGradeDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateGradeDto].
extension CreateGradeDtoPatterns on CreateGradeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGradeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGradeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGradeDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateGradeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGradeDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGradeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGradeDto() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _CreateGradeDto():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateGradeDto() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateGradeDto implements CreateGradeDto {
  const _CreateGradeDto({required this.name});
  factory _CreateGradeDto.fromJson(Map<String, dynamic> json) => _$CreateGradeDtoFromJson(json);

@override final  String name;

/// Create a copy of CreateGradeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGradeDtoCopyWith<_CreateGradeDto> get copyWith => __$CreateGradeDtoCopyWithImpl<_CreateGradeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGradeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGradeDto&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name);
}

@override
String toString() {
    return 'CreateGradeDto(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateGradeDtoCopyWith<$Res> implements $CreateGradeDtoCopyWith<$Res> {
  factory _$CreateGradeDtoCopyWith(_CreateGradeDto value, $Res Function(_CreateGradeDto) _then) = __$CreateGradeDtoCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateGradeDtoCopyWithImpl<$Res>
    implements _$CreateGradeDtoCopyWith<$Res> {
  __$CreateGradeDtoCopyWithImpl(this._self, this._then);

  final _CreateGradeDto _self;
  final $Res Function(_CreateGradeDto) _then;

/// Create a copy of CreateGradeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateGradeDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
