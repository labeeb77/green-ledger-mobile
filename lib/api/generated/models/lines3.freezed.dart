// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines3 {

 String get goodsReceiptLineId;/// Amount in paise (₹1 = 100)
 int? get rate;
/// Create a copy of Lines3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines3CopyWith<Lines3> get copyWith => _$Lines3CopyWithImpl<Lines3>(this as Lines3, _$identity);

  /// Serializes this Lines3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines3&&(identical(other.goodsReceiptLineId, _this.goodsReceiptLineId) || other.goodsReceiptLineId == _this.goodsReceiptLineId)&&(identical(other.rate, _this.rate) || other.rate == _this.rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines3;
  return Object.hash(runtimeType,_this.goodsReceiptLineId,_this.rate);
}

@override
String toString() {
  final _this = this as Lines3;
  return 'Lines3(goodsReceiptLineId: ${_this.goodsReceiptLineId}, rate: ${_this.rate})';
}


}

/// @nodoc
abstract mixin class $Lines3CopyWith<$Res>  {
  factory $Lines3CopyWith(Lines3 value, $Res Function(Lines3) _then) = _$Lines3CopyWithImpl;
@useResult
$Res call({
 String goodsReceiptLineId, int? rate
});




}
/// @nodoc
class _$Lines3CopyWithImpl<$Res>
    implements $Lines3CopyWith<$Res> {
  _$Lines3CopyWithImpl(this._self, this._then);

  final Lines3 _self;
  final $Res Function(Lines3) _then;

/// Create a copy of Lines3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goodsReceiptLineId = null,Object? rate = freezed,}) {
  return _then(Lines3(
goodsReceiptLineId: null == goodsReceiptLineId ? _self.goodsReceiptLineId : goodsReceiptLineId // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines3].
extension Lines3Patterns on Lines3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines3 value)  $default,){
final _that = this;
switch (_that) {
case _Lines3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines3 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String goodsReceiptLineId,  int? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines3() when $default != null:
return $default(_that.goodsReceiptLineId,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String goodsReceiptLineId,  int? rate)  $default,) {final _that = this;
switch (_that) {
case _Lines3():
return $default(_that.goodsReceiptLineId,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String goodsReceiptLineId,  int? rate)?  $default,) {final _that = this;
switch (_that) {
case _Lines3() when $default != null:
return $default(_that.goodsReceiptLineId,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines3 implements Lines3 {
  const _Lines3({required this.goodsReceiptLineId, this.rate});
  factory _Lines3.fromJson(Map<String, dynamic> json) => _$Lines3FromJson(json);

@override final  String goodsReceiptLineId;
/// Amount in paise (₹1 = 100)
@override final  int? rate;

/// Create a copy of Lines3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines3CopyWith<_Lines3> get copyWith => __$Lines3CopyWithImpl<_Lines3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines3&&(identical(other.goodsReceiptLineId, goodsReceiptLineId) || other.goodsReceiptLineId == goodsReceiptLineId)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,goodsReceiptLineId,rate);
}

@override
String toString() {
    return 'Lines3(goodsReceiptLineId: $goodsReceiptLineId, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$Lines3CopyWith<$Res> implements $Lines3CopyWith<$Res> {
  factory _$Lines3CopyWith(_Lines3 value, $Res Function(_Lines3) _then) = __$Lines3CopyWithImpl;
@override @useResult
$Res call({
 String goodsReceiptLineId, int? rate
});




}
/// @nodoc
class __$Lines3CopyWithImpl<$Res>
    implements _$Lines3CopyWith<$Res> {
  __$Lines3CopyWithImpl(this._self, this._then);

  final _Lines3 _self;
  final $Res Function(_Lines3) _then;

/// Create a copy of Lines3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goodsReceiptLineId = null,Object? rate = freezed,}) {
  return _then(_Lines3(
goodsReceiptLineId: null == goodsReceiptLineId ? _self.goodsReceiptLineId : goodsReceiptLineId // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
