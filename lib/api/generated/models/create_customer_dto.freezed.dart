// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCustomerDto {

 String get name; String? get phone; String? get whatsapp; String? get area; String? get address; String? get notes; String? get priceGroupId;/// Amount in paise (₹1 = 100)
 int? get creditLimit; int? get creditDays; String? get agentUserId;/// Amount in paise (₹1 = 100)
 int? get openingBalance;
/// Create a copy of CreateCustomerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCustomerDtoCopyWith<CreateCustomerDto> get copyWith => _$CreateCustomerDtoCopyWithImpl<CreateCustomerDto>(this as CreateCustomerDto, _$identity);

  /// Serializes this CreateCustomerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateCustomerDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCustomerDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.whatsapp, _this.whatsapp) || other.whatsapp == _this.whatsapp)&&(identical(other.area, _this.area) || other.area == _this.area)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.priceGroupId, _this.priceGroupId) || other.priceGroupId == _this.priceGroupId)&&(identical(other.creditLimit, _this.creditLimit) || other.creditLimit == _this.creditLimit)&&(identical(other.creditDays, _this.creditDays) || other.creditDays == _this.creditDays)&&(identical(other.agentUserId, _this.agentUserId) || other.agentUserId == _this.agentUserId)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateCustomerDto;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.whatsapp,_this.area,_this.address,_this.notes,_this.priceGroupId,_this.creditLimit,_this.creditDays,_this.agentUserId,_this.openingBalance);
}

@override
String toString() {
  final _this = this as CreateCustomerDto;
  return 'CreateCustomerDto(name: ${_this.name}, phone: ${_this.phone}, whatsapp: ${_this.whatsapp}, area: ${_this.area}, address: ${_this.address}, notes: ${_this.notes}, priceGroupId: ${_this.priceGroupId}, creditLimit: ${_this.creditLimit}, creditDays: ${_this.creditDays}, agentUserId: ${_this.agentUserId}, openingBalance: ${_this.openingBalance})';
}


}

/// @nodoc
abstract mixin class $CreateCustomerDtoCopyWith<$Res>  {
  factory $CreateCustomerDtoCopyWith(CreateCustomerDto value, $Res Function(CreateCustomerDto) _then) = _$CreateCustomerDtoCopyWithImpl;
@useResult
$Res call({
 String name, String? phone, String? whatsapp, String? area, String? address, String? notes, String? priceGroupId, int? creditLimit, int? creditDays, String? agentUserId, int? openingBalance
});




}
/// @nodoc
class _$CreateCustomerDtoCopyWithImpl<$Res>
    implements $CreateCustomerDtoCopyWith<$Res> {
  _$CreateCustomerDtoCopyWithImpl(this._self, this._then);

  final CreateCustomerDto _self;
  final $Res Function(CreateCustomerDto) _then;

/// Create a copy of CreateCustomerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = freezed,Object? whatsapp = freezed,Object? area = freezed,Object? address = freezed,Object? notes = freezed,Object? priceGroupId = freezed,Object? creditLimit = freezed,Object? creditDays = freezed,Object? agentUserId = freezed,Object? openingBalance = freezed,}) {
  return _then(CreateCustomerDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,priceGroupId: freezed == priceGroupId ? _self.priceGroupId : priceGroupId // ignore: cast_nullable_to_non_nullable
as String?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int?,creditDays: freezed == creditDays ? _self.creditDays : creditDays // ignore: cast_nullable_to_non_nullable
as int?,agentUserId: freezed == agentUserId ? _self.agentUserId : agentUserId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCustomerDto].
extension CreateCustomerDtoPatterns on CreateCustomerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCustomerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCustomerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCustomerDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCustomerDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCustomerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? phone,  String? whatsapp,  String? area,  String? address,  String? notes,  String? priceGroupId,  int? creditLimit,  int? creditDays,  String? agentUserId,  int? openingBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCustomerDto() when $default != null:
return $default(_that.name,_that.phone,_that.whatsapp,_that.area,_that.address,_that.notes,_that.priceGroupId,_that.creditLimit,_that.creditDays,_that.agentUserId,_that.openingBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? phone,  String? whatsapp,  String? area,  String? address,  String? notes,  String? priceGroupId,  int? creditLimit,  int? creditDays,  String? agentUserId,  int? openingBalance)  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerDto():
return $default(_that.name,_that.phone,_that.whatsapp,_that.area,_that.address,_that.notes,_that.priceGroupId,_that.creditLimit,_that.creditDays,_that.agentUserId,_that.openingBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? phone,  String? whatsapp,  String? area,  String? address,  String? notes,  String? priceGroupId,  int? creditLimit,  int? creditDays,  String? agentUserId,  int? openingBalance)?  $default,) {final _that = this;
switch (_that) {
case _CreateCustomerDto() when $default != null:
return $default(_that.name,_that.phone,_that.whatsapp,_that.area,_that.address,_that.notes,_that.priceGroupId,_that.creditLimit,_that.creditDays,_that.agentUserId,_that.openingBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCustomerDto implements CreateCustomerDto {
  const _CreateCustomerDto({required this.name, this.phone, this.whatsapp, this.area, this.address, this.notes, this.priceGroupId, this.creditLimit, this.creditDays, this.agentUserId, this.openingBalance});
  factory _CreateCustomerDto.fromJson(Map<String, dynamic> json) => _$CreateCustomerDtoFromJson(json);

@override final  String name;
@override final  String? phone;
@override final  String? whatsapp;
@override final  String? area;
@override final  String? address;
@override final  String? notes;
@override final  String? priceGroupId;
/// Amount in paise (₹1 = 100)
@override final  int? creditLimit;
@override final  int? creditDays;
@override final  String? agentUserId;
/// Amount in paise (₹1 = 100)
@override final  int? openingBalance;

/// Create a copy of CreateCustomerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCustomerDtoCopyWith<_CreateCustomerDto> get copyWith => __$CreateCustomerDtoCopyWithImpl<_CreateCustomerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCustomerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCustomerDto&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.area, area) || other.area == area)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.priceGroupId, priceGroupId) || other.priceGroupId == priceGroupId)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.creditDays, creditDays) || other.creditDays == creditDays)&&(identical(other.agentUserId, agentUserId) || other.agentUserId == agentUserId)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,whatsapp,area,address,notes,priceGroupId,creditLimit,creditDays,agentUserId,openingBalance);
}

@override
String toString() {
    return 'CreateCustomerDto(name: $name, phone: $phone, whatsapp: $whatsapp, area: $area, address: $address, notes: $notes, priceGroupId: $priceGroupId, creditLimit: $creditLimit, creditDays: $creditDays, agentUserId: $agentUserId, openingBalance: $openingBalance)';
}


}

/// @nodoc
abstract mixin class _$CreateCustomerDtoCopyWith<$Res> implements $CreateCustomerDtoCopyWith<$Res> {
  factory _$CreateCustomerDtoCopyWith(_CreateCustomerDto value, $Res Function(_CreateCustomerDto) _then) = __$CreateCustomerDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String? phone, String? whatsapp, String? area, String? address, String? notes, String? priceGroupId, int? creditLimit, int? creditDays, String? agentUserId, int? openingBalance
});




}
/// @nodoc
class __$CreateCustomerDtoCopyWithImpl<$Res>
    implements _$CreateCustomerDtoCopyWith<$Res> {
  __$CreateCustomerDtoCopyWithImpl(this._self, this._then);

  final _CreateCustomerDto _self;
  final $Res Function(_CreateCustomerDto) _then;

/// Create a copy of CreateCustomerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = freezed,Object? whatsapp = freezed,Object? area = freezed,Object? address = freezed,Object? notes = freezed,Object? priceGroupId = freezed,Object? creditLimit = freezed,Object? creditDays = freezed,Object? agentUserId = freezed,Object? openingBalance = freezed,}) {
  return _then(_CreateCustomerDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,whatsapp: freezed == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,priceGroupId: freezed == priceGroupId ? _self.priceGroupId : priceGroupId // ignore: cast_nullable_to_non_nullable
as String?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int?,creditDays: freezed == creditDays ? _self.creditDays : creditDays // ignore: cast_nullable_to_non_nullable
as int?,agentUserId: freezed == agentUserId ? _self.agentUserId : agentUserId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
