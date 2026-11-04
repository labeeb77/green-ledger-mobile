// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceDtoOutput {

 String get id; String get deviceId; String? get name; String? get platform; DateTime? get lastSeenAt; DateTime get createdAt; bool get revoked; bool get current;
/// Create a copy of DeviceDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceDtoOutputCopyWith<DeviceDtoOutput> get copyWith => _$DeviceDtoOutputCopyWithImpl<DeviceDtoOutput>(this as DeviceDtoOutput, _$identity);

  /// Serializes this DeviceDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeviceDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.platform, _this.platform) || other.platform == _this.platform)&&(identical(other.lastSeenAt, _this.lastSeenAt) || other.lastSeenAt == _this.lastSeenAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.revoked, _this.revoked) || other.revoked == _this.revoked)&&(identical(other.current, _this.current) || other.current == _this.current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeviceDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.deviceId,_this.name,_this.platform,_this.lastSeenAt,_this.createdAt,_this.revoked,_this.current);
}

@override
String toString() {
  final _this = this as DeviceDtoOutput;
  return 'DeviceDtoOutput(id: ${_this.id}, deviceId: ${_this.deviceId}, name: ${_this.name}, platform: ${_this.platform}, lastSeenAt: ${_this.lastSeenAt}, createdAt: ${_this.createdAt}, revoked: ${_this.revoked}, current: ${_this.current})';
}


}

/// @nodoc
abstract mixin class $DeviceDtoOutputCopyWith<$Res>  {
  factory $DeviceDtoOutputCopyWith(DeviceDtoOutput value, $Res Function(DeviceDtoOutput) _then) = _$DeviceDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String deviceId, String? name, String? platform, DateTime? lastSeenAt, DateTime createdAt, bool revoked, bool current
});




}
/// @nodoc
class _$DeviceDtoOutputCopyWithImpl<$Res>
    implements $DeviceDtoOutputCopyWith<$Res> {
  _$DeviceDtoOutputCopyWithImpl(this._self, this._then);

  final DeviceDtoOutput _self;
  final $Res Function(DeviceDtoOutput) _then;

/// Create a copy of DeviceDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceId = null,Object? name = freezed,Object? platform = freezed,Object? lastSeenAt = freezed,Object? createdAt = null,Object? revoked = null,Object? current = null,}) {
  return _then(DeviceDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,lastSeenAt: freezed == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,revoked: null == revoked ? _self.revoked : revoked // ignore: cast_nullable_to_non_nullable
as bool,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceDtoOutput].
extension DeviceDtoOutputPatterns on DeviceDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _DeviceDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deviceId,  String? name,  String? platform,  DateTime? lastSeenAt,  DateTime createdAt,  bool revoked,  bool current)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceDtoOutput() when $default != null:
return $default(_that.id,_that.deviceId,_that.name,_that.platform,_that.lastSeenAt,_that.createdAt,_that.revoked,_that.current);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deviceId,  String? name,  String? platform,  DateTime? lastSeenAt,  DateTime createdAt,  bool revoked,  bool current)  $default,) {final _that = this;
switch (_that) {
case _DeviceDtoOutput():
return $default(_that.id,_that.deviceId,_that.name,_that.platform,_that.lastSeenAt,_that.createdAt,_that.revoked,_that.current);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deviceId,  String? name,  String? platform,  DateTime? lastSeenAt,  DateTime createdAt,  bool revoked,  bool current)?  $default,) {final _that = this;
switch (_that) {
case _DeviceDtoOutput() when $default != null:
return $default(_that.id,_that.deviceId,_that.name,_that.platform,_that.lastSeenAt,_that.createdAt,_that.revoked,_that.current);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceDtoOutput implements DeviceDtoOutput {
  const _DeviceDtoOutput({required this.id, required this.deviceId, required this.name, required this.platform, required this.lastSeenAt, required this.createdAt, required this.revoked, required this.current});
  factory _DeviceDtoOutput.fromJson(Map<String, dynamic> json) => _$DeviceDtoOutputFromJson(json);

@override final  String id;
@override final  String deviceId;
@override final  String? name;
@override final  String? platform;
@override final  DateTime? lastSeenAt;
@override final  DateTime createdAt;
@override final  bool revoked;
@override final  bool current;

/// Create a copy of DeviceDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceDtoOutputCopyWith<_DeviceDtoOutput> get copyWith => __$DeviceDtoOutputCopyWithImpl<_DeviceDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.name, name) || other.name == name)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.revoked, revoked) || other.revoked == revoked)&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,deviceId,name,platform,lastSeenAt,createdAt,revoked,current);
}

@override
String toString() {
    return 'DeviceDtoOutput(id: $id, deviceId: $deviceId, name: $name, platform: $platform, lastSeenAt: $lastSeenAt, createdAt: $createdAt, revoked: $revoked, current: $current)';
}


}

/// @nodoc
abstract mixin class _$DeviceDtoOutputCopyWith<$Res> implements $DeviceDtoOutputCopyWith<$Res> {
  factory _$DeviceDtoOutputCopyWith(_DeviceDtoOutput value, $Res Function(_DeviceDtoOutput) _then) = __$DeviceDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String deviceId, String? name, String? platform, DateTime? lastSeenAt, DateTime createdAt, bool revoked, bool current
});




}
/// @nodoc
class __$DeviceDtoOutputCopyWithImpl<$Res>
    implements _$DeviceDtoOutputCopyWith<$Res> {
  __$DeviceDtoOutputCopyWithImpl(this._self, this._then);

  final _DeviceDtoOutput _self;
  final $Res Function(_DeviceDtoOutput) _then;

/// Create a copy of DeviceDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceId = null,Object? name = freezed,Object? platform = freezed,Object? lastSeenAt = freezed,Object? createdAt = null,Object? revoked = null,Object? current = null,}) {
  return _then(_DeviceDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,lastSeenAt: freezed == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,revoked: null == revoked ? _self.revoked : revoked // ignore: cast_nullable_to_non_nullable
as bool,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
