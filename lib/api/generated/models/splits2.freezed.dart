// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splits2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Splits2 {

 Method get method; String get accountId; int get amount; String? get reference;
/// Create a copy of Splits2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Splits2CopyWith<Splits2> get copyWith => _$Splits2CopyWithImpl<Splits2>(this as Splits2, _$identity);

  /// Serializes this Splits2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Splits2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Splits2&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reference, _this.reference) || other.reference == _this.reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Splits2;
  return Object.hash(runtimeType,_this.method,_this.accountId,_this.amount,_this.reference);
}

@override
String toString() {
  final _this = this as Splits2;
  return 'Splits2(method: ${_this.method}, accountId: ${_this.accountId}, amount: ${_this.amount}, reference: ${_this.reference})';
}


}

/// @nodoc
abstract mixin class $Splits2CopyWith<$Res>  {
  factory $Splits2CopyWith(Splits2 value, $Res Function(Splits2) _then) = _$Splits2CopyWithImpl;
@useResult
$Res call({
 Method method, String accountId, int amount, String? reference
});




}
/// @nodoc
class _$Splits2CopyWithImpl<$Res>
    implements $Splits2CopyWith<$Res> {
  _$Splits2CopyWithImpl(this._self, this._then);

  final Splits2 _self;
  final $Res Function(Splits2) _then;

/// Create a copy of Splits2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? accountId = null,Object? amount = null,Object? reference = freezed,}) {
  return _then(Splits2(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Splits2].
extension Splits2Patterns on Splits2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Splits2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Splits2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Splits2 value)  $default,){
final _that = this;
switch (_that) {
case _Splits2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Splits2 value)?  $default,){
final _that = this;
switch (_that) {
case _Splits2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Method method,  String accountId,  int amount,  String? reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Splits2() when $default != null:
return $default(_that.method,_that.accountId,_that.amount,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Method method,  String accountId,  int amount,  String? reference)  $default,) {final _that = this;
switch (_that) {
case _Splits2():
return $default(_that.method,_that.accountId,_that.amount,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Method method,  String accountId,  int amount,  String? reference)?  $default,) {final _that = this;
switch (_that) {
case _Splits2() when $default != null:
return $default(_that.method,_that.accountId,_that.amount,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Splits2 implements Splits2 {
  const _Splits2({required this.method, required this.accountId, required this.amount, this.reference});
  factory _Splits2.fromJson(Map<String, dynamic> json) => _$Splits2FromJson(json);

@override final  Method method;
@override final  String accountId;
@override final  int amount;
@override final  String? reference;

/// Create a copy of Splits2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Splits2CopyWith<_Splits2> get copyWith => __$Splits2CopyWithImpl<_Splits2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Splits2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Splits2&&(identical(other.method, method) || other.method == method)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,method,accountId,amount,reference);
}

@override
String toString() {
    return 'Splits2(method: $method, accountId: $accountId, amount: $amount, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$Splits2CopyWith<$Res> implements $Splits2CopyWith<$Res> {
  factory _$Splits2CopyWith(_Splits2 value, $Res Function(_Splits2) _then) = __$Splits2CopyWithImpl;
@override @useResult
$Res call({
 Method method, String accountId, int amount, String? reference
});




}
/// @nodoc
class __$Splits2CopyWithImpl<$Res>
    implements _$Splits2CopyWith<$Res> {
  __$Splits2CopyWithImpl(this._self, this._then);

  final _Splits2 _self;
  final $Res Function(_Splits2) _then;

/// Create a copy of Splits2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? accountId = null,Object? amount = null,Object? reference = freezed,}) {
  return _then(_Splits2(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
