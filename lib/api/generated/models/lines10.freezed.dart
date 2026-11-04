// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines10.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines10 {

 Product6 get product; String get snapshotQuantity; String? get countedQuantity; String get systemQuantity; String? get difference;
/// Create a copy of Lines10
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines10CopyWith<Lines10> get copyWith => _$Lines10CopyWithImpl<Lines10>(this as Lines10, _$identity);

  /// Serializes this Lines10 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines10;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines10&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.snapshotQuantity, _this.snapshotQuantity) || other.snapshotQuantity == _this.snapshotQuantity)&&(identical(other.countedQuantity, _this.countedQuantity) || other.countedQuantity == _this.countedQuantity)&&(identical(other.systemQuantity, _this.systemQuantity) || other.systemQuantity == _this.systemQuantity)&&(identical(other.difference, _this.difference) || other.difference == _this.difference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines10;
  return Object.hash(runtimeType,_this.product,_this.snapshotQuantity,_this.countedQuantity,_this.systemQuantity,_this.difference);
}

@override
String toString() {
  final _this = this as Lines10;
  return 'Lines10(product: ${_this.product}, snapshotQuantity: ${_this.snapshotQuantity}, countedQuantity: ${_this.countedQuantity}, systemQuantity: ${_this.systemQuantity}, difference: ${_this.difference})';
}


}

/// @nodoc
abstract mixin class $Lines10CopyWith<$Res>  {
  factory $Lines10CopyWith(Lines10 value, $Res Function(Lines10) _then) = _$Lines10CopyWithImpl;
@useResult
$Res call({
 Product6 product, String snapshotQuantity, String? countedQuantity, String systemQuantity, String? difference
});


$Product6CopyWith<$Res> get product;

}
/// @nodoc
class _$Lines10CopyWithImpl<$Res>
    implements $Lines10CopyWith<$Res> {
  _$Lines10CopyWithImpl(this._self, this._then);

  final Lines10 _self;
  final $Res Function(Lines10) _then;

/// Create a copy of Lines10
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? snapshotQuantity = null,Object? countedQuantity = freezed,Object? systemQuantity = null,Object? difference = freezed,}) {
  return _then(Lines10(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product6,snapshotQuantity: null == snapshotQuantity ? _self.snapshotQuantity : snapshotQuantity // ignore: cast_nullable_to_non_nullable
as String,countedQuantity: freezed == countedQuantity ? _self.countedQuantity : countedQuantity // ignore: cast_nullable_to_non_nullable
as String?,systemQuantity: null == systemQuantity ? _self.systemQuantity : systemQuantity // ignore: cast_nullable_to_non_nullable
as String,difference: freezed == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Lines10
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product6CopyWith<$Res> get product {
  
  return $Product6CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines10].
extension Lines10Patterns on Lines10 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines10 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines10() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines10 value)  $default,){
final _that = this;
switch (_that) {
case _Lines10():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines10 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines10() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product6 product,  String snapshotQuantity,  String? countedQuantity,  String systemQuantity,  String? difference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines10() when $default != null:
return $default(_that.product,_that.snapshotQuantity,_that.countedQuantity,_that.systemQuantity,_that.difference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product6 product,  String snapshotQuantity,  String? countedQuantity,  String systemQuantity,  String? difference)  $default,) {final _that = this;
switch (_that) {
case _Lines10():
return $default(_that.product,_that.snapshotQuantity,_that.countedQuantity,_that.systemQuantity,_that.difference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product6 product,  String snapshotQuantity,  String? countedQuantity,  String systemQuantity,  String? difference)?  $default,) {final _that = this;
switch (_that) {
case _Lines10() when $default != null:
return $default(_that.product,_that.snapshotQuantity,_that.countedQuantity,_that.systemQuantity,_that.difference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines10 implements Lines10 {
  const _Lines10({required this.product, required this.snapshotQuantity, required this.countedQuantity, required this.systemQuantity, required this.difference});
  factory _Lines10.fromJson(Map<String, dynamic> json) => _$Lines10FromJson(json);

@override final  Product6 product;
@override final  String snapshotQuantity;
@override final  String? countedQuantity;
@override final  String systemQuantity;
@override final  String? difference;

/// Create a copy of Lines10
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines10CopyWith<_Lines10> get copyWith => __$Lines10CopyWithImpl<_Lines10>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines10ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines10&&(identical(other.product, product) || other.product == product)&&(identical(other.snapshotQuantity, snapshotQuantity) || other.snapshotQuantity == snapshotQuantity)&&(identical(other.countedQuantity, countedQuantity) || other.countedQuantity == countedQuantity)&&(identical(other.systemQuantity, systemQuantity) || other.systemQuantity == systemQuantity)&&(identical(other.difference, difference) || other.difference == difference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,product,snapshotQuantity,countedQuantity,systemQuantity,difference);
}

@override
String toString() {
    return 'Lines10(product: $product, snapshotQuantity: $snapshotQuantity, countedQuantity: $countedQuantity, systemQuantity: $systemQuantity, difference: $difference)';
}


}

/// @nodoc
abstract mixin class _$Lines10CopyWith<$Res> implements $Lines10CopyWith<$Res> {
  factory _$Lines10CopyWith(_Lines10 value, $Res Function(_Lines10) _then) = __$Lines10CopyWithImpl;
@override @useResult
$Res call({
 Product6 product, String snapshotQuantity, String? countedQuantity, String systemQuantity, String? difference
});


@override $Product6CopyWith<$Res> get product;

}
/// @nodoc
class __$Lines10CopyWithImpl<$Res>
    implements _$Lines10CopyWith<$Res> {
  __$Lines10CopyWithImpl(this._self, this._then);

  final _Lines10 _self;
  final $Res Function(_Lines10) _then;

/// Create a copy of Lines10
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? snapshotQuantity = null,Object? countedQuantity = freezed,Object? systemQuantity = null,Object? difference = freezed,}) {
  return _then(_Lines10(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product6,snapshotQuantity: null == snapshotQuantity ? _self.snapshotQuantity : snapshotQuantity // ignore: cast_nullable_to_non_nullable
as String,countedQuantity: freezed == countedQuantity ? _self.countedQuantity : countedQuantity // ignore: cast_nullable_to_non_nullable
as String?,systemQuantity: null == systemQuantity ? _self.systemQuantity : systemQuantity // ignore: cast_nullable_to_non_nullable
as String,difference: freezed == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Lines10
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product6CopyWith<$Res> get product {
  
  return $Product6CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
