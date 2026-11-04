// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines11.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines11 {

 String get productId; dynamic get countedQuantity;
/// Create a copy of Lines11
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines11CopyWith<Lines11> get copyWith => _$Lines11CopyWithImpl<Lines11>(this as Lines11, _$identity);

  /// Serializes this Lines11 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines11;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines11&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&const DeepCollectionEquality().equals(other.countedQuantity, _this.countedQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines11;
  return Object.hash(runtimeType,_this.productId,const DeepCollectionEquality().hash(_this.countedQuantity));
}

@override
String toString() {
  final _this = this as Lines11;
  return 'Lines11(productId: ${_this.productId}, countedQuantity: ${_this.countedQuantity})';
}


}

/// @nodoc
abstract mixin class $Lines11CopyWith<$Res>  {
  factory $Lines11CopyWith(Lines11 value, $Res Function(Lines11) _then) = _$Lines11CopyWithImpl;
@useResult
$Res call({
 String productId, dynamic countedQuantity
});




}
/// @nodoc
class _$Lines11CopyWithImpl<$Res>
    implements $Lines11CopyWith<$Res> {
  _$Lines11CopyWithImpl(this._self, this._then);

  final Lines11 _self;
  final $Res Function(Lines11) _then;

/// Create a copy of Lines11
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? countedQuantity = freezed,}) {
  return _then(Lines11(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,countedQuantity: freezed == countedQuantity ? _self.countedQuantity : countedQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines11].
extension Lines11Patterns on Lines11 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines11 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines11() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines11 value)  $default,){
final _that = this;
switch (_that) {
case _Lines11():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines11 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines11() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  dynamic countedQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines11() when $default != null:
return $default(_that.productId,_that.countedQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  dynamic countedQuantity)  $default,) {final _that = this;
switch (_that) {
case _Lines11():
return $default(_that.productId,_that.countedQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  dynamic countedQuantity)?  $default,) {final _that = this;
switch (_that) {
case _Lines11() when $default != null:
return $default(_that.productId,_that.countedQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines11 implements Lines11 {
  const _Lines11({required this.productId, required this.countedQuantity});
  factory _Lines11.fromJson(Map<String, dynamic> json) => _$Lines11FromJson(json);

@override final  String productId;
@override final  dynamic countedQuantity;

/// Create a copy of Lines11
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines11CopyWith<_Lines11> get copyWith => __$Lines11CopyWithImpl<_Lines11>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines11ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines11&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other.countedQuantity, countedQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,const DeepCollectionEquality().hash(countedQuantity));
}

@override
String toString() {
    return 'Lines11(productId: $productId, countedQuantity: $countedQuantity)';
}


}

/// @nodoc
abstract mixin class _$Lines11CopyWith<$Res> implements $Lines11CopyWith<$Res> {
  factory _$Lines11CopyWith(_Lines11 value, $Res Function(_Lines11) _then) = __$Lines11CopyWithImpl;
@override @useResult
$Res call({
 String productId, dynamic countedQuantity
});




}
/// @nodoc
class __$Lines11CopyWithImpl<$Res>
    implements _$Lines11CopyWith<$Res> {
  __$Lines11CopyWithImpl(this._self, this._then);

  final _Lines11 _self;
  final $Res Function(_Lines11) _then;

/// Create a copy of Lines11
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? countedQuantity = freezed,}) {
  return _then(_Lines11(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,countedQuantity: freezed == countedQuantity ? _self.countedQuantity : countedQuantity // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
