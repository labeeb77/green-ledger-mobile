// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CancelDto {

 String get reason;
/// Create a copy of CancelDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelDtoCopyWith<CancelDto> get copyWith => _$CancelDtoCopyWithImpl<CancelDto>(this as CancelDto, _$identity);

  /// Serializes this CancelDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CancelDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelDto&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CancelDto;
  return Object.hash(runtimeType,_this.reason);
}

@override
String toString() {
  final _this = this as CancelDto;
  return 'CancelDto(reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $CancelDtoCopyWith<$Res>  {
  factory $CancelDtoCopyWith(CancelDto value, $Res Function(CancelDto) _then) = _$CancelDtoCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$CancelDtoCopyWithImpl<$Res>
    implements $CancelDtoCopyWith<$Res> {
  _$CancelDtoCopyWithImpl(this._self, this._then);

  final CancelDto _self;
  final $Res Function(CancelDto) _then;

/// Create a copy of CancelDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,}) {
  return _then(CancelDto(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelDto].
extension CancelDtoPatterns on CancelDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelDto value)  $default,){
final _that = this;
switch (_that) {
case _CancelDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelDto value)?  $default,){
final _that = this;
switch (_that) {
case _CancelDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelDto() when $default != null:
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reason)  $default,) {final _that = this;
switch (_that) {
case _CancelDto():
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reason)?  $default,) {final _that = this;
switch (_that) {
case _CancelDto() when $default != null:
return $default(_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelDto implements CancelDto {
  const _CancelDto({required this.reason});
  factory _CancelDto.fromJson(Map<String, dynamic> json) => _$CancelDtoFromJson(json);

@override final  String reason;

/// Create a copy of CancelDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelDtoCopyWith<_CancelDto> get copyWith => __$CancelDtoCopyWithImpl<_CancelDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelDto&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reason);
}

@override
String toString() {
    return 'CancelDto(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$CancelDtoCopyWith<$Res> implements $CancelDtoCopyWith<$Res> {
  factory _$CancelDtoCopyWith(_CancelDto value, $Res Function(_CancelDto) _then) = __$CancelDtoCopyWithImpl;
@override @useResult
$Res call({
 String reason
});




}
/// @nodoc
class __$CancelDtoCopyWithImpl<$Res>
    implements _$CancelDtoCopyWith<$Res> {
  __$CancelDtoCopyWithImpl(this._self, this._then);

  final _CancelDto _self;
  final $Res Function(_CancelDto) _then;

/// Create a copy of CancelDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(_CancelDto(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
