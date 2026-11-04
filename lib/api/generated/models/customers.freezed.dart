// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Customers {

 String get id; String get name; String? get detail;
/// Create a copy of Customers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomersCopyWith<Customers> get copyWith => _$CustomersCopyWithImpl<Customers>(this as Customers, _$identity);

  /// Serializes this Customers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Customers;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Customers&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.detail, _this.detail) || other.detail == _this.detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Customers;
  return Object.hash(runtimeType,_this.id,_this.name,_this.detail);
}

@override
String toString() {
  final _this = this as Customers;
  return 'Customers(id: ${_this.id}, name: ${_this.name}, detail: ${_this.detail})';
}


}

/// @nodoc
abstract mixin class $CustomersCopyWith<$Res>  {
  factory $CustomersCopyWith(Customers value, $Res Function(Customers) _then) = _$CustomersCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? detail
});




}
/// @nodoc
class _$CustomersCopyWithImpl<$Res>
    implements $CustomersCopyWith<$Res> {
  _$CustomersCopyWithImpl(this._self, this._then);

  final Customers _self;
  final $Res Function(Customers) _then;

/// Create a copy of Customers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? detail = freezed,}) {
  return _then(Customers(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Customers].
extension CustomersPatterns on Customers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Customers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Customers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Customers value)  $default,){
final _that = this;
switch (_that) {
case _Customers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Customers value)?  $default,){
final _that = this;
switch (_that) {
case _Customers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Customers() when $default != null:
return $default(_that.id,_that.name,_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? detail)  $default,) {final _that = this;
switch (_that) {
case _Customers():
return $default(_that.id,_that.name,_that.detail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? detail)?  $default,) {final _that = this;
switch (_that) {
case _Customers() when $default != null:
return $default(_that.id,_that.name,_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Customers implements Customers {
  const _Customers({required this.id, required this.name, required this.detail});
  factory _Customers.fromJson(Map<String, dynamic> json) => _$CustomersFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? detail;

/// Create a copy of Customers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomersCopyWith<_Customers> get copyWith => __$CustomersCopyWithImpl<_Customers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomersToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Customers&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,detail);
}

@override
String toString() {
    return 'Customers(id: $id, name: $name, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$CustomersCopyWith<$Res> implements $CustomersCopyWith<$Res> {
  factory _$CustomersCopyWith(_Customers value, $Res Function(_Customers) _then) = __$CustomersCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? detail
});




}
/// @nodoc
class __$CustomersCopyWithImpl<$Res>
    implements _$CustomersCopyWith<$Res> {
  __$CustomersCopyWithImpl(this._self, this._then);

  final _Customers _self;
  final $Res Function(_Customers) _then;

/// Create a copy of Customers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? detail = freezed,}) {
  return _then(_Customers(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
