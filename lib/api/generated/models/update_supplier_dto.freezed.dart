// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_supplier_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSupplierDto {

 String? get name; String? get phone; String? get address; String? get notes;/// Amount in paise (₹1 = 100)
 int? get openingBalance; bool? get active;
/// Create a copy of UpdateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSupplierDtoCopyWith<UpdateSupplierDto> get copyWith => _$UpdateSupplierDtoCopyWithImpl<UpdateSupplierDto>(this as UpdateSupplierDto, _$identity);

  /// Serializes this UpdateSupplierDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateSupplierDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSupplierDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateSupplierDto;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.address,_this.notes,_this.openingBalance,_this.active);
}

@override
String toString() {
  final _this = this as UpdateSupplierDto;
  return 'UpdateSupplierDto(name: ${_this.name}, phone: ${_this.phone}, address: ${_this.address}, notes: ${_this.notes}, openingBalance: ${_this.openingBalance}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdateSupplierDtoCopyWith<$Res>  {
  factory $UpdateSupplierDtoCopyWith(UpdateSupplierDto value, $Res Function(UpdateSupplierDto) _then) = _$UpdateSupplierDtoCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone, String? address, String? notes, int? openingBalance, bool? active
});




}
/// @nodoc
class _$UpdateSupplierDtoCopyWithImpl<$Res>
    implements $UpdateSupplierDtoCopyWith<$Res> {
  _$UpdateSupplierDtoCopyWithImpl(this._self, this._then);

  final UpdateSupplierDto _self;
  final $Res Function(UpdateSupplierDto) _then;

/// Create a copy of UpdateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? address = freezed,Object? notes = freezed,Object? openingBalance = freezed,Object? active = freezed,}) {
  return _then(UpdateSupplierDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateSupplierDto].
extension UpdateSupplierDtoPatterns on UpdateSupplierDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSupplierDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSupplierDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSupplierDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSupplierDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSupplierDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSupplierDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone,  String? address,  String? notes,  int? openingBalance,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSupplierDto() when $default != null:
return $default(_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone,  String? address,  String? notes,  int? openingBalance,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateSupplierDto():
return $default(_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone,  String? address,  String? notes,  int? openingBalance,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSupplierDto() when $default != null:
return $default(_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSupplierDto implements UpdateSupplierDto {
  const _UpdateSupplierDto({this.name, this.phone, this.address, this.notes, this.openingBalance, this.active});
  factory _UpdateSupplierDto.fromJson(Map<String, dynamic> json) => _$UpdateSupplierDtoFromJson(json);

@override final  String? name;
@override final  String? phone;
@override final  String? address;
@override final  String? notes;
/// Amount in paise (₹1 = 100)
@override final  int? openingBalance;
@override final  bool? active;

/// Create a copy of UpdateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSupplierDtoCopyWith<_UpdateSupplierDto> get copyWith => __$UpdateSupplierDtoCopyWithImpl<_UpdateSupplierDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSupplierDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSupplierDto&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,address,notes,openingBalance,active);
}

@override
String toString() {
    return 'UpdateSupplierDto(name: $name, phone: $phone, address: $address, notes: $notes, openingBalance: $openingBalance, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateSupplierDtoCopyWith<$Res> implements $UpdateSupplierDtoCopyWith<$Res> {
  factory _$UpdateSupplierDtoCopyWith(_UpdateSupplierDto value, $Res Function(_UpdateSupplierDto) _then) = __$UpdateSupplierDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone, String? address, String? notes, int? openingBalance, bool? active
});




}
/// @nodoc
class __$UpdateSupplierDtoCopyWithImpl<$Res>
    implements _$UpdateSupplierDtoCopyWith<$Res> {
  __$UpdateSupplierDtoCopyWithImpl(this._self, this._then);

  final _UpdateSupplierDto _self;
  final $Res Function(_UpdateSupplierDto) _then;

/// Create a copy of UpdateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? address = freezed,Object? notes = freezed,Object? openingBalance = freezed,Object? active = freezed,}) {
  return _then(_UpdateSupplierDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
