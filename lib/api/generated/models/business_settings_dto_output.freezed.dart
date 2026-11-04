// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_settings_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessSettingsDtoOutput {

 String get businessId; String get name; String? get phone; String? get address; String get billPrefix; String get receiptPrefix; String get goodsReceiptPrefix; BusinessSettingsDtoOutputBillFormat get billFormat; String? get billFooter; int get wastageApprovalThreshold; String? get logoFileId; String? get logoUrl;
/// Create a copy of BusinessSettingsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessSettingsDtoOutputCopyWith<BusinessSettingsDtoOutput> get copyWith => _$BusinessSettingsDtoOutputCopyWithImpl<BusinessSettingsDtoOutput>(this as BusinessSettingsDtoOutput, _$identity);

  /// Serializes this BusinessSettingsDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BusinessSettingsDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessSettingsDtoOutput&&(identical(other.businessId, _this.businessId) || other.businessId == _this.businessId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.billPrefix, _this.billPrefix) || other.billPrefix == _this.billPrefix)&&(identical(other.receiptPrefix, _this.receiptPrefix) || other.receiptPrefix == _this.receiptPrefix)&&(identical(other.goodsReceiptPrefix, _this.goodsReceiptPrefix) || other.goodsReceiptPrefix == _this.goodsReceiptPrefix)&&(identical(other.billFormat, _this.billFormat) || other.billFormat == _this.billFormat)&&(identical(other.billFooter, _this.billFooter) || other.billFooter == _this.billFooter)&&(identical(other.wastageApprovalThreshold, _this.wastageApprovalThreshold) || other.wastageApprovalThreshold == _this.wastageApprovalThreshold)&&(identical(other.logoFileId, _this.logoFileId) || other.logoFileId == _this.logoFileId)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BusinessSettingsDtoOutput;
  return Object.hash(runtimeType,_this.businessId,_this.name,_this.phone,_this.address,_this.billPrefix,_this.receiptPrefix,_this.goodsReceiptPrefix,_this.billFormat,_this.billFooter,_this.wastageApprovalThreshold,_this.logoFileId,_this.logoUrl);
}

@override
String toString() {
  final _this = this as BusinessSettingsDtoOutput;
  return 'BusinessSettingsDtoOutput(businessId: ${_this.businessId}, name: ${_this.name}, phone: ${_this.phone}, address: ${_this.address}, billPrefix: ${_this.billPrefix}, receiptPrefix: ${_this.receiptPrefix}, goodsReceiptPrefix: ${_this.goodsReceiptPrefix}, billFormat: ${_this.billFormat}, billFooter: ${_this.billFooter}, wastageApprovalThreshold: ${_this.wastageApprovalThreshold}, logoFileId: ${_this.logoFileId}, logoUrl: ${_this.logoUrl})';
}


}

/// @nodoc
abstract mixin class $BusinessSettingsDtoOutputCopyWith<$Res>  {
  factory $BusinessSettingsDtoOutputCopyWith(BusinessSettingsDtoOutput value, $Res Function(BusinessSettingsDtoOutput) _then) = _$BusinessSettingsDtoOutputCopyWithImpl;
@useResult
$Res call({
 String businessId, String name, String? phone, String? address, String billPrefix, String receiptPrefix, String goodsReceiptPrefix, BusinessSettingsDtoOutputBillFormat billFormat, String? billFooter, int wastageApprovalThreshold, String? logoFileId, String? logoUrl
});




}
/// @nodoc
class _$BusinessSettingsDtoOutputCopyWithImpl<$Res>
    implements $BusinessSettingsDtoOutputCopyWith<$Res> {
  _$BusinessSettingsDtoOutputCopyWithImpl(this._self, this._then);

  final BusinessSettingsDtoOutput _self;
  final $Res Function(BusinessSettingsDtoOutput) _then;

/// Create a copy of BusinessSettingsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessId = null,Object? name = null,Object? phone = freezed,Object? address = freezed,Object? billPrefix = null,Object? receiptPrefix = null,Object? goodsReceiptPrefix = null,Object? billFormat = null,Object? billFooter = freezed,Object? wastageApprovalThreshold = null,Object? logoFileId = freezed,Object? logoUrl = freezed,}) {
  return _then(BusinessSettingsDtoOutput(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,billPrefix: null == billPrefix ? _self.billPrefix : billPrefix // ignore: cast_nullable_to_non_nullable
as String,receiptPrefix: null == receiptPrefix ? _self.receiptPrefix : receiptPrefix // ignore: cast_nullable_to_non_nullable
as String,goodsReceiptPrefix: null == goodsReceiptPrefix ? _self.goodsReceiptPrefix : goodsReceiptPrefix // ignore: cast_nullable_to_non_nullable
as String,billFormat: null == billFormat ? _self.billFormat : billFormat // ignore: cast_nullable_to_non_nullable
as BusinessSettingsDtoOutputBillFormat,billFooter: freezed == billFooter ? _self.billFooter : billFooter // ignore: cast_nullable_to_non_nullable
as String?,wastageApprovalThreshold: null == wastageApprovalThreshold ? _self.wastageApprovalThreshold : wastageApprovalThreshold // ignore: cast_nullable_to_non_nullable
as int,logoFileId: freezed == logoFileId ? _self.logoFileId : logoFileId // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessSettingsDtoOutput].
extension BusinessSettingsDtoOutputPatterns on BusinessSettingsDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessSettingsDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessSettingsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessSettingsDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _BusinessSettingsDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessSettingsDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessSettingsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String businessId,  String name,  String? phone,  String? address,  String billPrefix,  String receiptPrefix,  String goodsReceiptPrefix,  BusinessSettingsDtoOutputBillFormat billFormat,  String? billFooter,  int wastageApprovalThreshold,  String? logoFileId,  String? logoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessSettingsDtoOutput() when $default != null:
return $default(_that.businessId,_that.name,_that.phone,_that.address,_that.billPrefix,_that.receiptPrefix,_that.goodsReceiptPrefix,_that.billFormat,_that.billFooter,_that.wastageApprovalThreshold,_that.logoFileId,_that.logoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String businessId,  String name,  String? phone,  String? address,  String billPrefix,  String receiptPrefix,  String goodsReceiptPrefix,  BusinessSettingsDtoOutputBillFormat billFormat,  String? billFooter,  int wastageApprovalThreshold,  String? logoFileId,  String? logoUrl)  $default,) {final _that = this;
switch (_that) {
case _BusinessSettingsDtoOutput():
return $default(_that.businessId,_that.name,_that.phone,_that.address,_that.billPrefix,_that.receiptPrefix,_that.goodsReceiptPrefix,_that.billFormat,_that.billFooter,_that.wastageApprovalThreshold,_that.logoFileId,_that.logoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String businessId,  String name,  String? phone,  String? address,  String billPrefix,  String receiptPrefix,  String goodsReceiptPrefix,  BusinessSettingsDtoOutputBillFormat billFormat,  String? billFooter,  int wastageApprovalThreshold,  String? logoFileId,  String? logoUrl)?  $default,) {final _that = this;
switch (_that) {
case _BusinessSettingsDtoOutput() when $default != null:
return $default(_that.businessId,_that.name,_that.phone,_that.address,_that.billPrefix,_that.receiptPrefix,_that.goodsReceiptPrefix,_that.billFormat,_that.billFooter,_that.wastageApprovalThreshold,_that.logoFileId,_that.logoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessSettingsDtoOutput implements BusinessSettingsDtoOutput {
  const _BusinessSettingsDtoOutput({required this.businessId, required this.name, required this.phone, required this.address, required this.billPrefix, required this.receiptPrefix, required this.goodsReceiptPrefix, required this.billFormat, required this.billFooter, required this.wastageApprovalThreshold, required this.logoFileId, required this.logoUrl});
  factory _BusinessSettingsDtoOutput.fromJson(Map<String, dynamic> json) => _$BusinessSettingsDtoOutputFromJson(json);

@override final  String businessId;
@override final  String name;
@override final  String? phone;
@override final  String? address;
@override final  String billPrefix;
@override final  String receiptPrefix;
@override final  String goodsReceiptPrefix;
@override final  BusinessSettingsDtoOutputBillFormat billFormat;
@override final  String? billFooter;
@override final  int wastageApprovalThreshold;
@override final  String? logoFileId;
@override final  String? logoUrl;

/// Create a copy of BusinessSettingsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessSettingsDtoOutputCopyWith<_BusinessSettingsDtoOutput> get copyWith => __$BusinessSettingsDtoOutputCopyWithImpl<_BusinessSettingsDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessSettingsDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessSettingsDtoOutput&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.billPrefix, billPrefix) || other.billPrefix == billPrefix)&&(identical(other.receiptPrefix, receiptPrefix) || other.receiptPrefix == receiptPrefix)&&(identical(other.goodsReceiptPrefix, goodsReceiptPrefix) || other.goodsReceiptPrefix == goodsReceiptPrefix)&&(identical(other.billFormat, billFormat) || other.billFormat == billFormat)&&(identical(other.billFooter, billFooter) || other.billFooter == billFooter)&&(identical(other.wastageApprovalThreshold, wastageApprovalThreshold) || other.wastageApprovalThreshold == wastageApprovalThreshold)&&(identical(other.logoFileId, logoFileId) || other.logoFileId == logoFileId)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,businessId,name,phone,address,billPrefix,receiptPrefix,goodsReceiptPrefix,billFormat,billFooter,wastageApprovalThreshold,logoFileId,logoUrl);
}

@override
String toString() {
    return 'BusinessSettingsDtoOutput(businessId: $businessId, name: $name, phone: $phone, address: $address, billPrefix: $billPrefix, receiptPrefix: $receiptPrefix, goodsReceiptPrefix: $goodsReceiptPrefix, billFormat: $billFormat, billFooter: $billFooter, wastageApprovalThreshold: $wastageApprovalThreshold, logoFileId: $logoFileId, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$BusinessSettingsDtoOutputCopyWith<$Res> implements $BusinessSettingsDtoOutputCopyWith<$Res> {
  factory _$BusinessSettingsDtoOutputCopyWith(_BusinessSettingsDtoOutput value, $Res Function(_BusinessSettingsDtoOutput) _then) = __$BusinessSettingsDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String businessId, String name, String? phone, String? address, String billPrefix, String receiptPrefix, String goodsReceiptPrefix, BusinessSettingsDtoOutputBillFormat billFormat, String? billFooter, int wastageApprovalThreshold, String? logoFileId, String? logoUrl
});




}
/// @nodoc
class __$BusinessSettingsDtoOutputCopyWithImpl<$Res>
    implements _$BusinessSettingsDtoOutputCopyWith<$Res> {
  __$BusinessSettingsDtoOutputCopyWithImpl(this._self, this._then);

  final _BusinessSettingsDtoOutput _self;
  final $Res Function(_BusinessSettingsDtoOutput) _then;

/// Create a copy of BusinessSettingsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessId = null,Object? name = null,Object? phone = freezed,Object? address = freezed,Object? billPrefix = null,Object? receiptPrefix = null,Object? goodsReceiptPrefix = null,Object? billFormat = null,Object? billFooter = freezed,Object? wastageApprovalThreshold = null,Object? logoFileId = freezed,Object? logoUrl = freezed,}) {
  return _then(_BusinessSettingsDtoOutput(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,billPrefix: null == billPrefix ? _self.billPrefix : billPrefix // ignore: cast_nullable_to_non_nullable
as String,receiptPrefix: null == receiptPrefix ? _self.receiptPrefix : receiptPrefix // ignore: cast_nullable_to_non_nullable
as String,goodsReceiptPrefix: null == goodsReceiptPrefix ? _self.goodsReceiptPrefix : goodsReceiptPrefix // ignore: cast_nullable_to_non_nullable
as String,billFormat: null == billFormat ? _self.billFormat : billFormat // ignore: cast_nullable_to_non_nullable
as BusinessSettingsDtoOutputBillFormat,billFooter: freezed == billFooter ? _self.billFooter : billFooter // ignore: cast_nullable_to_non_nullable
as String?,wastageApprovalThreshold: null == wastageApprovalThreshold ? _self.wastageApprovalThreshold : wastageApprovalThreshold // ignore: cast_nullable_to_non_nullable
as int,logoFileId: freezed == logoFileId ? _self.logoFileId : logoFileId // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
