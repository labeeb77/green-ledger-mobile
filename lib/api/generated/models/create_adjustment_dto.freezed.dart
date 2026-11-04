// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_adjustment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAdjustmentDto {

 String get notes; List<Lines9> get lines; DateTime? get entryDate;
/// Create a copy of CreateAdjustmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdjustmentDtoCopyWith<CreateAdjustmentDto> get copyWith => _$CreateAdjustmentDtoCopyWithImpl<CreateAdjustmentDto>(this as CreateAdjustmentDto, _$identity);

  /// Serializes this CreateAdjustmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateAdjustmentDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdjustmentDto&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateAdjustmentDto;
  return Object.hash(runtimeType,_this.notes,const DeepCollectionEquality().hash(_this.lines),_this.entryDate);
}

@override
String toString() {
  final _this = this as CreateAdjustmentDto;
  return 'CreateAdjustmentDto(notes: ${_this.notes}, lines: ${_this.lines}, entryDate: ${_this.entryDate})';
}


}

/// @nodoc
abstract mixin class $CreateAdjustmentDtoCopyWith<$Res>  {
  factory $CreateAdjustmentDtoCopyWith(CreateAdjustmentDto value, $Res Function(CreateAdjustmentDto) _then) = _$CreateAdjustmentDtoCopyWithImpl;
@useResult
$Res call({
 String notes, List<Lines9> lines, DateTime? entryDate
});




}
/// @nodoc
class _$CreateAdjustmentDtoCopyWithImpl<$Res>
    implements $CreateAdjustmentDtoCopyWith<$Res> {
  _$CreateAdjustmentDtoCopyWithImpl(this._self, this._then);

  final CreateAdjustmentDto _self;
  final $Res Function(CreateAdjustmentDto) _then;

/// Create a copy of CreateAdjustmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notes = null,Object? lines = null,Object? entryDate = freezed,}) {
  return _then(CreateAdjustmentDto(
notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines9>,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdjustmentDto].
extension CreateAdjustmentDtoPatterns on CreateAdjustmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdjustmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdjustmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdjustmentDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdjustmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdjustmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdjustmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String notes,  List<Lines9> lines,  DateTime? entryDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdjustmentDto() when $default != null:
return $default(_that.notes,_that.lines,_that.entryDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String notes,  List<Lines9> lines,  DateTime? entryDate)  $default,) {final _that = this;
switch (_that) {
case _CreateAdjustmentDto():
return $default(_that.notes,_that.lines,_that.entryDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String notes,  List<Lines9> lines,  DateTime? entryDate)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdjustmentDto() when $default != null:
return $default(_that.notes,_that.lines,_that.entryDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAdjustmentDto implements CreateAdjustmentDto {
  const _CreateAdjustmentDto({required this.notes, required  List<Lines9> lines, this.entryDate}): _lines = lines;
  factory _CreateAdjustmentDto.fromJson(Map<String, dynamic> json) => _$CreateAdjustmentDtoFromJson(json);

@override final  String notes;
 final  List<Lines9> _lines;
@override List<Lines9> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  DateTime? entryDate;

/// Create a copy of CreateAdjustmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdjustmentDtoCopyWith<_CreateAdjustmentDto> get copyWith => __$CreateAdjustmentDtoCopyWithImpl<_CreateAdjustmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAdjustmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdjustmentDto&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,notes,const DeepCollectionEquality().hash(_lines),entryDate);
}

@override
String toString() {
    return 'CreateAdjustmentDto(notes: $notes, lines: $lines, entryDate: $entryDate)';
}


}

/// @nodoc
abstract mixin class _$CreateAdjustmentDtoCopyWith<$Res> implements $CreateAdjustmentDtoCopyWith<$Res> {
  factory _$CreateAdjustmentDtoCopyWith(_CreateAdjustmentDto value, $Res Function(_CreateAdjustmentDto) _then) = __$CreateAdjustmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String notes, List<Lines9> lines, DateTime? entryDate
});




}
/// @nodoc
class __$CreateAdjustmentDtoCopyWithImpl<$Res>
    implements _$CreateAdjustmentDtoCopyWith<$Res> {
  __$CreateAdjustmentDtoCopyWithImpl(this._self, this._then);

  final _CreateAdjustmentDto _self;
  final $Res Function(_CreateAdjustmentDto) _then;

/// Create a copy of CreateAdjustmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notes = null,Object? lines = null,Object? entryDate = freezed,}) {
  return _then(_CreateAdjustmentDto(
notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines9>,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
