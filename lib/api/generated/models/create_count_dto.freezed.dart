// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCountDto {

 DateTime? get countDate; List<String>? get productIds; String? get notes;
/// Create a copy of CreateCountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCountDtoCopyWith<CreateCountDto> get copyWith => _$CreateCountDtoCopyWithImpl<CreateCountDto>(this as CreateCountDto, _$identity);

  /// Serializes this CreateCountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateCountDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCountDto&&(identical(other.countDate, _this.countDate) || other.countDate == _this.countDate)&&const DeepCollectionEquality().equals(other.productIds, _this.productIds)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateCountDto;
  return Object.hash(runtimeType,_this.countDate,const DeepCollectionEquality().hash(_this.productIds),_this.notes);
}

@override
String toString() {
  final _this = this as CreateCountDto;
  return 'CreateCountDto(countDate: ${_this.countDate}, productIds: ${_this.productIds}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $CreateCountDtoCopyWith<$Res>  {
  factory $CreateCountDtoCopyWith(CreateCountDto value, $Res Function(CreateCountDto) _then) = _$CreateCountDtoCopyWithImpl;
@useResult
$Res call({
 DateTime? countDate, List<String>? productIds, String? notes
});




}
/// @nodoc
class _$CreateCountDtoCopyWithImpl<$Res>
    implements $CreateCountDtoCopyWith<$Res> {
  _$CreateCountDtoCopyWithImpl(this._self, this._then);

  final CreateCountDto _self;
  final $Res Function(CreateCountDto) _then;

/// Create a copy of CreateCountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countDate = freezed,Object? productIds = freezed,Object? notes = freezed,}) {
  return _then(CreateCountDto(
countDate: freezed == countDate ? _self.countDate : countDate // ignore: cast_nullable_to_non_nullable
as DateTime?,productIds: freezed == productIds ? _self.productIds : productIds // ignore: cast_nullable_to_non_nullable
as List<String>?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCountDto].
extension CreateCountDtoPatterns on CreateCountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCountDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateCountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCountDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? countDate,  List<String>? productIds,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCountDto() when $default != null:
return $default(_that.countDate,_that.productIds,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? countDate,  List<String>? productIds,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateCountDto():
return $default(_that.countDate,_that.productIds,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? countDate,  List<String>? productIds,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateCountDto() when $default != null:
return $default(_that.countDate,_that.productIds,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCountDto implements CreateCountDto {
  const _CreateCountDto({this.countDate,  List<String>? productIds, this.notes}): _productIds = productIds;
  factory _CreateCountDto.fromJson(Map<String, dynamic> json) => _$CreateCountDtoFromJson(json);

@override final  DateTime? countDate;
 final  List<String>? _productIds;
@override List<String>? get productIds {
  final value = _productIds;
  if (value == null) return null;
  if (_productIds is EqualUnmodifiableListView) return _productIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? notes;

/// Create a copy of CreateCountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCountDtoCopyWith<_CreateCountDto> get copyWith => __$CreateCountDtoCopyWithImpl<_CreateCountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCountDto&&(identical(other.countDate, countDate) || other.countDate == countDate)&&const DeepCollectionEquality().equals(other.productIds, _productIds)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,countDate,const DeepCollectionEquality().hash(_productIds),notes);
}

@override
String toString() {
    return 'CreateCountDto(countDate: $countDate, productIds: $productIds, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateCountDtoCopyWith<$Res> implements $CreateCountDtoCopyWith<$Res> {
  factory _$CreateCountDtoCopyWith(_CreateCountDto value, $Res Function(_CreateCountDto) _then) = __$CreateCountDtoCopyWithImpl;
@override @useResult
$Res call({
 DateTime? countDate, List<String>? productIds, String? notes
});




}
/// @nodoc
class __$CreateCountDtoCopyWithImpl<$Res>
    implements _$CreateCountDtoCopyWith<$Res> {
  __$CreateCountDtoCopyWithImpl(this._self, this._then);

  final _CreateCountDto _self;
  final $Res Function(_CreateCountDto) _then;

/// Create a copy of CreateCountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countDate = freezed,Object? productIds = freezed,Object? notes = freezed,}) {
  return _then(_CreateCountDto(
countDate: freezed == countDate ? _self.countDate : countDate // ignore: cast_nullable_to_non_nullable
as DateTime?,productIds: freezed == productIds ? _self._productIds : productIds // ignore: cast_nullable_to_non_nullable
as List<String>?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
