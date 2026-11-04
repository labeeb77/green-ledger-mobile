// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_now.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayNow {

 Method get method; int get amount; String? get accountId; String? get reference; String? get screenshotFileId; String? get chequeNo; String? get chequeBank; DateTime? get chequeDate;
/// Create a copy of PayNow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayNowCopyWith<PayNow> get copyWith => _$PayNowCopyWithImpl<PayNow>(this as PayNow, _$identity);

  /// Serializes this PayNow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayNow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayNow&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.screenshotFileId, _this.screenshotFileId) || other.screenshotFileId == _this.screenshotFileId)&&(identical(other.chequeNo, _this.chequeNo) || other.chequeNo == _this.chequeNo)&&(identical(other.chequeBank, _this.chequeBank) || other.chequeBank == _this.chequeBank)&&(identical(other.chequeDate, _this.chequeDate) || other.chequeDate == _this.chequeDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayNow;
  return Object.hash(runtimeType,_this.method,_this.amount,_this.accountId,_this.reference,_this.screenshotFileId,_this.chequeNo,_this.chequeBank,_this.chequeDate);
}

@override
String toString() {
  final _this = this as PayNow;
  return 'PayNow(method: ${_this.method}, amount: ${_this.amount}, accountId: ${_this.accountId}, reference: ${_this.reference}, screenshotFileId: ${_this.screenshotFileId}, chequeNo: ${_this.chequeNo}, chequeBank: ${_this.chequeBank}, chequeDate: ${_this.chequeDate})';
}


}

/// @nodoc
abstract mixin class $PayNowCopyWith<$Res>  {
  factory $PayNowCopyWith(PayNow value, $Res Function(PayNow) _then) = _$PayNowCopyWithImpl;
@useResult
$Res call({
 Method method, int amount, String? accountId, String? reference, String? screenshotFileId, String? chequeNo, String? chequeBank, DateTime? chequeDate
});




}
/// @nodoc
class _$PayNowCopyWithImpl<$Res>
    implements $PayNowCopyWith<$Res> {
  _$PayNowCopyWithImpl(this._self, this._then);

  final PayNow _self;
  final $Res Function(PayNow) _then;

/// Create a copy of PayNow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? amount = null,Object? accountId = freezed,Object? reference = freezed,Object? screenshotFileId = freezed,Object? chequeNo = freezed,Object? chequeBank = freezed,Object? chequeDate = freezed,}) {
  return _then(PayNow(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,screenshotFileId: freezed == screenshotFileId ? _self.screenshotFileId : screenshotFileId // ignore: cast_nullable_to_non_nullable
as String?,chequeNo: freezed == chequeNo ? _self.chequeNo : chequeNo // ignore: cast_nullable_to_non_nullable
as String?,chequeBank: freezed == chequeBank ? _self.chequeBank : chequeBank // ignore: cast_nullable_to_non_nullable
as String?,chequeDate: freezed == chequeDate ? _self.chequeDate : chequeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayNow].
extension PayNowPatterns on PayNow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayNow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayNow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayNow value)  $default,){
final _that = this;
switch (_that) {
case _PayNow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayNow value)?  $default,){
final _that = this;
switch (_that) {
case _PayNow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Method method,  int amount,  String? accountId,  String? reference,  String? screenshotFileId,  String? chequeNo,  String? chequeBank,  DateTime? chequeDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayNow() when $default != null:
return $default(_that.method,_that.amount,_that.accountId,_that.reference,_that.screenshotFileId,_that.chequeNo,_that.chequeBank,_that.chequeDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Method method,  int amount,  String? accountId,  String? reference,  String? screenshotFileId,  String? chequeNo,  String? chequeBank,  DateTime? chequeDate)  $default,) {final _that = this;
switch (_that) {
case _PayNow():
return $default(_that.method,_that.amount,_that.accountId,_that.reference,_that.screenshotFileId,_that.chequeNo,_that.chequeBank,_that.chequeDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Method method,  int amount,  String? accountId,  String? reference,  String? screenshotFileId,  String? chequeNo,  String? chequeBank,  DateTime? chequeDate)?  $default,) {final _that = this;
switch (_that) {
case _PayNow() when $default != null:
return $default(_that.method,_that.amount,_that.accountId,_that.reference,_that.screenshotFileId,_that.chequeNo,_that.chequeBank,_that.chequeDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayNow implements PayNow {
  const _PayNow({required this.method, required this.amount, this.accountId, this.reference, this.screenshotFileId, this.chequeNo, this.chequeBank, this.chequeDate});
  factory _PayNow.fromJson(Map<String, dynamic> json) => _$PayNowFromJson(json);

@override final  Method method;
@override final  int amount;
@override final  String? accountId;
@override final  String? reference;
@override final  String? screenshotFileId;
@override final  String? chequeNo;
@override final  String? chequeBank;
@override final  DateTime? chequeDate;

/// Create a copy of PayNow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayNowCopyWith<_PayNow> get copyWith => __$PayNowCopyWithImpl<_PayNow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayNowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayNow&&(identical(other.method, method) || other.method == method)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.screenshotFileId, screenshotFileId) || other.screenshotFileId == screenshotFileId)&&(identical(other.chequeNo, chequeNo) || other.chequeNo == chequeNo)&&(identical(other.chequeBank, chequeBank) || other.chequeBank == chequeBank)&&(identical(other.chequeDate, chequeDate) || other.chequeDate == chequeDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,method,amount,accountId,reference,screenshotFileId,chequeNo,chequeBank,chequeDate);
}

@override
String toString() {
    return 'PayNow(method: $method, amount: $amount, accountId: $accountId, reference: $reference, screenshotFileId: $screenshotFileId, chequeNo: $chequeNo, chequeBank: $chequeBank, chequeDate: $chequeDate)';
}


}

/// @nodoc
abstract mixin class _$PayNowCopyWith<$Res> implements $PayNowCopyWith<$Res> {
  factory _$PayNowCopyWith(_PayNow value, $Res Function(_PayNow) _then) = __$PayNowCopyWithImpl;
@override @useResult
$Res call({
 Method method, int amount, String? accountId, String? reference, String? screenshotFileId, String? chequeNo, String? chequeBank, DateTime? chequeDate
});




}
/// @nodoc
class __$PayNowCopyWithImpl<$Res>
    implements _$PayNowCopyWith<$Res> {
  __$PayNowCopyWithImpl(this._self, this._then);

  final _PayNow _self;
  final $Res Function(_PayNow) _then;

/// Create a copy of PayNow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? amount = null,Object? accountId = freezed,Object? reference = freezed,Object? screenshotFileId = freezed,Object? chequeNo = freezed,Object? chequeBank = freezed,Object? chequeDate = freezed,}) {
  return _then(_PayNow(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,screenshotFileId: freezed == screenshotFileId ? _self.screenshotFileId : screenshotFileId // ignore: cast_nullable_to_non_nullable
as String?,chequeNo: freezed == chequeNo ? _self.chequeNo : chequeNo // ignore: cast_nullable_to_non_nullable
as String?,chequeBank: freezed == chequeBank ? _self.chequeBank : chequeBank // ignore: cast_nullable_to_non_nullable
as String?,chequeDate: freezed == chequeDate ? _self.chequeDate : chequeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
