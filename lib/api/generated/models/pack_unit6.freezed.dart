// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_unit6.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackUnit6 {

 String get id; String get name;
/// Create a copy of PackUnit6
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackUnit6CopyWith<PackUnit6> get copyWith => _$PackUnit6CopyWithImpl<PackUnit6>(this as PackUnit6, _$identity);

  /// Serializes this PackUnit6 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PackUnit6;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackUnit6&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PackUnit6;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as PackUnit6;
  return 'PackUnit6(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $PackUnit6CopyWith<$Res>  {
  factory $PackUnit6CopyWith(PackUnit6 value, $Res Function(PackUnit6) _then) = _$PackUnit6CopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$PackUnit6CopyWithImpl<$Res>
    implements $PackUnit6CopyWith<$Res> {
  _$PackUnit6CopyWithImpl(this._self, this._then);

  final PackUnit6 _self;
  final $Res Function(PackUnit6) _then;

/// Create a copy of PackUnit6
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(PackUnit6(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PackUnit6].
extension PackUnit6Patterns on PackUnit6 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackUnit6 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackUnit6() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackUnit6 value)  $default,){
final _that = this;
switch (_that) {
case _PackUnit6():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackUnit6 value)?  $default,){
final _that = this;
switch (_that) {
case _PackUnit6() when $default != null:
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
case _PackUnit6() when $default != null:
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
case _PackUnit6():
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
case _PackUnit6() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackUnit6 implements PackUnit6 {
  const _PackUnit6({required this.id, required this.name});
  factory _PackUnit6.fromJson(Map<String, dynamic> json) => _$PackUnit6FromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of PackUnit6
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackUnit6CopyWith<_PackUnit6> get copyWith => __$PackUnit6CopyWithImpl<_PackUnit6>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackUnit6ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackUnit6&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'PackUnit6(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$PackUnit6CopyWith<$Res> implements $PackUnit6CopyWith<$Res> {
  factory _$PackUnit6CopyWith(_PackUnit6 value, $Res Function(_PackUnit6) _then) = __$PackUnit6CopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$PackUnit6CopyWithImpl<$Res>
    implements _$PackUnit6CopyWith<$Res> {
  __$PackUnit6CopyWithImpl(this._self, this._then);

  final _PackUnit6 _self;
  final $Res Function(_PackUnit6) _then;

/// Create a copy of PackUnit6
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_PackUnit6(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
