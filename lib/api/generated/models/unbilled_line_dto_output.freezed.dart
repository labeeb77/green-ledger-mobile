// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unbilled_line_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnbilledLineDtoOutput {

 String get goodsReceiptLineId; String get receiptId; String get receiptNumber; String get receiptDate; Product2 get product; Grade2? get grade; PackUnit2? get packUnit; String? get packCount; String get net; int? get rate;
/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnbilledLineDtoOutputCopyWith<UnbilledLineDtoOutput> get copyWith => _$UnbilledLineDtoOutputCopyWithImpl<UnbilledLineDtoOutput>(this as UnbilledLineDtoOutput, _$identity);

  /// Serializes this UnbilledLineDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UnbilledLineDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnbilledLineDtoOutput&&(identical(other.goodsReceiptLineId, _this.goodsReceiptLineId) || other.goodsReceiptLineId == _this.goodsReceiptLineId)&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNumber, _this.receiptNumber) || other.receiptNumber == _this.receiptNumber)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.net, _this.net) || other.net == _this.net)&&(identical(other.rate, _this.rate) || other.rate == _this.rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UnbilledLineDtoOutput;
  return Object.hash(runtimeType,_this.goodsReceiptLineId,_this.receiptId,_this.receiptNumber,_this.receiptDate,_this.product,_this.grade,_this.packUnit,_this.packCount,_this.net,_this.rate);
}

@override
String toString() {
  final _this = this as UnbilledLineDtoOutput;
  return 'UnbilledLineDtoOutput(goodsReceiptLineId: ${_this.goodsReceiptLineId}, receiptId: ${_this.receiptId}, receiptNumber: ${_this.receiptNumber}, receiptDate: ${_this.receiptDate}, product: ${_this.product}, grade: ${_this.grade}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, net: ${_this.net}, rate: ${_this.rate})';
}


}

/// @nodoc
abstract mixin class $UnbilledLineDtoOutputCopyWith<$Res>  {
  factory $UnbilledLineDtoOutputCopyWith(UnbilledLineDtoOutput value, $Res Function(UnbilledLineDtoOutput) _then) = _$UnbilledLineDtoOutputCopyWithImpl;
@useResult
$Res call({
 String goodsReceiptLineId, String receiptId, String receiptNumber, String receiptDate, Product2 product, Grade2? grade, PackUnit2? packUnit, String? packCount, String net, int? rate
});


$Product2CopyWith<$Res> get product;$Grade2CopyWith<$Res>? get grade;$PackUnit2CopyWith<$Res>? get packUnit;

}
/// @nodoc
class _$UnbilledLineDtoOutputCopyWithImpl<$Res>
    implements $UnbilledLineDtoOutputCopyWith<$Res> {
  _$UnbilledLineDtoOutputCopyWithImpl(this._self, this._then);

  final UnbilledLineDtoOutput _self;
  final $Res Function(UnbilledLineDtoOutput) _then;

/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goodsReceiptLineId = null,Object? receiptId = null,Object? receiptNumber = null,Object? receiptDate = null,Object? product = null,Object? grade = freezed,Object? packUnit = freezed,Object? packCount = freezed,Object? net = null,Object? rate = freezed,}) {
  return _then(UnbilledLineDtoOutput(
goodsReceiptLineId: null == goodsReceiptLineId ? _self.goodsReceiptLineId : goodsReceiptLineId // ignore: cast_nullable_to_non_nullable
as String,receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product2,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Grade2?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit2?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,net: null == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product2CopyWith<$Res> get product {
  
  return $Product2CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Grade2CopyWith<$Res>? get grade {
    if (_self.grade == null) {
    return null;
  }

  return $Grade2CopyWith<$Res>(_self.grade!, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit2CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit2CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [UnbilledLineDtoOutput].
extension UnbilledLineDtoOutputPatterns on UnbilledLineDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnbilledLineDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnbilledLineDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnbilledLineDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _UnbilledLineDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnbilledLineDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _UnbilledLineDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String goodsReceiptLineId,  String receiptId,  String receiptNumber,  String receiptDate,  Product2 product,  Grade2? grade,  PackUnit2? packUnit,  String? packCount,  String net,  int? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnbilledLineDtoOutput() when $default != null:
return $default(_that.goodsReceiptLineId,_that.receiptId,_that.receiptNumber,_that.receiptDate,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.net,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String goodsReceiptLineId,  String receiptId,  String receiptNumber,  String receiptDate,  Product2 product,  Grade2? grade,  PackUnit2? packUnit,  String? packCount,  String net,  int? rate)  $default,) {final _that = this;
switch (_that) {
case _UnbilledLineDtoOutput():
return $default(_that.goodsReceiptLineId,_that.receiptId,_that.receiptNumber,_that.receiptDate,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.net,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String goodsReceiptLineId,  String receiptId,  String receiptNumber,  String receiptDate,  Product2 product,  Grade2? grade,  PackUnit2? packUnit,  String? packCount,  String net,  int? rate)?  $default,) {final _that = this;
switch (_that) {
case _UnbilledLineDtoOutput() when $default != null:
return $default(_that.goodsReceiptLineId,_that.receiptId,_that.receiptNumber,_that.receiptDate,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.net,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnbilledLineDtoOutput implements UnbilledLineDtoOutput {
  const _UnbilledLineDtoOutput({required this.goodsReceiptLineId, required this.receiptId, required this.receiptNumber, required this.receiptDate, required this.product, required this.grade, required this.packUnit, required this.packCount, required this.net, required this.rate});
  factory _UnbilledLineDtoOutput.fromJson(Map<String, dynamic> json) => _$UnbilledLineDtoOutputFromJson(json);

@override final  String goodsReceiptLineId;
@override final  String receiptId;
@override final  String receiptNumber;
@override final  String receiptDate;
@override final  Product2 product;
@override final  Grade2? grade;
@override final  PackUnit2? packUnit;
@override final  String? packCount;
@override final  String net;
@override final  int? rate;

/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnbilledLineDtoOutputCopyWith<_UnbilledLineDtoOutput> get copyWith => __$UnbilledLineDtoOutputCopyWithImpl<_UnbilledLineDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnbilledLineDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnbilledLineDtoOutput&&(identical(other.goodsReceiptLineId, goodsReceiptLineId) || other.goodsReceiptLineId == goodsReceiptLineId)&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.product, product) || other.product == product)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.net, net) || other.net == net)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,goodsReceiptLineId,receiptId,receiptNumber,receiptDate,product,grade,packUnit,packCount,net,rate);
}

@override
String toString() {
    return 'UnbilledLineDtoOutput(goodsReceiptLineId: $goodsReceiptLineId, receiptId: $receiptId, receiptNumber: $receiptNumber, receiptDate: $receiptDate, product: $product, grade: $grade, packUnit: $packUnit, packCount: $packCount, net: $net, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$UnbilledLineDtoOutputCopyWith<$Res> implements $UnbilledLineDtoOutputCopyWith<$Res> {
  factory _$UnbilledLineDtoOutputCopyWith(_UnbilledLineDtoOutput value, $Res Function(_UnbilledLineDtoOutput) _then) = __$UnbilledLineDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String goodsReceiptLineId, String receiptId, String receiptNumber, String receiptDate, Product2 product, Grade2? grade, PackUnit2? packUnit, String? packCount, String net, int? rate
});


@override $Product2CopyWith<$Res> get product;@override $Grade2CopyWith<$Res>? get grade;@override $PackUnit2CopyWith<$Res>? get packUnit;

}
/// @nodoc
class __$UnbilledLineDtoOutputCopyWithImpl<$Res>
    implements _$UnbilledLineDtoOutputCopyWith<$Res> {
  __$UnbilledLineDtoOutputCopyWithImpl(this._self, this._then);

  final _UnbilledLineDtoOutput _self;
  final $Res Function(_UnbilledLineDtoOutput) _then;

/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goodsReceiptLineId = null,Object? receiptId = null,Object? receiptNumber = null,Object? receiptDate = null,Object? product = null,Object? grade = freezed,Object? packUnit = freezed,Object? packCount = freezed,Object? net = null,Object? rate = freezed,}) {
  return _then(_UnbilledLineDtoOutput(
goodsReceiptLineId: null == goodsReceiptLineId ? _self.goodsReceiptLineId : goodsReceiptLineId // ignore: cast_nullable_to_non_nullable
as String,receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product2,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Grade2?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit2?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,net: null == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product2CopyWith<$Res> get product {
  
  return $Product2CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Grade2CopyWith<$Res>? get grade {
    if (_self.grade == null) {
    return null;
  }

  return $Grade2CopyWith<$Res>(_self.grade!, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of UnbilledLineDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnit2CopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnit2CopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
