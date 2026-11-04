// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_dispatch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDispatchDto {

 String get orderId; List<Lines16> get lines; DateTime? get dispatchDate; String? get vehicleNo;
/// Create a copy of CreateDispatchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDispatchDtoCopyWith<CreateDispatchDto> get copyWith => _$CreateDispatchDtoCopyWithImpl<CreateDispatchDto>(this as CreateDispatchDto, _$identity);

  /// Serializes this CreateDispatchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateDispatchDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDispatchDto&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.dispatchDate, _this.dispatchDate) || other.dispatchDate == _this.dispatchDate)&&(identical(other.vehicleNo, _this.vehicleNo) || other.vehicleNo == _this.vehicleNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateDispatchDto;
  return Object.hash(runtimeType,_this.orderId,const DeepCollectionEquality().hash(_this.lines),_this.dispatchDate,_this.vehicleNo);
}

@override
String toString() {
  final _this = this as CreateDispatchDto;
  return 'CreateDispatchDto(orderId: ${_this.orderId}, lines: ${_this.lines}, dispatchDate: ${_this.dispatchDate}, vehicleNo: ${_this.vehicleNo})';
}


}

/// @nodoc
abstract mixin class $CreateDispatchDtoCopyWith<$Res>  {
  factory $CreateDispatchDtoCopyWith(CreateDispatchDto value, $Res Function(CreateDispatchDto) _then) = _$CreateDispatchDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, List<Lines16> lines, DateTime? dispatchDate, String? vehicleNo
});




}
/// @nodoc
class _$CreateDispatchDtoCopyWithImpl<$Res>
    implements $CreateDispatchDtoCopyWith<$Res> {
  _$CreateDispatchDtoCopyWithImpl(this._self, this._then);

  final CreateDispatchDto _self;
  final $Res Function(CreateDispatchDto) _then;

/// Create a copy of CreateDispatchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? lines = null,Object? dispatchDate = freezed,Object? vehicleNo = freezed,}) {
  return _then(CreateDispatchDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines16>,dispatchDate: freezed == dispatchDate ? _self.dispatchDate : dispatchDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDispatchDto].
extension CreateDispatchDtoPatterns on CreateDispatchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDispatchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDispatchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDispatchDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateDispatchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDispatchDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDispatchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  List<Lines16> lines,  DateTime? dispatchDate,  String? vehicleNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDispatchDto() when $default != null:
return $default(_that.orderId,_that.lines,_that.dispatchDate,_that.vehicleNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  List<Lines16> lines,  DateTime? dispatchDate,  String? vehicleNo)  $default,) {final _that = this;
switch (_that) {
case _CreateDispatchDto():
return $default(_that.orderId,_that.lines,_that.dispatchDate,_that.vehicleNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  List<Lines16> lines,  DateTime? dispatchDate,  String? vehicleNo)?  $default,) {final _that = this;
switch (_that) {
case _CreateDispatchDto() when $default != null:
return $default(_that.orderId,_that.lines,_that.dispatchDate,_that.vehicleNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDispatchDto implements CreateDispatchDto {
  const _CreateDispatchDto({required this.orderId, required  List<Lines16> lines, this.dispatchDate, this.vehicleNo}): _lines = lines;
  factory _CreateDispatchDto.fromJson(Map<String, dynamic> json) => _$CreateDispatchDtoFromJson(json);

@override final  String orderId;
 final  List<Lines16> _lines;
@override List<Lines16> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  DateTime? dispatchDate;
@override final  String? vehicleNo;

/// Create a copy of CreateDispatchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDispatchDtoCopyWith<_CreateDispatchDto> get copyWith => __$CreateDispatchDtoCopyWithImpl<_CreateDispatchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDispatchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDispatchDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.dispatchDate, dispatchDate) || other.dispatchDate == dispatchDate)&&(identical(other.vehicleNo, vehicleNo) || other.vehicleNo == vehicleNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,orderId,const DeepCollectionEquality().hash(_lines),dispatchDate,vehicleNo);
}

@override
String toString() {
    return 'CreateDispatchDto(orderId: $orderId, lines: $lines, dispatchDate: $dispatchDate, vehicleNo: $vehicleNo)';
}


}

/// @nodoc
abstract mixin class _$CreateDispatchDtoCopyWith<$Res> implements $CreateDispatchDtoCopyWith<$Res> {
  factory _$CreateDispatchDtoCopyWith(_CreateDispatchDto value, $Res Function(_CreateDispatchDto) _then) = __$CreateDispatchDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, List<Lines16> lines, DateTime? dispatchDate, String? vehicleNo
});




}
/// @nodoc
class __$CreateDispatchDtoCopyWithImpl<$Res>
    implements _$CreateDispatchDtoCopyWith<$Res> {
  __$CreateDispatchDtoCopyWithImpl(this._self, this._then);

  final _CreateDispatchDto _self;
  final $Res Function(_CreateDispatchDto) _then;

/// Create a copy of CreateDispatchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? lines = null,Object? dispatchDate = freezed,Object? vehicleNo = freezed,}) {
  return _then(_CreateDispatchDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines16>,dispatchDate: freezed == dispatchDate ? _self.dispatchDate : dispatchDate // ignore: cast_nullable_to_non_nullable
as DateTime?,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
