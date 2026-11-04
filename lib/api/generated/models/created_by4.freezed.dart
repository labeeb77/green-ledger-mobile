// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_by4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedBy4 {

 String get id; String get name;
/// Create a copy of CreatedBy4
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedBy4CopyWith<CreatedBy4> get copyWith => _$CreatedBy4CopyWithImpl<CreatedBy4>(this as CreatedBy4, _$identity);

  /// Serializes this CreatedBy4 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatedBy4;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedBy4&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatedBy4;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as CreatedBy4;
  return 'CreatedBy4(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $CreatedBy4CopyWith<$Res>  {
  factory $CreatedBy4CopyWith(CreatedBy4 value, $Res Function(CreatedBy4) _then) = _$CreatedBy4CopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CreatedBy4CopyWithImpl<$Res>
    implements $CreatedBy4CopyWith<$Res> {
  _$CreatedBy4CopyWithImpl(this._self, this._then);

  final CreatedBy4 _self;
  final $Res Function(CreatedBy4) _then;

/// Create a copy of CreatedBy4
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(CreatedBy4(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedBy4].
extension CreatedBy4Patterns on CreatedBy4 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedBy4 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedBy4() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedBy4 value)  $default,){
final _that = this;
switch (_that) {
case _CreatedBy4():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedBy4 value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedBy4() when $default != null:
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
case _CreatedBy4() when $default != null:
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
case _CreatedBy4():
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
case _CreatedBy4() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedBy4 implements CreatedBy4 {
  const _CreatedBy4({required this.id, required this.name});
  factory _CreatedBy4.fromJson(Map<String, dynamic> json) => _$CreatedBy4FromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of CreatedBy4
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedBy4CopyWith<_CreatedBy4> get copyWith => __$CreatedBy4CopyWithImpl<_CreatedBy4>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedBy4ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedBy4&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'CreatedBy4(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreatedBy4CopyWith<$Res> implements $CreatedBy4CopyWith<$Res> {
  factory _$CreatedBy4CopyWith(_CreatedBy4 value, $Res Function(_CreatedBy4) _then) = __$CreatedBy4CopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CreatedBy4CopyWithImpl<$Res>
    implements _$CreatedBy4CopyWith<$Res> {
  __$CreatedBy4CopyWithImpl(this._self, this._then);

  final _CreatedBy4 _self;
  final $Res Function(_CreatedBy4) _then;

/// Create a copy of CreatedBy4
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CreatedBy4(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
