// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Packs {

 String get packUnitId; String get name; String get count; bool get estimated;
/// Create a copy of Packs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PacksCopyWith<Packs> get copyWith => _$PacksCopyWithImpl<Packs>(this as Packs, _$identity);

  /// Serializes this Packs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Packs;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Packs&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.estimated, _this.estimated) || other.estimated == _this.estimated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Packs;
  return Object.hash(runtimeType,_this.packUnitId,_this.name,_this.count,_this.estimated);
}

@override
String toString() {
  final _this = this as Packs;
  return 'Packs(packUnitId: ${_this.packUnitId}, name: ${_this.name}, count: ${_this.count}, estimated: ${_this.estimated})';
}


}

/// @nodoc
abstract mixin class $PacksCopyWith<$Res>  {
  factory $PacksCopyWith(Packs value, $Res Function(Packs) _then) = _$PacksCopyWithImpl;
@useResult
$Res call({
 String packUnitId, String name, String count, bool estimated
});




}
/// @nodoc
class _$PacksCopyWithImpl<$Res>
    implements $PacksCopyWith<$Res> {
  _$PacksCopyWithImpl(this._self, this._then);

  final Packs _self;
  final $Res Function(Packs) _then;

/// Create a copy of Packs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packUnitId = null,Object? name = null,Object? count = null,Object? estimated = null,}) {
  return _then(Packs(
packUnitId: null == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as String,estimated: null == estimated ? _self.estimated : estimated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Packs].
extension PacksPatterns on Packs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Packs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Packs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Packs value)  $default,){
final _that = this;
switch (_that) {
case _Packs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Packs value)?  $default,){
final _that = this;
switch (_that) {
case _Packs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String packUnitId,  String name,  String count,  bool estimated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Packs() when $default != null:
return $default(_that.packUnitId,_that.name,_that.count,_that.estimated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String packUnitId,  String name,  String count,  bool estimated)  $default,) {final _that = this;
switch (_that) {
case _Packs():
return $default(_that.packUnitId,_that.name,_that.count,_that.estimated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String packUnitId,  String name,  String count,  bool estimated)?  $default,) {final _that = this;
switch (_that) {
case _Packs() when $default != null:
return $default(_that.packUnitId,_that.name,_that.count,_that.estimated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Packs implements Packs {
  const _Packs({required this.packUnitId, required this.name, required this.count, required this.estimated});
  factory _Packs.fromJson(Map<String, dynamic> json) => _$PacksFromJson(json);

@override final  String packUnitId;
@override final  String name;
@override final  String count;
@override final  bool estimated;

/// Create a copy of Packs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PacksCopyWith<_Packs> get copyWith => __$PacksCopyWithImpl<_Packs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PacksToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Packs&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.estimated, estimated) || other.estimated == estimated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,packUnitId,name,count,estimated);
}

@override
String toString() {
    return 'Packs(packUnitId: $packUnitId, name: $name, count: $count, estimated: $estimated)';
}


}

/// @nodoc
abstract mixin class _$PacksCopyWith<$Res> implements $PacksCopyWith<$Res> {
  factory _$PacksCopyWith(_Packs value, $Res Function(_Packs) _then) = __$PacksCopyWithImpl;
@override @useResult
$Res call({
 String packUnitId, String name, String count, bool estimated
});




}
/// @nodoc
class __$PacksCopyWithImpl<$Res>
    implements _$PacksCopyWith<$Res> {
  __$PacksCopyWithImpl(this._self, this._then);

  final _Packs _self;
  final $Res Function(_Packs) _then;

/// Create a copy of Packs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packUnitId = null,Object? name = null,Object? count = null,Object? estimated = null,}) {
  return _then(_Packs(
packUnitId: null == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as String,estimated: null == estimated ? _self.estimated : estimated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
