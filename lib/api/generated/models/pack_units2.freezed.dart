// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_units2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackUnits2 {

 String get name; SizeType get sizeType; dynamic get size;
/// Create a copy of PackUnits2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackUnits2CopyWith<PackUnits2> get copyWith => _$PackUnits2CopyWithImpl<PackUnits2>(this as PackUnits2, _$identity);

  /// Serializes this PackUnits2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PackUnits2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackUnits2&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sizeType, _this.sizeType) || other.sizeType == _this.sizeType)&&const DeepCollectionEquality().equals(other.size, _this.size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PackUnits2;
  return Object.hash(runtimeType,_this.name,_this.sizeType,const DeepCollectionEquality().hash(_this.size));
}

@override
String toString() {
  final _this = this as PackUnits2;
  return 'PackUnits2(name: ${_this.name}, sizeType: ${_this.sizeType}, size: ${_this.size})';
}


}

/// @nodoc
abstract mixin class $PackUnits2CopyWith<$Res>  {
  factory $PackUnits2CopyWith(PackUnits2 value, $Res Function(PackUnits2) _then) = _$PackUnits2CopyWithImpl;
@useResult
$Res call({
 String name, SizeType sizeType, dynamic size
});




}
/// @nodoc
class _$PackUnits2CopyWithImpl<$Res>
    implements $PackUnits2CopyWith<$Res> {
  _$PackUnits2CopyWithImpl(this._self, this._then);

  final PackUnits2 _self;
  final $Res Function(PackUnits2) _then;

/// Create a copy of PackUnits2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sizeType = null,Object? size = freezed,}) {
  return _then(PackUnits2(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeType: null == sizeType ? _self.sizeType : sizeType // ignore: cast_nullable_to_non_nullable
as SizeType,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PackUnits2].
extension PackUnits2Patterns on PackUnits2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackUnits2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackUnits2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackUnits2 value)  $default,){
final _that = this;
switch (_that) {
case _PackUnits2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackUnits2 value)?  $default,){
final _that = this;
switch (_that) {
case _PackUnits2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  SizeType sizeType,  dynamic size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackUnits2() when $default != null:
return $default(_that.name,_that.sizeType,_that.size);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  SizeType sizeType,  dynamic size)  $default,) {final _that = this;
switch (_that) {
case _PackUnits2():
return $default(_that.name,_that.sizeType,_that.size);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  SizeType sizeType,  dynamic size)?  $default,) {final _that = this;
switch (_that) {
case _PackUnits2() when $default != null:
return $default(_that.name,_that.sizeType,_that.size);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackUnits2 implements PackUnits2 {
  const _PackUnits2({required this.name, required this.sizeType, this.size});
  factory _PackUnits2.fromJson(Map<String, dynamic> json) => _$PackUnits2FromJson(json);

@override final  String name;
@override final  SizeType sizeType;
@override final  dynamic size;

/// Create a copy of PackUnits2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackUnits2CopyWith<_PackUnits2> get copyWith => __$PackUnits2CopyWithImpl<_PackUnits2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackUnits2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackUnits2&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeType, sizeType) || other.sizeType == sizeType)&&const DeepCollectionEquality().equals(other.size, size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,sizeType,const DeepCollectionEquality().hash(size));
}

@override
String toString() {
    return 'PackUnits2(name: $name, sizeType: $sizeType, size: $size)';
}


}

/// @nodoc
abstract mixin class _$PackUnits2CopyWith<$Res> implements $PackUnits2CopyWith<$Res> {
  factory _$PackUnits2CopyWith(_PackUnits2 value, $Res Function(_PackUnits2) _then) = __$PackUnits2CopyWithImpl;
@override @useResult
$Res call({
 String name, SizeType sizeType, dynamic size
});




}
/// @nodoc
class __$PackUnits2CopyWithImpl<$Res>
    implements _$PackUnits2CopyWith<$Res> {
  __$PackUnits2CopyWithImpl(this._self, this._then);

  final _PackUnits2 _self;
  final $Res Function(_PackUnits2) _then;

/// Create a copy of PackUnits2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sizeType = null,Object? size = freezed,}) {
  return _then(_PackUnits2(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeType: null == sizeType ? _self.sizeType : sizeType // ignore: cast_nullable_to_non_nullable
as SizeType,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
