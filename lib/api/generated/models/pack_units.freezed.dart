// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackUnits {

 String get id; String get name; SizeType get sizeType; String? get size; bool get active;
/// Create a copy of PackUnits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackUnitsCopyWith<PackUnits> get copyWith => _$PackUnitsCopyWithImpl<PackUnits>(this as PackUnits, _$identity);

  /// Serializes this PackUnits to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PackUnits;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackUnits&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sizeType, _this.sizeType) || other.sizeType == _this.sizeType)&&(identical(other.size, _this.size) || other.size == _this.size)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PackUnits;
  return Object.hash(runtimeType,_this.id,_this.name,_this.sizeType,_this.size,_this.active);
}

@override
String toString() {
  final _this = this as PackUnits;
  return 'PackUnits(id: ${_this.id}, name: ${_this.name}, sizeType: ${_this.sizeType}, size: ${_this.size}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $PackUnitsCopyWith<$Res>  {
  factory $PackUnitsCopyWith(PackUnits value, $Res Function(PackUnits) _then) = _$PackUnitsCopyWithImpl;
@useResult
$Res call({
 String id, String name, SizeType sizeType, String? size, bool active
});




}
/// @nodoc
class _$PackUnitsCopyWithImpl<$Res>
    implements $PackUnitsCopyWith<$Res> {
  _$PackUnitsCopyWithImpl(this._self, this._then);

  final PackUnits _self;
  final $Res Function(PackUnits) _then;

/// Create a copy of PackUnits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sizeType = null,Object? size = freezed,Object? active = null,}) {
  return _then(PackUnits(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeType: null == sizeType ? _self.sizeType : sizeType // ignore: cast_nullable_to_non_nullable
as SizeType,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PackUnits].
extension PackUnitsPatterns on PackUnits {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackUnits value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackUnits() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackUnits value)  $default,){
final _that = this;
switch (_that) {
case _PackUnits():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackUnits value)?  $default,){
final _that = this;
switch (_that) {
case _PackUnits() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  SizeType sizeType,  String? size,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackUnits() when $default != null:
return $default(_that.id,_that.name,_that.sizeType,_that.size,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  SizeType sizeType,  String? size,  bool active)  $default,) {final _that = this;
switch (_that) {
case _PackUnits():
return $default(_that.id,_that.name,_that.sizeType,_that.size,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  SizeType sizeType,  String? size,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _PackUnits() when $default != null:
return $default(_that.id,_that.name,_that.sizeType,_that.size,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackUnits implements PackUnits {
  const _PackUnits({required this.id, required this.name, required this.sizeType, required this.size, required this.active});
  factory _PackUnits.fromJson(Map<String, dynamic> json) => _$PackUnitsFromJson(json);

@override final  String id;
@override final  String name;
@override final  SizeType sizeType;
@override final  String? size;
@override final  bool active;

/// Create a copy of PackUnits
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackUnitsCopyWith<_PackUnits> get copyWith => __$PackUnitsCopyWithImpl<_PackUnits>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackUnitsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackUnits&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeType, sizeType) || other.sizeType == sizeType)&&(identical(other.size, size) || other.size == size)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,sizeType,size,active);
}

@override
String toString() {
    return 'PackUnits(id: $id, name: $name, sizeType: $sizeType, size: $size, active: $active)';
}


}

/// @nodoc
abstract mixin class _$PackUnitsCopyWith<$Res> implements $PackUnitsCopyWith<$Res> {
  factory _$PackUnitsCopyWith(_PackUnits value, $Res Function(_PackUnits) _then) = __$PackUnitsCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, SizeType sizeType, String? size, bool active
});




}
/// @nodoc
class __$PackUnitsCopyWithImpl<$Res>
    implements _$PackUnitsCopyWith<$Res> {
  __$PackUnitsCopyWithImpl(this._self, this._then);

  final _PackUnits _self;
  final $Res Function(_PackUnits) _then;

/// Create a copy of PackUnits
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sizeType = null,Object? size = freezed,Object? active = null,}) {
  return _then(_PackUnits(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeType: null == sizeType ? _self.sizeType : sizeType // ignore: cast_nullable_to_non_nullable
as SizeType,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
