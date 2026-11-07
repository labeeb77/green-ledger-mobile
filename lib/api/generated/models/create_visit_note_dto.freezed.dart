// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_visit_note_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateVisitNoteDto {

 String get customerId; CreateVisitNoteDtoOutcome get outcome; String? get visitDate; String? get promiseDate; String? get note;
/// Create a copy of CreateVisitNoteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateVisitNoteDtoCopyWith<CreateVisitNoteDto> get copyWith => _$CreateVisitNoteDtoCopyWithImpl<CreateVisitNoteDto>(this as CreateVisitNoteDto, _$identity);

  /// Serializes this CreateVisitNoteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateVisitNoteDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateVisitNoteDto&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&(identical(other.outcome, _this.outcome) || other.outcome == _this.outcome)&&(identical(other.visitDate, _this.visitDate) || other.visitDate == _this.visitDate)&&(identical(other.promiseDate, _this.promiseDate) || other.promiseDate == _this.promiseDate)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateVisitNoteDto;
  return Object.hash(runtimeType,_this.customerId,_this.outcome,_this.visitDate,_this.promiseDate,_this.note);
}

@override
String toString() {
  final _this = this as CreateVisitNoteDto;
  return 'CreateVisitNoteDto(customerId: ${_this.customerId}, outcome: ${_this.outcome}, visitDate: ${_this.visitDate}, promiseDate: ${_this.promiseDate}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $CreateVisitNoteDtoCopyWith<$Res>  {
  factory $CreateVisitNoteDtoCopyWith(CreateVisitNoteDto value, $Res Function(CreateVisitNoteDto) _then) = _$CreateVisitNoteDtoCopyWithImpl;
@useResult
$Res call({
 String customerId, CreateVisitNoteDtoOutcome outcome, String? visitDate, String? promiseDate, String? note
});




}
/// @nodoc
class _$CreateVisitNoteDtoCopyWithImpl<$Res>
    implements $CreateVisitNoteDtoCopyWith<$Res> {
  _$CreateVisitNoteDtoCopyWithImpl(this._self, this._then);

  final CreateVisitNoteDto _self;
  final $Res Function(CreateVisitNoteDto) _then;

/// Create a copy of CreateVisitNoteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? outcome = null,Object? visitDate = freezed,Object? promiseDate = freezed,Object? note = freezed,}) {
  return _then(CreateVisitNoteDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as CreateVisitNoteDtoOutcome,visitDate: freezed == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as String?,promiseDate: freezed == promiseDate ? _self.promiseDate : promiseDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateVisitNoteDto].
extension CreateVisitNoteDtoPatterns on CreateVisitNoteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateVisitNoteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateVisitNoteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateVisitNoteDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateVisitNoteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateVisitNoteDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateVisitNoteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerId,  CreateVisitNoteDtoOutcome outcome,  String? visitDate,  String? promiseDate,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateVisitNoteDto() when $default != null:
return $default(_that.customerId,_that.outcome,_that.visitDate,_that.promiseDate,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerId,  CreateVisitNoteDtoOutcome outcome,  String? visitDate,  String? promiseDate,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CreateVisitNoteDto():
return $default(_that.customerId,_that.outcome,_that.visitDate,_that.promiseDate,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerId,  CreateVisitNoteDtoOutcome outcome,  String? visitDate,  String? promiseDate,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CreateVisitNoteDto() when $default != null:
return $default(_that.customerId,_that.outcome,_that.visitDate,_that.promiseDate,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateVisitNoteDto implements CreateVisitNoteDto {
  const _CreateVisitNoteDto({required this.customerId, required this.outcome, this.visitDate, this.promiseDate, this.note});
  factory _CreateVisitNoteDto.fromJson(Map<String, dynamic> json) => _$CreateVisitNoteDtoFromJson(json);

@override final  String customerId;
@override final  CreateVisitNoteDtoOutcome outcome;
@override final  String? visitDate;
@override final  String? promiseDate;
@override final  String? note;

/// Create a copy of CreateVisitNoteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateVisitNoteDtoCopyWith<_CreateVisitNoteDto> get copyWith => __$CreateVisitNoteDtoCopyWithImpl<_CreateVisitNoteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateVisitNoteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateVisitNoteDto&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.promiseDate, promiseDate) || other.promiseDate == promiseDate)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,customerId,outcome,visitDate,promiseDate,note);
}

@override
String toString() {
    return 'CreateVisitNoteDto(customerId: $customerId, outcome: $outcome, visitDate: $visitDate, promiseDate: $promiseDate, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CreateVisitNoteDtoCopyWith<$Res> implements $CreateVisitNoteDtoCopyWith<$Res> {
  factory _$CreateVisitNoteDtoCopyWith(_CreateVisitNoteDto value, $Res Function(_CreateVisitNoteDto) _then) = __$CreateVisitNoteDtoCopyWithImpl;
@override @useResult
$Res call({
 String customerId, CreateVisitNoteDtoOutcome outcome, String? visitDate, String? promiseDate, String? note
});




}
/// @nodoc
class __$CreateVisitNoteDtoCopyWithImpl<$Res>
    implements _$CreateVisitNoteDtoCopyWith<$Res> {
  __$CreateVisitNoteDtoCopyWithImpl(this._self, this._then);

  final _CreateVisitNoteDto _self;
  final $Res Function(_CreateVisitNoteDto) _then;

/// Create a copy of CreateVisitNoteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? outcome = null,Object? visitDate = freezed,Object? promiseDate = freezed,Object? note = freezed,}) {
  return _then(_CreateVisitNoteDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as CreateVisitNoteDtoOutcome,visitDate: freezed == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as String?,promiseDate: freezed == promiseDate ? _self.promiseDate : promiseDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
