// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthDtoOutput {

 HealthDtoOutputStatus get status; bool get database; bool get redis;
/// Create a copy of HealthDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthDtoOutputCopyWith<HealthDtoOutput> get copyWith => _$HealthDtoOutputCopyWithImpl<HealthDtoOutput>(this as HealthDtoOutput, _$identity);

  /// Serializes this HealthDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HealthDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthDtoOutput&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.database, _this.database) || other.database == _this.database)&&(identical(other.redis, _this.redis) || other.redis == _this.redis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HealthDtoOutput;
  return Object.hash(runtimeType,_this.status,_this.database,_this.redis);
}

@override
String toString() {
  final _this = this as HealthDtoOutput;
  return 'HealthDtoOutput(status: ${_this.status}, database: ${_this.database}, redis: ${_this.redis})';
}


}

/// @nodoc
abstract mixin class $HealthDtoOutputCopyWith<$Res>  {
  factory $HealthDtoOutputCopyWith(HealthDtoOutput value, $Res Function(HealthDtoOutput) _then) = _$HealthDtoOutputCopyWithImpl;
@useResult
$Res call({
 HealthDtoOutputStatus status, bool database, bool redis
});




}
/// @nodoc
class _$HealthDtoOutputCopyWithImpl<$Res>
    implements $HealthDtoOutputCopyWith<$Res> {
  _$HealthDtoOutputCopyWithImpl(this._self, this._then);

  final HealthDtoOutput _self;
  final $Res Function(HealthDtoOutput) _then;

/// Create a copy of HealthDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? database = null,Object? redis = null,}) {
  return _then(HealthDtoOutput(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HealthDtoOutputStatus,database: null == database ? _self.database : database // ignore: cast_nullable_to_non_nullable
as bool,redis: null == redis ? _self.redis : redis // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthDtoOutput].
extension HealthDtoOutputPatterns on HealthDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _HealthDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _HealthDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HealthDtoOutputStatus status,  bool database,  bool redis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthDtoOutput() when $default != null:
return $default(_that.status,_that.database,_that.redis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HealthDtoOutputStatus status,  bool database,  bool redis)  $default,) {final _that = this;
switch (_that) {
case _HealthDtoOutput():
return $default(_that.status,_that.database,_that.redis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HealthDtoOutputStatus status,  bool database,  bool redis)?  $default,) {final _that = this;
switch (_that) {
case _HealthDtoOutput() when $default != null:
return $default(_that.status,_that.database,_that.redis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthDtoOutput implements HealthDtoOutput {
  const _HealthDtoOutput({required this.status, required this.database, required this.redis});
  factory _HealthDtoOutput.fromJson(Map<String, dynamic> json) => _$HealthDtoOutputFromJson(json);

@override final  HealthDtoOutputStatus status;
@override final  bool database;
@override final  bool redis;

/// Create a copy of HealthDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthDtoOutputCopyWith<_HealthDtoOutput> get copyWith => __$HealthDtoOutputCopyWithImpl<_HealthDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthDtoOutput&&(identical(other.status, status) || other.status == status)&&(identical(other.database, database) || other.database == database)&&(identical(other.redis, redis) || other.redis == redis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,database,redis);
}

@override
String toString() {
    return 'HealthDtoOutput(status: $status, database: $database, redis: $redis)';
}


}

/// @nodoc
abstract mixin class _$HealthDtoOutputCopyWith<$Res> implements $HealthDtoOutputCopyWith<$Res> {
  factory _$HealthDtoOutputCopyWith(_HealthDtoOutput value, $Res Function(_HealthDtoOutput) _then) = __$HealthDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 HealthDtoOutputStatus status, bool database, bool redis
});




}
/// @nodoc
class __$HealthDtoOutputCopyWithImpl<$Res>
    implements _$HealthDtoOutputCopyWith<$Res> {
  __$HealthDtoOutputCopyWithImpl(this._self, this._then);

  final _HealthDtoOutput _self;
  final $Res Function(_HealthDtoOutput) _then;

/// Create a copy of HealthDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? database = null,Object? redis = null,}) {
  return _then(_HealthDtoOutput(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HealthDtoOutputStatus,database: null == database ? _self.database : database // ignore: cast_nullable_to_non_nullable
as bool,redis: null == redis ? _self.redis : redis // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
