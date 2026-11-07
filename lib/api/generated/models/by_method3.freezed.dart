// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'by_method3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ByMethod3 {

 int get cash; int get upi;@JsonKey(name: 'bank_transfer') int get bankTransfer; int get cheque;
/// Create a copy of ByMethod3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ByMethod3CopyWith<ByMethod3> get copyWith => _$ByMethod3CopyWithImpl<ByMethod3>(this as ByMethod3, _$identity);

  /// Serializes this ByMethod3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ByMethod3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ByMethod3&&(identical(other.cash, _this.cash) || other.cash == _this.cash)&&(identical(other.upi, _this.upi) || other.upi == _this.upi)&&(identical(other.bankTransfer, _this.bankTransfer) || other.bankTransfer == _this.bankTransfer)&&(identical(other.cheque, _this.cheque) || other.cheque == _this.cheque));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ByMethod3;
  return Object.hash(runtimeType,_this.cash,_this.upi,_this.bankTransfer,_this.cheque);
}

@override
String toString() {
  final _this = this as ByMethod3;
  return 'ByMethod3(cash: ${_this.cash}, upi: ${_this.upi}, bankTransfer: ${_this.bankTransfer}, cheque: ${_this.cheque})';
}


}

/// @nodoc
abstract mixin class $ByMethod3CopyWith<$Res>  {
  factory $ByMethod3CopyWith(ByMethod3 value, $Res Function(ByMethod3) _then) = _$ByMethod3CopyWithImpl;
@useResult
$Res call({
 int cash, int upi,@JsonKey(name: 'bank_transfer') int bankTransfer, int cheque
});




}
/// @nodoc
class _$ByMethod3CopyWithImpl<$Res>
    implements $ByMethod3CopyWith<$Res> {
  _$ByMethod3CopyWithImpl(this._self, this._then);

  final ByMethod3 _self;
  final $Res Function(ByMethod3) _then;

/// Create a copy of ByMethod3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cash = null,Object? upi = null,Object? bankTransfer = null,Object? cheque = null,}) {
  return _then(ByMethod3(
cash: null == cash ? _self.cash : cash // ignore: cast_nullable_to_non_nullable
as int,upi: null == upi ? _self.upi : upi // ignore: cast_nullable_to_non_nullable
as int,bankTransfer: null == bankTransfer ? _self.bankTransfer : bankTransfer // ignore: cast_nullable_to_non_nullable
as int,cheque: null == cheque ? _self.cheque : cheque // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ByMethod3].
extension ByMethod3Patterns on ByMethod3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ByMethod3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ByMethod3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ByMethod3 value)  $default,){
final _that = this;
switch (_that) {
case _ByMethod3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ByMethod3 value)?  $default,){
final _that = this;
switch (_that) {
case _ByMethod3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cash,  int upi, @JsonKey(name: 'bank_transfer')  int bankTransfer,  int cheque)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ByMethod3() when $default != null:
return $default(_that.cash,_that.upi,_that.bankTransfer,_that.cheque);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cash,  int upi, @JsonKey(name: 'bank_transfer')  int bankTransfer,  int cheque)  $default,) {final _that = this;
switch (_that) {
case _ByMethod3():
return $default(_that.cash,_that.upi,_that.bankTransfer,_that.cheque);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cash,  int upi, @JsonKey(name: 'bank_transfer')  int bankTransfer,  int cheque)?  $default,) {final _that = this;
switch (_that) {
case _ByMethod3() when $default != null:
return $default(_that.cash,_that.upi,_that.bankTransfer,_that.cheque);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ByMethod3 implements ByMethod3 {
  const _ByMethod3({required this.cash, required this.upi, @JsonKey(name: 'bank_transfer') required this.bankTransfer, required this.cheque});
  factory _ByMethod3.fromJson(Map<String, dynamic> json) => _$ByMethod3FromJson(json);

@override final  int cash;
@override final  int upi;
@override@JsonKey(name: 'bank_transfer') final  int bankTransfer;
@override final  int cheque;

/// Create a copy of ByMethod3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ByMethod3CopyWith<_ByMethod3> get copyWith => __$ByMethod3CopyWithImpl<_ByMethod3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ByMethod3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ByMethod3&&(identical(other.cash, cash) || other.cash == cash)&&(identical(other.upi, upi) || other.upi == upi)&&(identical(other.bankTransfer, bankTransfer) || other.bankTransfer == bankTransfer)&&(identical(other.cheque, cheque) || other.cheque == cheque));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,cash,upi,bankTransfer,cheque);
}

@override
String toString() {
    return 'ByMethod3(cash: $cash, upi: $upi, bankTransfer: $bankTransfer, cheque: $cheque)';
}


}

/// @nodoc
abstract mixin class _$ByMethod3CopyWith<$Res> implements $ByMethod3CopyWith<$Res> {
  factory _$ByMethod3CopyWith(_ByMethod3 value, $Res Function(_ByMethod3) _then) = __$ByMethod3CopyWithImpl;
@override @useResult
$Res call({
 int cash, int upi,@JsonKey(name: 'bank_transfer') int bankTransfer, int cheque
});




}
/// @nodoc
class __$ByMethod3CopyWithImpl<$Res>
    implements _$ByMethod3CopyWith<$Res> {
  __$ByMethod3CopyWithImpl(this._self, this._then);

  final _ByMethod3 _self;
  final $Res Function(_ByMethod3) _then;

/// Create a copy of ByMethod3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cash = null,Object? upi = null,Object? bankTransfer = null,Object? cheque = null,}) {
  return _then(_ByMethod3(
cash: null == cash ? _self.cash : cash // ignore: cast_nullable_to_non_nullable
as int,upi: null == upi ? _self.upi : upi // ignore: cast_nullable_to_non_nullable
as int,bankTransfer: null == bankTransfer ? _self.bankTransfer : bankTransfer // ignore: cast_nullable_to_non_nullable
as int,cheque: null == cheque ? _self.cheque : cheque // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
