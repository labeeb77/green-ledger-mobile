// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clear_cheque_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClearChequeDto {

 String get accountId; String? get note;
/// Create a copy of ClearChequeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClearChequeDtoCopyWith<ClearChequeDto> get copyWith => _$ClearChequeDtoCopyWithImpl<ClearChequeDto>(this as ClearChequeDto, _$identity);

  /// Serializes this ClearChequeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClearChequeDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearChequeDto&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClearChequeDto;
  return Object.hash(runtimeType,_this.accountId,_this.note);
}

@override
String toString() {
  final _this = this as ClearChequeDto;
  return 'ClearChequeDto(accountId: ${_this.accountId}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $ClearChequeDtoCopyWith<$Res>  {
  factory $ClearChequeDtoCopyWith(ClearChequeDto value, $Res Function(ClearChequeDto) _then) = _$ClearChequeDtoCopyWithImpl;
@useResult
$Res call({
 String accountId, String? note
});




}
/// @nodoc
class _$ClearChequeDtoCopyWithImpl<$Res>
    implements $ClearChequeDtoCopyWith<$Res> {
  _$ClearChequeDtoCopyWithImpl(this._self, this._then);

  final ClearChequeDto _self;
  final $Res Function(ClearChequeDto) _then;

/// Create a copy of ClearChequeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = null,Object? note = freezed,}) {
  return _then(ClearChequeDto(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClearChequeDto].
extension ClearChequeDtoPatterns on ClearChequeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClearChequeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClearChequeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClearChequeDto value)  $default,){
final _that = this;
switch (_that) {
case _ClearChequeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClearChequeDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClearChequeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountId,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClearChequeDto() when $default != null:
return $default(_that.accountId,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountId,  String? note)  $default,) {final _that = this;
switch (_that) {
case _ClearChequeDto():
return $default(_that.accountId,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountId,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _ClearChequeDto() when $default != null:
return $default(_that.accountId,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClearChequeDto implements ClearChequeDto {
  const _ClearChequeDto({required this.accountId, this.note});
  factory _ClearChequeDto.fromJson(Map<String, dynamic> json) => _$ClearChequeDtoFromJson(json);

@override final  String accountId;
@override final  String? note;

/// Create a copy of ClearChequeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClearChequeDtoCopyWith<_ClearChequeDto> get copyWith => __$ClearChequeDtoCopyWithImpl<_ClearChequeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClearChequeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearChequeDto&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accountId,note);
}

@override
String toString() {
    return 'ClearChequeDto(accountId: $accountId, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ClearChequeDtoCopyWith<$Res> implements $ClearChequeDtoCopyWith<$Res> {
  factory _$ClearChequeDtoCopyWith(_ClearChequeDto value, $Res Function(_ClearChequeDto) _then) = __$ClearChequeDtoCopyWithImpl;
@override @useResult
$Res call({
 String accountId, String? note
});




}
/// @nodoc
class __$ClearChequeDtoCopyWithImpl<$Res>
    implements _$ClearChequeDtoCopyWith<$Res> {
  __$ClearChequeDtoCopyWithImpl(this._self, this._then);

  final _ClearChequeDto _self;
  final $Res Function(_ClearChequeDto) _then;

/// Create a copy of ClearChequeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = null,Object? note = freezed,}) {
  return _then(_ClearChequeDto(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
