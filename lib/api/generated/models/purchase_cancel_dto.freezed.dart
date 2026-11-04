// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_cancel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseCancelDto {

 String get reason;
/// Create a copy of PurchaseCancelDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseCancelDtoCopyWith<PurchaseCancelDto> get copyWith => _$PurchaseCancelDtoCopyWithImpl<PurchaseCancelDto>(this as PurchaseCancelDto, _$identity);

  /// Serializes this PurchaseCancelDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PurchaseCancelDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseCancelDto&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PurchaseCancelDto;
  return Object.hash(runtimeType,_this.reason);
}

@override
String toString() {
  final _this = this as PurchaseCancelDto;
  return 'PurchaseCancelDto(reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $PurchaseCancelDtoCopyWith<$Res>  {
  factory $PurchaseCancelDtoCopyWith(PurchaseCancelDto value, $Res Function(PurchaseCancelDto) _then) = _$PurchaseCancelDtoCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$PurchaseCancelDtoCopyWithImpl<$Res>
    implements $PurchaseCancelDtoCopyWith<$Res> {
  _$PurchaseCancelDtoCopyWithImpl(this._self, this._then);

  final PurchaseCancelDto _self;
  final $Res Function(PurchaseCancelDto) _then;

/// Create a copy of PurchaseCancelDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,}) {
  return _then(PurchaseCancelDto(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseCancelDto].
extension PurchaseCancelDtoPatterns on PurchaseCancelDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseCancelDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseCancelDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseCancelDto value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseCancelDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseCancelDto value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseCancelDto() when $default != null:
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
case _PurchaseCancelDto() when $default != null:
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
case _PurchaseCancelDto():
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
case _PurchaseCancelDto() when $default != null:
return $default(_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseCancelDto implements PurchaseCancelDto {
  const _PurchaseCancelDto({required this.reason});
  factory _PurchaseCancelDto.fromJson(Map<String, dynamic> json) => _$PurchaseCancelDtoFromJson(json);

@override final  String reason;

/// Create a copy of PurchaseCancelDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseCancelDtoCopyWith<_PurchaseCancelDto> get copyWith => __$PurchaseCancelDtoCopyWithImpl<_PurchaseCancelDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseCancelDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseCancelDto&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reason);
}

@override
String toString() {
    return 'PurchaseCancelDto(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$PurchaseCancelDtoCopyWith<$Res> implements $PurchaseCancelDtoCopyWith<$Res> {
  factory _$PurchaseCancelDtoCopyWith(_PurchaseCancelDto value, $Res Function(_PurchaseCancelDto) _then) = __$PurchaseCancelDtoCopyWithImpl;
@override @useResult
$Res call({
 String reason
});




}
/// @nodoc
class __$PurchaseCancelDtoCopyWithImpl<$Res>
    implements _$PurchaseCancelDtoCopyWith<$Res> {
  __$PurchaseCancelDtoCopyWithImpl(this._self, this._then);

  final _PurchaseCancelDto _self;
  final $Res Function(_PurchaseCancelDto) _then;

/// Create a copy of PurchaseCancelDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(_PurchaseCancelDto(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
