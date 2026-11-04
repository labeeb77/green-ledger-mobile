// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines2 {

 String get productId; String? get gradeId; String? get packUnitId; dynamic get packCount; dynamic get gross; dynamic get tare; dynamic get net;/// Amount in paise (₹1 = 100)
 int? get rate;
/// Create a copy of Lines2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines2CopyWith<Lines2> get copyWith => _$Lines2CopyWithImpl<Lines2>(this as Lines2, _$identity);

  /// Serializes this Lines2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines2&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.gradeId, _this.gradeId) || other.gradeId == _this.gradeId)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&const DeepCollectionEquality().equals(other.packCount, _this.packCount)&&const DeepCollectionEquality().equals(other.gross, _this.gross)&&const DeepCollectionEquality().equals(other.tare, _this.tare)&&const DeepCollectionEquality().equals(other.net, _this.net)&&(identical(other.rate, _this.rate) || other.rate == _this.rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines2;
  return Object.hash(runtimeType,_this.productId,_this.gradeId,_this.packUnitId,const DeepCollectionEquality().hash(_this.packCount),const DeepCollectionEquality().hash(_this.gross),const DeepCollectionEquality().hash(_this.tare),const DeepCollectionEquality().hash(_this.net),_this.rate);
}

@override
String toString() {
  final _this = this as Lines2;
  return 'Lines2(productId: ${_this.productId}, gradeId: ${_this.gradeId}, packUnitId: ${_this.packUnitId}, packCount: ${_this.packCount}, gross: ${_this.gross}, tare: ${_this.tare}, net: ${_this.net}, rate: ${_this.rate})';
}


}

/// @nodoc
abstract mixin class $Lines2CopyWith<$Res>  {
  factory $Lines2CopyWith(Lines2 value, $Res Function(Lines2) _then) = _$Lines2CopyWithImpl;
@useResult
$Res call({
 String productId, String? gradeId, String? packUnitId, dynamic packCount, dynamic gross, dynamic tare, dynamic net, int? rate
});




}
/// @nodoc
class _$Lines2CopyWithImpl<$Res>
    implements $Lines2CopyWith<$Res> {
  _$Lines2CopyWithImpl(this._self, this._then);

  final Lines2 _self;
  final $Res Function(Lines2) _then;

/// Create a copy of Lines2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? gradeId = freezed,Object? packUnitId = freezed,Object? packCount = freezed,Object? gross = freezed,Object? tare = freezed,Object? net = freezed,Object? rate = freezed,}) {
  return _then(Lines2(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,gradeId: freezed == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String?,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,gross: freezed == gross ? _self.gross : gross // ignore: cast_nullable_to_non_nullable
as dynamic,tare: freezed == tare ? _self.tare : tare // ignore: cast_nullable_to_non_nullable
as dynamic,net: freezed == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as dynamic,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines2].
extension Lines2Patterns on Lines2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines2 value)  $default,){
final _that = this;
switch (_that) {
case _Lines2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines2 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String? gradeId,  String? packUnitId,  dynamic packCount,  dynamic gross,  dynamic tare,  dynamic net,  int? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines2() when $default != null:
return $default(_that.productId,_that.gradeId,_that.packUnitId,_that.packCount,_that.gross,_that.tare,_that.net,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String? gradeId,  String? packUnitId,  dynamic packCount,  dynamic gross,  dynamic tare,  dynamic net,  int? rate)  $default,) {final _that = this;
switch (_that) {
case _Lines2():
return $default(_that.productId,_that.gradeId,_that.packUnitId,_that.packCount,_that.gross,_that.tare,_that.net,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String? gradeId,  String? packUnitId,  dynamic packCount,  dynamic gross,  dynamic tare,  dynamic net,  int? rate)?  $default,) {final _that = this;
switch (_that) {
case _Lines2() when $default != null:
return $default(_that.productId,_that.gradeId,_that.packUnitId,_that.packCount,_that.gross,_that.tare,_that.net,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines2 implements Lines2 {
  const _Lines2({required this.productId, this.gradeId, this.packUnitId, this.packCount, this.gross, this.tare, this.net, this.rate});
  factory _Lines2.fromJson(Map<String, dynamic> json) => _$Lines2FromJson(json);

@override final  String productId;
@override final  String? gradeId;
@override final  String? packUnitId;
@override final  dynamic packCount;
@override final  dynamic gross;
@override final  dynamic tare;
@override final  dynamic net;
/// Amount in paise (₹1 = 100)
@override final  int? rate;

/// Create a copy of Lines2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines2CopyWith<_Lines2> get copyWith => __$Lines2CopyWithImpl<_Lines2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines2&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&const DeepCollectionEquality().equals(other.packCount, packCount)&&const DeepCollectionEquality().equals(other.gross, gross)&&const DeepCollectionEquality().equals(other.tare, tare)&&const DeepCollectionEquality().equals(other.net, net)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,gradeId,packUnitId,const DeepCollectionEquality().hash(packCount),const DeepCollectionEquality().hash(gross),const DeepCollectionEquality().hash(tare),const DeepCollectionEquality().hash(net),rate);
}

@override
String toString() {
    return 'Lines2(productId: $productId, gradeId: $gradeId, packUnitId: $packUnitId, packCount: $packCount, gross: $gross, tare: $tare, net: $net, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$Lines2CopyWith<$Res> implements $Lines2CopyWith<$Res> {
  factory _$Lines2CopyWith(_Lines2 value, $Res Function(_Lines2) _then) = __$Lines2CopyWithImpl;
@override @useResult
$Res call({
 String productId, String? gradeId, String? packUnitId, dynamic packCount, dynamic gross, dynamic tare, dynamic net, int? rate
});




}
/// @nodoc
class __$Lines2CopyWithImpl<$Res>
    implements _$Lines2CopyWith<$Res> {
  __$Lines2CopyWithImpl(this._self, this._then);

  final _Lines2 _self;
  final $Res Function(_Lines2) _then;

/// Create a copy of Lines2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? gradeId = freezed,Object? packUnitId = freezed,Object? packCount = freezed,Object? gross = freezed,Object? tare = freezed,Object? net = freezed,Object? rate = freezed,}) {
  return _then(_Lines2(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,gradeId: freezed == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String?,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as dynamic,gross: freezed == gross ? _self.gross : gross // ignore: cast_nullable_to_non_nullable
as dynamic,tare: freezed == tare ? _self.tare : tare // ignore: cast_nullable_to_non_nullable
as dynamic,net: freezed == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as dynamic,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
