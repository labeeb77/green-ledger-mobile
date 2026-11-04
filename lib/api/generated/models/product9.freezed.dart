// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product9.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product9 {

 String get id; String get name; String get stockUnit;
/// Create a copy of Product9
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Product9CopyWith<Product9> get copyWith => _$Product9CopyWithImpl<Product9>(this as Product9, _$identity);

  /// Serializes this Product9 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Product9;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product9&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.stockUnit, _this.stockUnit) || other.stockUnit == _this.stockUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Product9;
  return Object.hash(runtimeType,_this.id,_this.name,_this.stockUnit);
}

@override
String toString() {
  final _this = this as Product9;
  return 'Product9(id: ${_this.id}, name: ${_this.name}, stockUnit: ${_this.stockUnit})';
}


}

/// @nodoc
abstract mixin class $Product9CopyWith<$Res>  {
  factory $Product9CopyWith(Product9 value, $Res Function(Product9) _then) = _$Product9CopyWithImpl;
@useResult
$Res call({
 String id, String name, String stockUnit
});




}
/// @nodoc
class _$Product9CopyWithImpl<$Res>
    implements $Product9CopyWith<$Res> {
  _$Product9CopyWithImpl(this._self, this._then);

  final Product9 _self;
  final $Res Function(Product9) _then;

/// Create a copy of Product9
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? stockUnit = null,}) {
  return _then(Product9(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Product9].
extension Product9Patterns on Product9 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product9 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product9() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product9 value)  $default,){
final _that = this;
switch (_that) {
case _Product9():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product9 value)?  $default,){
final _that = this;
switch (_that) {
case _Product9() when $default != null:
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
case _Product9() when $default != null:
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
case _Product9():
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
case _Product9() when $default != null:
return $default(_that.id,_that.name,_that.stockUnit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product9 implements Product9 {
  const _Product9({required this.id, required this.name, required this.stockUnit});
  factory _Product9.fromJson(Map<String, dynamic> json) => _$Product9FromJson(json);

@override final  String id;
@override final  String name;
@override final  String stockUnit;

/// Create a copy of Product9
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Product9CopyWith<_Product9> get copyWith => __$Product9CopyWithImpl<_Product9>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Product9ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product9&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.stockUnit, stockUnit) || other.stockUnit == stockUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,stockUnit);
}

@override
String toString() {
    return 'Product9(id: $id, name: $name, stockUnit: $stockUnit)';
}


}

/// @nodoc
abstract mixin class _$Product9CopyWith<$Res> implements $Product9CopyWith<$Res> {
  factory _$Product9CopyWith(_Product9 value, $Res Function(_Product9) _then) = __$Product9CopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String stockUnit
});




}
/// @nodoc
class __$Product9CopyWithImpl<$Res>
    implements _$Product9CopyWith<$Res> {
  __$Product9CopyWithImpl(this._self, this._then);

  final _Product9 _self;
  final $Res Function(_Product9) _then;

/// Create a copy of Product9
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? stockUnit = null,}) {
  return _then(_Product9(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stockUnit: null == stockUnit ? _self.stockUnit : stockUnit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
