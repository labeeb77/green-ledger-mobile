// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_handover_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateHandoverDto {

 int? get declaredAmount; String? get note;
/// Create a copy of CreateHandoverDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateHandoverDtoCopyWith<CreateHandoverDto> get copyWith => _$CreateHandoverDtoCopyWithImpl<CreateHandoverDto>(this as CreateHandoverDto, _$identity);

  /// Serializes this CreateHandoverDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateHandoverDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateHandoverDto&&(identical(other.declaredAmount, _this.declaredAmount) || other.declaredAmount == _this.declaredAmount)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateHandoverDto;
  return Object.hash(runtimeType,_this.declaredAmount,_this.note);
}

@override
String toString() {
  final _this = this as CreateHandoverDto;
  return 'CreateHandoverDto(declaredAmount: ${_this.declaredAmount}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $CreateHandoverDtoCopyWith<$Res>  {
  factory $CreateHandoverDtoCopyWith(CreateHandoverDto value, $Res Function(CreateHandoverDto) _then) = _$CreateHandoverDtoCopyWithImpl;
@useResult
$Res call({
 int? declaredAmount, String? note
});




}
/// @nodoc
class _$CreateHandoverDtoCopyWithImpl<$Res>
    implements $CreateHandoverDtoCopyWith<$Res> {
  _$CreateHandoverDtoCopyWithImpl(this._self, this._then);

  final CreateHandoverDto _self;
  final $Res Function(CreateHandoverDto) _then;

/// Create a copy of CreateHandoverDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? declaredAmount = freezed,Object? note = freezed,}) {
  return _then(CreateHandoverDto(
declaredAmount: freezed == declaredAmount ? _self.declaredAmount : declaredAmount // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateHandoverDto].
extension CreateHandoverDtoPatterns on CreateHandoverDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateHandoverDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateHandoverDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateHandoverDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateHandoverDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateHandoverDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateHandoverDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? declaredAmount,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateHandoverDto() when $default != null:
return $default(_that.declaredAmount,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? declaredAmount,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CreateHandoverDto():
return $default(_that.declaredAmount,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? declaredAmount,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CreateHandoverDto() when $default != null:
return $default(_that.declaredAmount,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateHandoverDto implements CreateHandoverDto {
  const _CreateHandoverDto({this.declaredAmount, this.note});
  factory _CreateHandoverDto.fromJson(Map<String, dynamic> json) => _$CreateHandoverDtoFromJson(json);

@override final  int? declaredAmount;
@override final  String? note;

/// Create a copy of CreateHandoverDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHandoverDtoCopyWith<_CreateHandoverDto> get copyWith => __$CreateHandoverDtoCopyWithImpl<_CreateHandoverDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateHandoverDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHandoverDto&&(identical(other.declaredAmount, declaredAmount) || other.declaredAmount == declaredAmount)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,declaredAmount,note);
}

@override
String toString() {
    return 'CreateHandoverDto(declaredAmount: $declaredAmount, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CreateHandoverDtoCopyWith<$Res> implements $CreateHandoverDtoCopyWith<$Res> {
  factory _$CreateHandoverDtoCopyWith(_CreateHandoverDto value, $Res Function(_CreateHandoverDto) _then) = __$CreateHandoverDtoCopyWithImpl;
@override @useResult
$Res call({
 int? declaredAmount, String? note
});




}
/// @nodoc
class __$CreateHandoverDtoCopyWithImpl<$Res>
    implements _$CreateHandoverDtoCopyWith<$Res> {
  __$CreateHandoverDtoCopyWithImpl(this._self, this._then);

  final _CreateHandoverDto _self;
  final $Res Function(_CreateHandoverDto) _then;

/// Create a copy of CreateHandoverDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? declaredAmount = freezed,Object? note = freezed,}) {
  return _then(_CreateHandoverDto(
declaredAmount: freezed == declaredAmount ? _self.declaredAmount : declaredAmount // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
