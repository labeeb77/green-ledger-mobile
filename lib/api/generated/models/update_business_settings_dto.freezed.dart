// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_business_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateBusinessSettingsDto {

 String? get name; String? get phone; String? get address; String? get billPrefix; String? get receiptPrefix; String? get goodsReceiptPrefix; UpdateBusinessSettingsDtoBillFormat? get billFormat; String? get billFooter;/// Amount in paise (₹1 = 100)
 int? get wastageApprovalThreshold; String? get logoFileId;
/// Create a copy of UpdateBusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBusinessSettingsDtoCopyWith<UpdateBusinessSettingsDto> get copyWith => _$UpdateBusinessSettingsDtoCopyWithImpl<UpdateBusinessSettingsDto>(this as UpdateBusinessSettingsDto, _$identity);

  /// Serializes this UpdateBusinessSettingsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateBusinessSettingsDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBusinessSettingsDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.billPrefix, _this.billPrefix) || other.billPrefix == _this.billPrefix)&&(identical(other.receiptPrefix, _this.receiptPrefix) || other.receiptPrefix == _this.receiptPrefix)&&(identical(other.goodsReceiptPrefix, _this.goodsReceiptPrefix) || other.goodsReceiptPrefix == _this.goodsReceiptPrefix)&&(identical(other.billFormat, _this.billFormat) || other.billFormat == _this.billFormat)&&(identical(other.billFooter, _this.billFooter) || other.billFooter == _this.billFooter)&&(identical(other.wastageApprovalThreshold, _this.wastageApprovalThreshold) || other.wastageApprovalThreshold == _this.wastageApprovalThreshold)&&(identical(other.logoFileId, _this.logoFileId) || other.logoFileId == _this.logoFileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateBusinessSettingsDto;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.address,_this.billPrefix,_this.receiptPrefix,_this.goodsReceiptPrefix,_this.billFormat,_this.billFooter,_this.wastageApprovalThreshold,_this.logoFileId);
}

@override
String toString() {
  final _this = this as UpdateBusinessSettingsDto;
  return 'UpdateBusinessSettingsDto(name: ${_this.name}, phone: ${_this.phone}, address: ${_this.address}, billPrefix: ${_this.billPrefix}, receiptPrefix: ${_this.receiptPrefix}, goodsReceiptPrefix: ${_this.goodsReceiptPrefix}, billFormat: ${_this.billFormat}, billFooter: ${_this.billFooter}, wastageApprovalThreshold: ${_this.wastageApprovalThreshold}, logoFileId: ${_this.logoFileId})';
}


}

/// @nodoc
abstract mixin class $UpdateBusinessSettingsDtoCopyWith<$Res>  {
  factory $UpdateBusinessSettingsDtoCopyWith(UpdateBusinessSettingsDto value, $Res Function(UpdateBusinessSettingsDto) _then) = _$UpdateBusinessSettingsDtoCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone, String? address, String? billPrefix, String? receiptPrefix, String? goodsReceiptPrefix, UpdateBusinessSettingsDtoBillFormat? billFormat, String? billFooter, int? wastageApprovalThreshold, String? logoFileId
});




}
/// @nodoc
class _$UpdateBusinessSettingsDtoCopyWithImpl<$Res>
    implements $UpdateBusinessSettingsDtoCopyWith<$Res> {
  _$UpdateBusinessSettingsDtoCopyWithImpl(this._self, this._then);

  final UpdateBusinessSettingsDto _self;
  final $Res Function(UpdateBusinessSettingsDto) _then;

/// Create a copy of UpdateBusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? address = freezed,Object? billPrefix = freezed,Object? receiptPrefix = freezed,Object? goodsReceiptPrefix = freezed,Object? billFormat = freezed,Object? billFooter = freezed,Object? wastageApprovalThreshold = freezed,Object? logoFileId = freezed,}) {
  return _then(UpdateBusinessSettingsDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,billPrefix: freezed == billPrefix ? _self.billPrefix : billPrefix // ignore: cast_nullable_to_non_nullable
as String?,receiptPrefix: freezed == receiptPrefix ? _self.receiptPrefix : receiptPrefix // ignore: cast_nullable_to_non_nullable
as String?,goodsReceiptPrefix: freezed == goodsReceiptPrefix ? _self.goodsReceiptPrefix : goodsReceiptPrefix // ignore: cast_nullable_to_non_nullable
as String?,billFormat: freezed == billFormat ? _self.billFormat : billFormat // ignore: cast_nullable_to_non_nullable
as UpdateBusinessSettingsDtoBillFormat?,billFooter: freezed == billFooter ? _self.billFooter : billFooter // ignore: cast_nullable_to_non_nullable
as String?,wastageApprovalThreshold: freezed == wastageApprovalThreshold ? _self.wastageApprovalThreshold : wastageApprovalThreshold // ignore: cast_nullable_to_non_nullable
as int?,logoFileId: freezed == logoFileId ? _self.logoFileId : logoFileId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateBusinessSettingsDto].
extension UpdateBusinessSettingsDtoPatterns on UpdateBusinessSettingsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateBusinessSettingsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateBusinessSettingsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateBusinessSettingsDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateBusinessSettingsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateBusinessSettingsDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateBusinessSettingsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone,  String? address,  String? billPrefix,  String? receiptPrefix,  String? goodsReceiptPrefix,  UpdateBusinessSettingsDtoBillFormat? billFormat,  String? billFooter,  int? wastageApprovalThreshold,  String? logoFileId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateBusinessSettingsDto() when $default != null:
return $default(_that.name,_that.phone,_that.address,_that.billPrefix,_that.receiptPrefix,_that.goodsReceiptPrefix,_that.billFormat,_that.billFooter,_that.wastageApprovalThreshold,_that.logoFileId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone,  String? address,  String? billPrefix,  String? receiptPrefix,  String? goodsReceiptPrefix,  UpdateBusinessSettingsDtoBillFormat? billFormat,  String? billFooter,  int? wastageApprovalThreshold,  String? logoFileId)  $default,) {final _that = this;
switch (_that) {
case _UpdateBusinessSettingsDto():
return $default(_that.name,_that.phone,_that.address,_that.billPrefix,_that.receiptPrefix,_that.goodsReceiptPrefix,_that.billFormat,_that.billFooter,_that.wastageApprovalThreshold,_that.logoFileId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone,  String? address,  String? billPrefix,  String? receiptPrefix,  String? goodsReceiptPrefix,  UpdateBusinessSettingsDtoBillFormat? billFormat,  String? billFooter,  int? wastageApprovalThreshold,  String? logoFileId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateBusinessSettingsDto() when $default != null:
return $default(_that.name,_that.phone,_that.address,_that.billPrefix,_that.receiptPrefix,_that.goodsReceiptPrefix,_that.billFormat,_that.billFooter,_that.wastageApprovalThreshold,_that.logoFileId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateBusinessSettingsDto implements UpdateBusinessSettingsDto {
  const _UpdateBusinessSettingsDto({this.name, this.phone, this.address, this.billPrefix, this.receiptPrefix, this.goodsReceiptPrefix, this.billFormat, this.billFooter, this.wastageApprovalThreshold, this.logoFileId});
  factory _UpdateBusinessSettingsDto.fromJson(Map<String, dynamic> json) => _$UpdateBusinessSettingsDtoFromJson(json);

@override final  String? name;
@override final  String? phone;
@override final  String? address;
@override final  String? billPrefix;
@override final  String? receiptPrefix;
@override final  String? goodsReceiptPrefix;
@override final  UpdateBusinessSettingsDtoBillFormat? billFormat;
@override final  String? billFooter;
/// Amount in paise (₹1 = 100)
@override final  int? wastageApprovalThreshold;
@override final  String? logoFileId;

/// Create a copy of UpdateBusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateBusinessSettingsDtoCopyWith<_UpdateBusinessSettingsDto> get copyWith => __$UpdateBusinessSettingsDtoCopyWithImpl<_UpdateBusinessSettingsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateBusinessSettingsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateBusinessSettingsDto&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.billPrefix, billPrefix) || other.billPrefix == billPrefix)&&(identical(other.receiptPrefix, receiptPrefix) || other.receiptPrefix == receiptPrefix)&&(identical(other.goodsReceiptPrefix, goodsReceiptPrefix) || other.goodsReceiptPrefix == goodsReceiptPrefix)&&(identical(other.billFormat, billFormat) || other.billFormat == billFormat)&&(identical(other.billFooter, billFooter) || other.billFooter == billFooter)&&(identical(other.wastageApprovalThreshold, wastageApprovalThreshold) || other.wastageApprovalThreshold == wastageApprovalThreshold)&&(identical(other.logoFileId, logoFileId) || other.logoFileId == logoFileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,address,billPrefix,receiptPrefix,goodsReceiptPrefix,billFormat,billFooter,wastageApprovalThreshold,logoFileId);
}

@override
String toString() {
    return 'UpdateBusinessSettingsDto(name: $name, phone: $phone, address: $address, billPrefix: $billPrefix, receiptPrefix: $receiptPrefix, goodsReceiptPrefix: $goodsReceiptPrefix, billFormat: $billFormat, billFooter: $billFooter, wastageApprovalThreshold: $wastageApprovalThreshold, logoFileId: $logoFileId)';
}


}

/// @nodoc
abstract mixin class _$UpdateBusinessSettingsDtoCopyWith<$Res> implements $UpdateBusinessSettingsDtoCopyWith<$Res> {
  factory _$UpdateBusinessSettingsDtoCopyWith(_UpdateBusinessSettingsDto value, $Res Function(_UpdateBusinessSettingsDto) _then) = __$UpdateBusinessSettingsDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone, String? address, String? billPrefix, String? receiptPrefix, String? goodsReceiptPrefix, UpdateBusinessSettingsDtoBillFormat? billFormat, String? billFooter, int? wastageApprovalThreshold, String? logoFileId
});




}
/// @nodoc
class __$UpdateBusinessSettingsDtoCopyWithImpl<$Res>
    implements _$UpdateBusinessSettingsDtoCopyWith<$Res> {
  __$UpdateBusinessSettingsDtoCopyWithImpl(this._self, this._then);

  final _UpdateBusinessSettingsDto _self;
  final $Res Function(_UpdateBusinessSettingsDto) _then;

/// Create a copy of UpdateBusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? address = freezed,Object? billPrefix = freezed,Object? receiptPrefix = freezed,Object? goodsReceiptPrefix = freezed,Object? billFormat = freezed,Object? billFooter = freezed,Object? wastageApprovalThreshold = freezed,Object? logoFileId = freezed,}) {
  return _then(_UpdateBusinessSettingsDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,billPrefix: freezed == billPrefix ? _self.billPrefix : billPrefix // ignore: cast_nullable_to_non_nullable
as String?,receiptPrefix: freezed == receiptPrefix ? _self.receiptPrefix : receiptPrefix // ignore: cast_nullable_to_non_nullable
as String?,goodsReceiptPrefix: freezed == goodsReceiptPrefix ? _self.goodsReceiptPrefix : goodsReceiptPrefix // ignore: cast_nullable_to_non_nullable
as String?,billFormat: freezed == billFormat ? _self.billFormat : billFormat // ignore: cast_nullable_to_non_nullable
as UpdateBusinessSettingsDtoBillFormat?,billFooter: freezed == billFooter ? _self.billFooter : billFooter // ignore: cast_nullable_to_non_nullable
as String?,wastageApprovalThreshold: freezed == wastageApprovalThreshold ? _self.wastageApprovalThreshold : wastageApprovalThreshold // ignore: cast_nullable_to_non_nullable
as int?,logoFileId: freezed == logoFileId ? _self.logoFileId : logoFileId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
