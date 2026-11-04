// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Splits {

 Method get method; Account get account; int get amount; String? get reference;
/// Create a copy of Splits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplitsCopyWith<Splits> get copyWith => _$SplitsCopyWithImpl<Splits>(this as Splits, _$identity);

  /// Serializes this Splits to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Splits;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Splits&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reference, _this.reference) || other.reference == _this.reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Splits;
  return Object.hash(runtimeType,_this.method,_this.account,_this.amount,_this.reference);
}

@override
String toString() {
  final _this = this as Splits;
  return 'Splits(method: ${_this.method}, account: ${_this.account}, amount: ${_this.amount}, reference: ${_this.reference})';
}


}

/// @nodoc
abstract mixin class $SplitsCopyWith<$Res>  {
  factory $SplitsCopyWith(Splits value, $Res Function(Splits) _then) = _$SplitsCopyWithImpl;
@useResult
$Res call({
 Method method, Account account, int amount, String? reference
});


$AccountCopyWith<$Res> get account;

}
/// @nodoc
class _$SplitsCopyWithImpl<$Res>
    implements $SplitsCopyWith<$Res> {
  _$SplitsCopyWithImpl(this._self, this._then);

  final Splits _self;
  final $Res Function(Splits) _then;

/// Create a copy of Splits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? account = null,Object? amount = null,Object? reference = freezed,}) {
  return _then(Splits(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Splits
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res> get account {
  
  return $AccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [Splits].
extension SplitsPatterns on Splits {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Splits value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Splits() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Splits value)  $default,){
final _that = this;
switch (_that) {
case _Splits():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Splits value)?  $default,){
final _that = this;
switch (_that) {
case _Splits() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Method method,  Account account,  int amount,  String? reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Splits() when $default != null:
return $default(_that.method,_that.account,_that.amount,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Method method,  Account account,  int amount,  String? reference)  $default,) {final _that = this;
switch (_that) {
case _Splits():
return $default(_that.method,_that.account,_that.amount,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Method method,  Account account,  int amount,  String? reference)?  $default,) {final _that = this;
switch (_that) {
case _Splits() when $default != null:
return $default(_that.method,_that.account,_that.amount,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Splits implements Splits {
  const _Splits({required this.method, required this.account, required this.amount, required this.reference});
  factory _Splits.fromJson(Map<String, dynamic> json) => _$SplitsFromJson(json);

@override final  Method method;
@override final  Account account;
@override final  int amount;
@override final  String? reference;

/// Create a copy of Splits
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplitsCopyWith<_Splits> get copyWith => __$SplitsCopyWithImpl<_Splits>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SplitsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Splits&&(identical(other.method, method) || other.method == method)&&(identical(other.account, account) || other.account == account)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,method,account,amount,reference);
}

@override
String toString() {
    return 'Splits(method: $method, account: $account, amount: $amount, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$SplitsCopyWith<$Res> implements $SplitsCopyWith<$Res> {
  factory _$SplitsCopyWith(_Splits value, $Res Function(_Splits) _then) = __$SplitsCopyWithImpl;
@override @useResult
$Res call({
 Method method, Account account, int amount, String? reference
});


@override $AccountCopyWith<$Res> get account;

}
/// @nodoc
class __$SplitsCopyWithImpl<$Res>
    implements _$SplitsCopyWith<$Res> {
  __$SplitsCopyWithImpl(this._self, this._then);

  final _Splits _self;
  final $Res Function(_Splits) _then;

/// Create a copy of Splits
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? account = null,Object? amount = null,Object? reference = freezed,}) {
  return _then(_Splits(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Splits
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res> get account {
  
  return $AccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
