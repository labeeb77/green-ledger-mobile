// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_unit5.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackUnit5 {

 String get id; String get name;
/// Create a copy of PackUnit5
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackUnit5CopyWith<PackUnit5> get copyWith => _$PackUnit5CopyWithImpl<PackUnit5>(this as PackUnit5, _$identity);

  /// Serializes this PackUnit5 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PackUnit5;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackUnit5&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PackUnit5;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as PackUnit5;
  return 'PackUnit5(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $PackUnit5CopyWith<$Res>  {
  factory $PackUnit5CopyWith(PackUnit5 value, $Res Function(PackUnit5) _then) = _$PackUnit5CopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$PackUnit5CopyWithImpl<$Res>
    implements $PackUnit5CopyWith<$Res> {
  _$PackUnit5CopyWithImpl(this._self, this._then);

  final PackUnit5 _self;
  final $Res Function(PackUnit5) _then;

/// Create a copy of PackUnit5
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(PackUnit5(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PackUnit5].
extension PackUnit5Patterns on PackUnit5 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackUnit5 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackUnit5() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackUnit5 value)  $default,){
final _that = this;
switch (_that) {
case _PackUnit5():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackUnit5 value)?  $default,){
final _that = this;
switch (_that) {
case _PackUnit5() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackUnit5() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _PackUnit5():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _PackUnit5() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackUnit5 implements PackUnit5 {
  const _PackUnit5({required this.id, required this.name});
  factory _PackUnit5.fromJson(Map<String, dynamic> json) => _$PackUnit5FromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of PackUnit5
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackUnit5CopyWith<_PackUnit5> get copyWith => __$PackUnit5CopyWithImpl<_PackUnit5>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackUnit5ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackUnit5&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'PackUnit5(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$PackUnit5CopyWith<$Res> implements $PackUnit5CopyWith<$Res> {
  factory _$PackUnit5CopyWith(_PackUnit5 value, $Res Function(_PackUnit5) _then) = __$PackUnit5CopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$PackUnit5CopyWithImpl<$Res>
    implements _$PackUnit5CopyWith<$Res> {
  __$PackUnit5CopyWithImpl(this._self, this._then);

  final _PackUnit5 _self;
  final $Res Function(_PackUnit5) _then;

/// Create a copy of PackUnit5
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_PackUnit5(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
