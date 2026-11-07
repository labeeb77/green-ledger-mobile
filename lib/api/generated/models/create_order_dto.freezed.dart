// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderDto {

 String get customerId; List<Lines15> get lines; String? get orderDate; String? get notes;
/// Create a copy of CreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderDtoCopyWith<CreateOrderDto> get copyWith => _$CreateOrderDtoCopyWithImpl<CreateOrderDto>(this as CreateOrderDto, _$identity);

  /// Serializes this CreateOrderDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateOrderDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderDto&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.orderDate, _this.orderDate) || other.orderDate == _this.orderDate)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateOrderDto;
  return Object.hash(runtimeType,_this.customerId,const DeepCollectionEquality().hash(_this.lines),_this.orderDate,_this.notes);
}

@override
String toString() {
  final _this = this as CreateOrderDto;
  return 'CreateOrderDto(customerId: ${_this.customerId}, lines: ${_this.lines}, orderDate: ${_this.orderDate}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $CreateOrderDtoCopyWith<$Res>  {
  factory $CreateOrderDtoCopyWith(CreateOrderDto value, $Res Function(CreateOrderDto) _then) = _$CreateOrderDtoCopyWithImpl;
@useResult
$Res call({
 String customerId, List<Lines15> lines, String? orderDate, String? notes
});




}
/// @nodoc
class _$CreateOrderDtoCopyWithImpl<$Res>
    implements $CreateOrderDtoCopyWith<$Res> {
  _$CreateOrderDtoCopyWithImpl(this._self, this._then);

  final CreateOrderDto _self;
  final $Res Function(CreateOrderDto) _then;

/// Create a copy of CreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? lines = null,Object? orderDate = freezed,Object? notes = freezed,}) {
  return _then(CreateOrderDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines15>,orderDate: freezed == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderDto].
extension CreateOrderDtoPatterns on CreateOrderDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerId,  List<Lines15> lines,  String? orderDate,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderDto() when $default != null:
return $default(_that.customerId,_that.lines,_that.orderDate,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerId,  List<Lines15> lines,  String? orderDate,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderDto():
return $default(_that.customerId,_that.lines,_that.orderDate,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerId,  List<Lines15> lines,  String? orderDate,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderDto() when $default != null:
return $default(_that.customerId,_that.lines,_that.orderDate,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderDto implements CreateOrderDto {
  const _CreateOrderDto({required this.customerId, required  List<Lines15> lines, this.orderDate, this.notes}): _lines = lines;
  factory _CreateOrderDto.fromJson(Map<String, dynamic> json) => _$CreateOrderDtoFromJson(json);

@override final  String customerId;
 final  List<Lines15> _lines;
@override List<Lines15> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  String? orderDate;
@override final  String? notes;

/// Create a copy of CreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderDtoCopyWith<_CreateOrderDto> get copyWith => __$CreateOrderDtoCopyWithImpl<_CreateOrderDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderDto&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,customerId,const DeepCollectionEquality().hash(_lines),orderDate,notes);
}

@override
String toString() {
    return 'CreateOrderDto(customerId: $customerId, lines: $lines, orderDate: $orderDate, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderDtoCopyWith<$Res> implements $CreateOrderDtoCopyWith<$Res> {
  factory _$CreateOrderDtoCopyWith(_CreateOrderDto value, $Res Function(_CreateOrderDto) _then) = __$CreateOrderDtoCopyWithImpl;
@override @useResult
$Res call({
 String customerId, List<Lines15> lines, String? orderDate, String? notes
});




}
/// @nodoc
class __$CreateOrderDtoCopyWithImpl<$Res>
    implements _$CreateOrderDtoCopyWith<$Res> {
  __$CreateOrderDtoCopyWithImpl(this._self, this._then);

  final _CreateOrderDto _self;
  final $Res Function(_CreateOrderDto) _then;

/// Create a copy of CreateOrderDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? lines = null,Object? orderDate = freezed,Object? notes = freezed,}) {
  return _then(_CreateOrderDto(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines15>,orderDate: freezed == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
