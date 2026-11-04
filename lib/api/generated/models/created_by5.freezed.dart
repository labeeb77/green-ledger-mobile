// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_by5.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedBy5 {

 String get id; String get name;
/// Create a copy of CreatedBy5
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedBy5CopyWith<CreatedBy5> get copyWith => _$CreatedBy5CopyWithImpl<CreatedBy5>(this as CreatedBy5, _$identity);

  /// Serializes this CreatedBy5 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatedBy5;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedBy5&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatedBy5;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as CreatedBy5;
  return 'CreatedBy5(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $CreatedBy5CopyWith<$Res>  {
  factory $CreatedBy5CopyWith(CreatedBy5 value, $Res Function(CreatedBy5) _then) = _$CreatedBy5CopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CreatedBy5CopyWithImpl<$Res>
    implements $CreatedBy5CopyWith<$Res> {
  _$CreatedBy5CopyWithImpl(this._self, this._then);

  final CreatedBy5 _self;
  final $Res Function(CreatedBy5) _then;

/// Create a copy of CreatedBy5
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(CreatedBy5(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedBy5].
extension CreatedBy5Patterns on CreatedBy5 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedBy5 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedBy5() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedBy5 value)  $default,){
final _that = this;
switch (_that) {
case _CreatedBy5():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedBy5 value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedBy5() when $default != null:
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
case _CreatedBy5() when $default != null:
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
case _CreatedBy5():
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
case _CreatedBy5() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedBy5 implements CreatedBy5 {
  const _CreatedBy5({required this.id, required this.name});
  factory _CreatedBy5.fromJson(Map<String, dynamic> json) => _$CreatedBy5FromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of CreatedBy5
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedBy5CopyWith<_CreatedBy5> get copyWith => __$CreatedBy5CopyWithImpl<_CreatedBy5>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedBy5ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedBy5&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'CreatedBy5(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreatedBy5CopyWith<$Res> implements $CreatedBy5CopyWith<$Res> {
  factory _$CreatedBy5CopyWith(_CreatedBy5 value, $Res Function(_CreatedBy5) _then) = __$CreatedBy5CopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CreatedBy5CopyWithImpl<$Res>
    implements _$CreatedBy5CopyWith<$Res> {
  __$CreatedBy5CopyWithImpl(this._self, this._then);

  final _CreatedBy5 _self;
  final $Res Function(_CreatedBy5) _then;

/// Create a copy of CreatedBy5
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CreatedBy5(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
