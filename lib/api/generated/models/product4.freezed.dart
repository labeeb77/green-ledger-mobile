// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product4 {

 String get id; String get name; String get stockUnit;
/// Create a copy of Product4
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Product4CopyWith<Product4> get copyWith => _$Product4CopyWithImpl<Product4>(this as Product4, _$identity);

  /// Serializes this Product4 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Product4;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product4&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Product4;
  return Object.hash(runtimeType,_this.id,_this.name,_this.stockUnit);
}

@override
String toString() {
  final _this = this as Product4;
  return 'Product4(id: ${_this.id}, name: ${_this.name}, stockUnit: ${_this.stockUnit})';
}


}

/// @nodoc
abstract mixin class $Product4CopyWith<$Res>  {
  factory $Product4CopyWith(Product4 value, $Res Function(Product4) _then) = _$Product4CopyWithImpl;
@useResult
$Res call({
 String id, String name, String stockUnit
});




}
/// @nodoc
class _$Product4CopyWithImpl<$Res>
    implements $Product4CopyWith<$Res> {
  _$Product4CopyWithImpl(this._self, this._then);

  final Product4 _self;
  final $Res Function(Product4) _then;

/// Create a copy of Product4
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? stockUnit = null,}) {
  return _then(Product4(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Product4].
extension Product4Patterns on Product4 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product4 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product4() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product4 value)  $default,){
final _that = this;
switch (_that) {
case _Product4():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product4 value)?  $default,){
final _that = this;
switch (_that) {
case _Product4() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String stockUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product4() when $default != null:
return $default(_that.id,_that.name,_that.stockUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String stockUnit)  $default,) {final _that = this;
switch (_that) {
case _Product4():
return $default(_that.id,_that.name,_that.stockUnit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String stockUnit)?  $default,) {final _that = this;
switch (_that) {
case _Product4() when $default != null:
return $default(_that.id,_that.name,_that.stockUnit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product4 implements Product4 {
  const _Product4({required this.id, required this.name, required this.stockUnit});
  factory _Product4.fromJson(Map<String, dynamic> json) => _$Product4FromJson(json);

@override final  String id;
@override final  String name;
@override final  String stockUnit;

/// Create a copy of Product4
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Product4CopyWith<_Product4> get copyWith => __$Product4CopyWithImpl<_Product4>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Product4ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product4&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,stockUnit);
}

@override
String toString() {
    return 'Product4(id: $id, name: $name, stockUnit: $stockUnit)';
}


}

/// @nodoc
abstract mixin class _$Product4CopyWith<$Res> implements $Product4CopyWith<$Res> {
  factory _$Product4CopyWith(_Product4 value, $Res Function(_Product4) _then) = __$Product4CopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String stockUnit
});




}
/// @nodoc
class __$Product4CopyWithImpl<$Res>
    implements _$Product4CopyWith<$Res> {
  __$Product4CopyWithImpl(this._self, this._then);

  final _Product4 _self;
  final $Res Function(_Product4) _then;

/// Create a copy of Product4
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? stockUnit = null,}) {
  return _then(_Product4(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
