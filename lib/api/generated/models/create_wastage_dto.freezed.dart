// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_wastage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateWastageDto {

 List<Lines8> get lines; String? get entryDate; String? get notes; String? get photoFileId;
/// Create a copy of CreateWastageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateWastageDtoCopyWith<CreateWastageDto> get copyWith => _$CreateWastageDtoCopyWithImpl<CreateWastageDto>(this as CreateWastageDto, _$identity);

  /// Serializes this CreateWastageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateWastageDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateWastageDto&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.photoFileId, _this.photoFileId) || other.photoFileId == _this.photoFileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateWastageDto;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.lines),_this.entryDate,_this.notes,_this.photoFileId);
}

@override
String toString() {
  final _this = this as CreateWastageDto;
  return 'CreateWastageDto(lines: ${_this.lines}, entryDate: ${_this.entryDate}, notes: ${_this.notes}, photoFileId: ${_this.photoFileId})';
}


}

/// @nodoc
abstract mixin class $CreateWastageDtoCopyWith<$Res>  {
  factory $CreateWastageDtoCopyWith(CreateWastageDto value, $Res Function(CreateWastageDto) _then) = _$CreateWastageDtoCopyWithImpl;
@useResult
$Res call({
 List<Lines8> lines, String? entryDate, String? notes, String? photoFileId
});




}
/// @nodoc
class _$CreateWastageDtoCopyWithImpl<$Res>
    implements $CreateWastageDtoCopyWith<$Res> {
  _$CreateWastageDtoCopyWithImpl(this._self, this._then);

  final CreateWastageDto _self;
  final $Res Function(CreateWastageDto) _then;

/// Create a copy of CreateWastageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? entryDate = freezed,Object? notes = freezed,Object? photoFileId = freezed,}) {
  return _then(CreateWastageDto(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines8>,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,photoFileId: freezed == photoFileId ? _self.photoFileId : photoFileId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateWastageDto].
extension CreateWastageDtoPatterns on CreateWastageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateWastageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateWastageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateWastageDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateWastageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateWastageDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateWastageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Lines8> lines,  String? entryDate,  String? notes,  String? photoFileId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateWastageDto() when $default != null:
return $default(_that.lines,_that.entryDate,_that.notes,_that.photoFileId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Lines8> lines,  String? entryDate,  String? notes,  String? photoFileId)  $default,) {final _that = this;
switch (_that) {
case _CreateWastageDto():
return $default(_that.lines,_that.entryDate,_that.notes,_that.photoFileId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Lines8> lines,  String? entryDate,  String? notes,  String? photoFileId)?  $default,) {final _that = this;
switch (_that) {
case _CreateWastageDto() when $default != null:
return $default(_that.lines,_that.entryDate,_that.notes,_that.photoFileId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateWastageDto implements CreateWastageDto {
  const _CreateWastageDto({required  List<Lines8> lines, this.entryDate, this.notes, this.photoFileId}): _lines = lines;
  factory _CreateWastageDto.fromJson(Map<String, dynamic> json) => _$CreateWastageDtoFromJson(json);

 final  List<Lines8> _lines;
@override List<Lines8> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  String? entryDate;
@override final  String? notes;
@override final  String? photoFileId;

/// Create a copy of CreateWastageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateWastageDtoCopyWith<_CreateWastageDto> get copyWith => __$CreateWastageDtoCopyWithImpl<_CreateWastageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateWastageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateWastageDto&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.photoFileId, photoFileId) || other.photoFileId == photoFileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),entryDate,notes,photoFileId);
}

@override
String toString() {
    return 'CreateWastageDto(lines: $lines, entryDate: $entryDate, notes: $notes, photoFileId: $photoFileId)';
}


}

/// @nodoc
abstract mixin class _$CreateWastageDtoCopyWith<$Res> implements $CreateWastageDtoCopyWith<$Res> {
  factory _$CreateWastageDtoCopyWith(_CreateWastageDto value, $Res Function(_CreateWastageDto) _then) = __$CreateWastageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<Lines8> lines, String? entryDate, String? notes, String? photoFileId
});




}
/// @nodoc
class __$CreateWastageDtoCopyWithImpl<$Res>
    implements _$CreateWastageDtoCopyWith<$Res> {
  __$CreateWastageDtoCopyWithImpl(this._self, this._then);

  final _CreateWastageDto _self;
  final $Res Function(_CreateWastageDto) _then;

/// Create a copy of CreateWastageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? entryDate = freezed,Object? notes = freezed,Object? photoFileId = freezed,}) {
  return _then(_CreateWastageDto(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines8>,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,photoFileId: freezed == photoFileId ? _self.photoFileId : photoFileId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
