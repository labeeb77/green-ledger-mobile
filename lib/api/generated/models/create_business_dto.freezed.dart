// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_business_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateBusinessDto {

 String get name; Owner get owner; int get trialDays; int get userLimit; String? get phone; String? get address;
/// Create a copy of CreateBusinessDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBusinessDtoCopyWith<CreateBusinessDto> get copyWith => _$CreateBusinessDtoCopyWithImpl<CreateBusinessDto>(this as CreateBusinessDto, _$identity);

  /// Serializes this CreateBusinessDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateBusinessDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBusinessDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.owner, _this.owner) || other.owner == _this.owner)&&(identical(other.trialDays, _this.trialDays) || other.trialDays == _this.trialDays)&&(identical(other.userLimit, _this.userLimit) || other.userLimit == _this.userLimit)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.address, _this.address) || other.address == _this.address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateBusinessDto;
  return Object.hash(runtimeType,_this.name,_this.owner,_this.trialDays,_this.userLimit,_this.phone,_this.address);
}

@override
String toString() {
  final _this = this as CreateBusinessDto;
  return 'CreateBusinessDto(name: ${_this.name}, owner: ${_this.owner}, trialDays: ${_this.trialDays}, userLimit: ${_this.userLimit}, phone: ${_this.phone}, address: ${_this.address})';
}


}

/// @nodoc
abstract mixin class $CreateBusinessDtoCopyWith<$Res>  {
  factory $CreateBusinessDtoCopyWith(CreateBusinessDto value, $Res Function(CreateBusinessDto) _then) = _$CreateBusinessDtoCopyWithImpl;
@useResult
$Res call({
 String name, Owner owner, int trialDays, int userLimit, String? phone, String? address
});


$OwnerCopyWith<$Res> get owner;

}
/// @nodoc
class _$CreateBusinessDtoCopyWithImpl<$Res>
    implements $CreateBusinessDtoCopyWith<$Res> {
  _$CreateBusinessDtoCopyWithImpl(this._self, this._then);

  final CreateBusinessDto _self;
  final $Res Function(CreateBusinessDto) _then;

/// Create a copy of CreateBusinessDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? owner = null,Object? trialDays = null,Object? userLimit = null,Object? phone = freezed,Object? address = freezed,}) {
  return _then(CreateBusinessDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner,trialDays: null == trialDays ? _self.trialDays : trialDays // ignore: cast_nullable_to_non_nullable
as int,userLimit: null == userLimit ? _self.userLimit : userLimit // ignore: cast_nullable_to_non_nullable
as int,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateBusinessDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res> get owner {
  
  return $OwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateBusinessDto].
extension CreateBusinessDtoPatterns on CreateBusinessDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBusinessDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBusinessDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBusinessDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateBusinessDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBusinessDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBusinessDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  Owner owner,  int trialDays,  int userLimit,  String? phone,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBusinessDto() when $default != null:
return $default(_that.name,_that.owner,_that.trialDays,_that.userLimit,_that.phone,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  Owner owner,  int trialDays,  int userLimit,  String? phone,  String? address)  $default,) {final _that = this;
switch (_that) {
case _CreateBusinessDto():
return $default(_that.name,_that.owner,_that.trialDays,_that.userLimit,_that.phone,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  Owner owner,  int trialDays,  int userLimit,  String? phone,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _CreateBusinessDto() when $default != null:
return $default(_that.name,_that.owner,_that.trialDays,_that.userLimit,_that.phone,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBusinessDto implements CreateBusinessDto {
  const _CreateBusinessDto({required this.name, required this.owner, this.trialDays = 14, this.userLimit = 10, this.phone, this.address});
  factory _CreateBusinessDto.fromJson(Map<String, dynamic> json) => _$CreateBusinessDtoFromJson(json);

@override final  String name;
@override final  Owner owner;
@override@JsonKey() final  int trialDays;
@override@JsonKey() final  int userLimit;
@override final  String? phone;
@override final  String? address;

/// Create a copy of CreateBusinessDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBusinessDtoCopyWith<_CreateBusinessDto> get copyWith => __$CreateBusinessDtoCopyWithImpl<_CreateBusinessDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBusinessDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBusinessDto&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.trialDays, trialDays) || other.trialDays == trialDays)&&(identical(other.userLimit, userLimit) || other.userLimit == userLimit)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,owner,trialDays,userLimit,phone,address);
}

@override
String toString() {
    return 'CreateBusinessDto(name: $name, owner: $owner, trialDays: $trialDays, userLimit: $userLimit, phone: $phone, address: $address)';
}


}

/// @nodoc
abstract mixin class _$CreateBusinessDtoCopyWith<$Res> implements $CreateBusinessDtoCopyWith<$Res> {
  factory _$CreateBusinessDtoCopyWith(_CreateBusinessDto value, $Res Function(_CreateBusinessDto) _then) = __$CreateBusinessDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, Owner owner, int trialDays, int userLimit, String? phone, String? address
});


@override $OwnerCopyWith<$Res> get owner;

}
/// @nodoc
class __$CreateBusinessDtoCopyWithImpl<$Res>
    implements _$CreateBusinessDtoCopyWith<$Res> {
  __$CreateBusinessDtoCopyWithImpl(this._self, this._then);

  final _CreateBusinessDto _self;
  final $Res Function(_CreateBusinessDto) _then;

/// Create a copy of CreateBusinessDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? owner = null,Object? trialDays = null,Object? userLimit = null,Object? phone = freezed,Object? address = freezed,}) {
  return _then(_CreateBusinessDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner,trialDays: null == trialDays ? _self.trialDays : trialDays // ignore: cast_nullable_to_non_nullable
as int,userLimit: null == userLimit ? _self.userLimit : userLimit // ignore: cast_nullable_to_non_nullable
as int,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateBusinessDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res> get owner {
  
  return $OwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
