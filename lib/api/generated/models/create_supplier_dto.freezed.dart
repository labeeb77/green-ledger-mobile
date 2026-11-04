// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_supplier_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSupplierDto {

 String get name; String? get phone; String? get address; String? get notes;/// Amount in paise (₹1 = 100)
 int? get openingBalance;
/// Create a copy of CreateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSupplierDtoCopyWith<CreateSupplierDto> get copyWith => _$CreateSupplierDtoCopyWithImpl<CreateSupplierDto>(this as CreateSupplierDto, _$identity);

  /// Serializes this CreateSupplierDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateSupplierDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSupplierDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateSupplierDto;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.address,_this.notes,_this.openingBalance);
}

@override
String toString() {
  final _this = this as CreateSupplierDto;
  return 'CreateSupplierDto(name: ${_this.name}, phone: ${_this.phone}, address: ${_this.address}, notes: ${_this.notes}, openingBalance: ${_this.openingBalance})';
}


}

/// @nodoc
abstract mixin class $CreateSupplierDtoCopyWith<$Res>  {
  factory $CreateSupplierDtoCopyWith(CreateSupplierDto value, $Res Function(CreateSupplierDto) _then) = _$CreateSupplierDtoCopyWithImpl;
@useResult
$Res call({
 String name, String? phone, String? address, String? notes, int? openingBalance
});




}
/// @nodoc
class _$CreateSupplierDtoCopyWithImpl<$Res>
    implements $CreateSupplierDtoCopyWith<$Res> {
  _$CreateSupplierDtoCopyWithImpl(this._self, this._then);

  final CreateSupplierDto _self;
  final $Res Function(CreateSupplierDto) _then;

/// Create a copy of CreateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = freezed,Object? address = freezed,Object? notes = freezed,Object? openingBalance = freezed,}) {
  return _then(CreateSupplierDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSupplierDto].
extension CreateSupplierDtoPatterns on CreateSupplierDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSupplierDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSupplierDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSupplierDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSupplierDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSupplierDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSupplierDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? phone,  String? address,  String? notes,  int? openingBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSupplierDto() when $default != null:
return $default(_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? phone,  String? address,  String? notes,  int? openingBalance)  $default,) {final _that = this;
switch (_that) {
case _CreateSupplierDto():
return $default(_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? phone,  String? address,  String? notes,  int? openingBalance)?  $default,) {final _that = this;
switch (_that) {
case _CreateSupplierDto() when $default != null:
return $default(_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSupplierDto implements CreateSupplierDto {
  const _CreateSupplierDto({required this.name, this.phone, this.address, this.notes, this.openingBalance});
  factory _CreateSupplierDto.fromJson(Map<String, dynamic> json) => _$CreateSupplierDtoFromJson(json);

@override final  String name;
@override final  String? phone;
@override final  String? address;
@override final  String? notes;
/// Amount in paise (₹1 = 100)
@override final  int? openingBalance;

/// Create a copy of CreateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSupplierDtoCopyWith<_CreateSupplierDto> get copyWith => __$CreateSupplierDtoCopyWithImpl<_CreateSupplierDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSupplierDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSupplierDto&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,address,notes,openingBalance);
}

@override
String toString() {
    return 'CreateSupplierDto(name: $name, phone: $phone, address: $address, notes: $notes, openingBalance: $openingBalance)';
}


}

/// @nodoc
abstract mixin class _$CreateSupplierDtoCopyWith<$Res> implements $CreateSupplierDtoCopyWith<$Res> {
  factory _$CreateSupplierDtoCopyWith(_CreateSupplierDto value, $Res Function(_CreateSupplierDto) _then) = __$CreateSupplierDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String? phone, String? address, String? notes, int? openingBalance
});




}
/// @nodoc
class __$CreateSupplierDtoCopyWithImpl<$Res>
    implements _$CreateSupplierDtoCopyWith<$Res> {
  __$CreateSupplierDtoCopyWithImpl(this._self, this._then);

  final _CreateSupplierDto _self;
  final $Res Function(_CreateSupplierDto) _then;

/// Create a copy of CreateSupplierDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = freezed,Object? address = freezed,Object? notes = freezed,Object? openingBalance = freezed,}) {
  return _then(_CreateSupplierDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
