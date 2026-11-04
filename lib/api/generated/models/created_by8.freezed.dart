// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_by8.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedBy8 {

 String get id; String get name;
/// Create a copy of CreatedBy8
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedBy8CopyWith<CreatedBy8> get copyWith => _$CreatedBy8CopyWithImpl<CreatedBy8>(this as CreatedBy8, _$identity);

  /// Serializes this CreatedBy8 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatedBy8;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedBy8&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatedBy8;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as CreatedBy8;
  return 'CreatedBy8(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $CreatedBy8CopyWith<$Res>  {
  factory $CreatedBy8CopyWith(CreatedBy8 value, $Res Function(CreatedBy8) _then) = _$CreatedBy8CopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CreatedBy8CopyWithImpl<$Res>
    implements $CreatedBy8CopyWith<$Res> {
  _$CreatedBy8CopyWithImpl(this._self, this._then);

  final CreatedBy8 _self;
  final $Res Function(CreatedBy8) _then;

/// Create a copy of CreatedBy8
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(CreatedBy8(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedBy8].
extension CreatedBy8Patterns on CreatedBy8 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedBy8 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedBy8() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedBy8 value)  $default,){
final _that = this;
switch (_that) {
case _CreatedBy8():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedBy8 value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedBy8() when $default != null:
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
case _CreatedBy8() when $default != null:
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
case _CreatedBy8():
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
case _CreatedBy8() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedBy8 implements CreatedBy8 {
  const _CreatedBy8({required this.id, required this.name});
  factory _CreatedBy8.fromJson(Map<String, dynamic> json) => _$CreatedBy8FromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of CreatedBy8
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedBy8CopyWith<_CreatedBy8> get copyWith => __$CreatedBy8CopyWithImpl<_CreatedBy8>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedBy8ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedBy8&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'CreatedBy8(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreatedBy8CopyWith<$Res> implements $CreatedBy8CopyWith<$Res> {
  factory _$CreatedBy8CopyWith(_CreatedBy8 value, $Res Function(_CreatedBy8) _then) = __$CreatedBy8CopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CreatedBy8CopyWithImpl<$Res>
    implements _$CreatedBy8CopyWith<$Res> {
  __$CreatedBy8CopyWithImpl(this._self, this._then);

  final _CreatedBy8 _self;
  final $Res Function(_CreatedBy8) _then;

/// Create a copy of CreatedBy8
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CreatedBy8(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
