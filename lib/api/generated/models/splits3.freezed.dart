// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splits3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Splits3 {

 String get id; Method get method; Account2 get account; int get amount; String? get reference; String? get screenshotUrl; bool get verified; Cheque? get cheque;
/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Splits3CopyWith<Splits3> get copyWith => _$Splits3CopyWithImpl<Splits3>(this as Splits3, _$identity);

  /// Serializes this Splits3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Splits3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Splits3&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.screenshotUrl, _this.screenshotUrl) || other.screenshotUrl == _this.screenshotUrl)&&(identical(other.verified, _this.verified) || other.verified == _this.verified)&&(identical(other.cheque, _this.cheque) || other.cheque == _this.cheque));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Splits3;
  return Object.hash(runtimeType,_this.id,_this.method,_this.account,_this.amount,_this.reference,_this.screenshotUrl,_this.verified,_this.cheque);
}

@override
String toString() {
  final _this = this as Splits3;
  return 'Splits3(id: ${_this.id}, method: ${_this.method}, account: ${_this.account}, amount: ${_this.amount}, reference: ${_this.reference}, screenshotUrl: ${_this.screenshotUrl}, verified: ${_this.verified}, cheque: ${_this.cheque})';
}


}

/// @nodoc
abstract mixin class $Splits3CopyWith<$Res>  {
  factory $Splits3CopyWith(Splits3 value, $Res Function(Splits3) _then) = _$Splits3CopyWithImpl;
@useResult
$Res call({
 String id, Method method, Account2 account, int amount, String? reference, String? screenshotUrl, bool verified, Cheque? cheque
});


$Account2CopyWith<$Res> get account;$ChequeCopyWith<$Res>? get cheque;

}
/// @nodoc
class _$Splits3CopyWithImpl<$Res>
    implements $Splits3CopyWith<$Res> {
  _$Splits3CopyWithImpl(this._self, this._then);

  final Splits3 _self;
  final $Res Function(Splits3) _then;

/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? method = null,Object? account = null,Object? amount = null,Object? reference = freezed,Object? screenshotUrl = freezed,Object? verified = null,Object? cheque = freezed,}) {
  return _then(Splits3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account2,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,screenshotUrl: freezed == screenshotUrl ? _self.screenshotUrl : screenshotUrl // ignore: cast_nullable_to_non_nullable
as String?,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,cheque: freezed == cheque ? _self.cheque : cheque // ignore: cast_nullable_to_non_nullable
as Cheque?,
  ));
}
/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Account2CopyWith<$Res> get account {
  
  return $Account2CopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChequeCopyWith<$Res>? get cheque {
    if (_self.cheque == null) {
    return null;
  }

  return $ChequeCopyWith<$Res>(_self.cheque!, (value) {
    return _then(_self.copyWith(cheque: value));
  });
}
}


/// Adds pattern-matching-related methods to [Splits3].
extension Splits3Patterns on Splits3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Splits3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Splits3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Splits3 value)  $default,){
final _that = this;
switch (_that) {
case _Splits3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Splits3 value)?  $default,){
final _that = this;
switch (_that) {
case _Splits3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Method method,  Account2 account,  int amount,  String? reference,  String? screenshotUrl,  bool verified,  Cheque? cheque)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Splits3() when $default != null:
return $default(_that.id,_that.method,_that.account,_that.amount,_that.reference,_that.screenshotUrl,_that.verified,_that.cheque);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Method method,  Account2 account,  int amount,  String? reference,  String? screenshotUrl,  bool verified,  Cheque? cheque)  $default,) {final _that = this;
switch (_that) {
case _Splits3():
return $default(_that.id,_that.method,_that.account,_that.amount,_that.reference,_that.screenshotUrl,_that.verified,_that.cheque);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Method method,  Account2 account,  int amount,  String? reference,  String? screenshotUrl,  bool verified,  Cheque? cheque)?  $default,) {final _that = this;
switch (_that) {
case _Splits3() when $default != null:
return $default(_that.id,_that.method,_that.account,_that.amount,_that.reference,_that.screenshotUrl,_that.verified,_that.cheque);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Splits3 implements Splits3 {
  const _Splits3({required this.id, required this.method, required this.account, required this.amount, required this.reference, required this.screenshotUrl, required this.verified, required this.cheque});
  factory _Splits3.fromJson(Map<String, dynamic> json) => _$Splits3FromJson(json);

@override final  String id;
@override final  Method method;
@override final  Account2 account;
@override final  int amount;
@override final  String? reference;
@override final  String? screenshotUrl;
@override final  bool verified;
@override final  Cheque? cheque;

/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Splits3CopyWith<_Splits3> get copyWith => __$Splits3CopyWithImpl<_Splits3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Splits3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Splits3&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.account, account) || other.account == account)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.screenshotUrl, screenshotUrl) || other.screenshotUrl == screenshotUrl)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.cheque, cheque) || other.cheque == cheque));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,method,account,amount,reference,screenshotUrl,verified,cheque);
}

@override
String toString() {
    return 'Splits3(id: $id, method: $method, account: $account, amount: $amount, reference: $reference, screenshotUrl: $screenshotUrl, verified: $verified, cheque: $cheque)';
}


}

/// @nodoc
abstract mixin class _$Splits3CopyWith<$Res> implements $Splits3CopyWith<$Res> {
  factory _$Splits3CopyWith(_Splits3 value, $Res Function(_Splits3) _then) = __$Splits3CopyWithImpl;
@override @useResult
$Res call({
 String id, Method method, Account2 account, int amount, String? reference, String? screenshotUrl, bool verified, Cheque? cheque
});


@override $Account2CopyWith<$Res> get account;@override $ChequeCopyWith<$Res>? get cheque;

}
/// @nodoc
class __$Splits3CopyWithImpl<$Res>
    implements _$Splits3CopyWith<$Res> {
  __$Splits3CopyWithImpl(this._self, this._then);

  final _Splits3 _self;
  final $Res Function(_Splits3) _then;

/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? method = null,Object? account = null,Object? amount = null,Object? reference = freezed,Object? screenshotUrl = freezed,Object? verified = null,Object? cheque = freezed,}) {
  return _then(_Splits3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account2,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,screenshotUrl: freezed == screenshotUrl ? _self.screenshotUrl : screenshotUrl // ignore: cast_nullable_to_non_nullable
as String?,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,cheque: freezed == cheque ? _self.cheque : cheque // ignore: cast_nullable_to_non_nullable
as Cheque?,
  ));
}

/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Account2CopyWith<$Res> get account {
  
  return $Account2CopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of Splits3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChequeCopyWith<$Res>? get cheque {
    if (_self.cheque == null) {
    return null;
  }

  return $ChequeCopyWith<$Res>(_self.cheque!, (value) {
    return _then(_self.copyWith(cheque: value));
  });
}
}

// dart format on
