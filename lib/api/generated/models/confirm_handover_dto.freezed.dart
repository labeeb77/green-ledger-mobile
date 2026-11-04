// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_handover_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmHandoverDto {

 int get countedAmount; String? get accountId; String? get note;
/// Create a copy of ConfirmHandoverDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmHandoverDtoCopyWith<ConfirmHandoverDto> get copyWith => _$ConfirmHandoverDtoCopyWithImpl<ConfirmHandoverDto>(this as ConfirmHandoverDto, _$identity);

  /// Serializes this ConfirmHandoverDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ConfirmHandoverDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmHandoverDto&&(identical(other.countedAmount, _this.countedAmount) || other.countedAmount == _this.countedAmount)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ConfirmHandoverDto;
  return Object.hash(runtimeType,_this.countedAmount,_this.accountId,_this.note);
}

@override
String toString() {
  final _this = this as ConfirmHandoverDto;
  return 'ConfirmHandoverDto(countedAmount: ${_this.countedAmount}, accountId: ${_this.accountId}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $ConfirmHandoverDtoCopyWith<$Res>  {
  factory $ConfirmHandoverDtoCopyWith(ConfirmHandoverDto value, $Res Function(ConfirmHandoverDto) _then) = _$ConfirmHandoverDtoCopyWithImpl;
@useResult
$Res call({
 int countedAmount, String? accountId, String? note
});




}
/// @nodoc
class _$ConfirmHandoverDtoCopyWithImpl<$Res>
    implements $ConfirmHandoverDtoCopyWith<$Res> {
  _$ConfirmHandoverDtoCopyWithImpl(this._self, this._then);

  final ConfirmHandoverDto _self;
  final $Res Function(ConfirmHandoverDto) _then;

/// Create a copy of ConfirmHandoverDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countedAmount = null,Object? accountId = freezed,Object? note = freezed,}) {
  return _then(ConfirmHandoverDto(
countedAmount: null == countedAmount ? _self.countedAmount : countedAmount // ignore: cast_nullable_to_non_nullable
as int,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmHandoverDto].
extension ConfirmHandoverDtoPatterns on ConfirmHandoverDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmHandoverDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmHandoverDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmHandoverDto value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmHandoverDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmHandoverDto value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmHandoverDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int countedAmount,  String? accountId,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmHandoverDto() when $default != null:
return $default(_that.countedAmount,_that.accountId,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int countedAmount,  String? accountId,  String? note)  $default,) {final _that = this;
switch (_that) {
case _ConfirmHandoverDto():
return $default(_that.countedAmount,_that.accountId,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int countedAmount,  String? accountId,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmHandoverDto() when $default != null:
return $default(_that.countedAmount,_that.accountId,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmHandoverDto implements ConfirmHandoverDto {
  const _ConfirmHandoverDto({required this.countedAmount, this.accountId, this.note});
  factory _ConfirmHandoverDto.fromJson(Map<String, dynamic> json) => _$ConfirmHandoverDtoFromJson(json);

@override final  int countedAmount;
@override final  String? accountId;
@override final  String? note;

/// Create a copy of ConfirmHandoverDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmHandoverDtoCopyWith<_ConfirmHandoverDto> get copyWith => __$ConfirmHandoverDtoCopyWithImpl<_ConfirmHandoverDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmHandoverDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmHandoverDto&&(identical(other.countedAmount, countedAmount) || other.countedAmount == countedAmount)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,countedAmount,accountId,note);
}

@override
String toString() {
    return 'ConfirmHandoverDto(countedAmount: $countedAmount, accountId: $accountId, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ConfirmHandoverDtoCopyWith<$Res> implements $ConfirmHandoverDtoCopyWith<$Res> {
  factory _$ConfirmHandoverDtoCopyWith(_ConfirmHandoverDto value, $Res Function(_ConfirmHandoverDto) _then) = __$ConfirmHandoverDtoCopyWithImpl;
@override @useResult
$Res call({
 int countedAmount, String? accountId, String? note
});




}
/// @nodoc
class __$ConfirmHandoverDtoCopyWithImpl<$Res>
    implements _$ConfirmHandoverDtoCopyWith<$Res> {
  __$ConfirmHandoverDtoCopyWithImpl(this._self, this._then);

  final _ConfirmHandoverDto _self;
  final $Res Function(_ConfirmHandoverDto) _then;

/// Create a copy of ConfirmHandoverDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countedAmount = null,Object? accountId = freezed,Object? note = freezed,}) {
  return _then(_ConfirmHandoverDto(
countedAmount: null == countedAmount ? _self.countedAmount : countedAmount // ignore: cast_nullable_to_non_nullable
as int,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
