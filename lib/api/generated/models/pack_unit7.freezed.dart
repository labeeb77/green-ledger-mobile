// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_unit7.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackUnit7 {

 String get id; String get name;
/// Create a copy of PackUnit7
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackUnit7CopyWith<PackUnit7> get copyWith => _$PackUnit7CopyWithImpl<PackUnit7>(this as PackUnit7, _$identity);

  /// Serializes this PackUnit7 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PackUnit7;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackUnit7&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PackUnit7;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as PackUnit7;
  return 'PackUnit7(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $PackUnit7CopyWith<$Res>  {
  factory $PackUnit7CopyWith(PackUnit7 value, $Res Function(PackUnit7) _then) = _$PackUnit7CopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$PackUnit7CopyWithImpl<$Res>
    implements $PackUnit7CopyWith<$Res> {
  _$PackUnit7CopyWithImpl(this._self, this._then);

  final PackUnit7 _self;
  final $Res Function(PackUnit7) _then;

/// Create a copy of PackUnit7
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(PackUnit7(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PackUnit7].
extension PackUnit7Patterns on PackUnit7 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackUnit7 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackUnit7() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackUnit7 value)  $default,){
final _that = this;
switch (_that) {
case _PackUnit7():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackUnit7 value)?  $default,){
final _that = this;
switch (_that) {
case _PackUnit7() when $default != null:
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
case _PackUnit7() when $default != null:
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
case _PackUnit7():
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
case _PackUnit7() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackUnit7 implements PackUnit7 {
  const _PackUnit7({required this.id, required this.name});
  factory _PackUnit7.fromJson(Map<String, dynamic> json) => _$PackUnit7FromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of PackUnit7
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackUnit7CopyWith<_PackUnit7> get copyWith => __$PackUnit7CopyWithImpl<_PackUnit7>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackUnit7ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackUnit7&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'PackUnit7(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$PackUnit7CopyWith<$Res> implements $PackUnit7CopyWith<$Res> {
  factory _$PackUnit7CopyWith(_PackUnit7 value, $Res Function(_PackUnit7) _then) = __$PackUnit7CopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$PackUnit7CopyWithImpl<$Res>
    implements _$PackUnit7CopyWith<$Res> {
  __$PackUnit7CopyWithImpl(this._self, this._then);

  final _PackUnit7 _self;
  final $Res Function(_PackUnit7) _then;

/// Create a copy of PackUnit7
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_PackUnit7(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
