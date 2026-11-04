// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ok_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OkDtoOutput {

 bool get ok;
/// Create a copy of OkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OkDtoOutputCopyWith<OkDtoOutput> get copyWith => _$OkDtoOutputCopyWithImpl<OkDtoOutput>(this as OkDtoOutput, _$identity);

  /// Serializes this OkDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OkDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OkDtoOutput&&(identical(other.ok, _this.ok) || other.ok == _this.ok));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OkDtoOutput;
  return Object.hash(runtimeType,_this.ok);
}

@override
String toString() {
  final _this = this as OkDtoOutput;
  return 'OkDtoOutput(ok: ${_this.ok})';
}


}

/// @nodoc
abstract mixin class $OkDtoOutputCopyWith<$Res>  {
  factory $OkDtoOutputCopyWith(OkDtoOutput value, $Res Function(OkDtoOutput) _then) = _$OkDtoOutputCopyWithImpl;
@useResult
$Res call({
 bool ok
});




}
/// @nodoc
class _$OkDtoOutputCopyWithImpl<$Res>
    implements $OkDtoOutputCopyWith<$Res> {
  _$OkDtoOutputCopyWithImpl(this._self, this._then);

  final OkDtoOutput _self;
  final $Res Function(OkDtoOutput) _then;

/// Create a copy of OkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ok = null,}) {
  return _then(OkDtoOutput(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OkDtoOutput].
extension OkDtoOutputPatterns on OkDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OkDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OkDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OkDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _OkDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OkDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _OkDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool ok)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OkDtoOutput() when $default != null:
return $default(_that.ok);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool ok)  $default,) {final _that = this;
switch (_that) {
case _OkDtoOutput():
return $default(_that.ok);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool ok)?  $default,) {final _that = this;
switch (_that) {
case _OkDtoOutput() when $default != null:
return $default(_that.ok);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OkDtoOutput implements OkDtoOutput {
  const _OkDtoOutput({required this.ok});
  factory _OkDtoOutput.fromJson(Map<String, dynamic> json) => _$OkDtoOutputFromJson(json);

@override final  bool ok;

/// Create a copy of OkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OkDtoOutputCopyWith<_OkDtoOutput> get copyWith => __$OkDtoOutputCopyWithImpl<_OkDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OkDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OkDtoOutput&&(identical(other.ok, ok) || other.ok == ok));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ok);
}

@override
String toString() {
    return 'OkDtoOutput(ok: $ok)';
}


}

/// @nodoc
abstract mixin class _$OkDtoOutputCopyWith<$Res> implements $OkDtoOutputCopyWith<$Res> {
  factory _$OkDtoOutputCopyWith(_OkDtoOutput value, $Res Function(_OkDtoOutput) _then) = __$OkDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 bool ok
});




}
/// @nodoc
class __$OkDtoOutputCopyWithImpl<$Res>
    implements _$OkDtoOutputCopyWith<$Res> {
  __$OkDtoOutputCopyWithImpl(this._self, this._then);

  final _OkDtoOutput _self;
  final $Res Function(_OkDtoOutput) _then;

/// Create a copy of OkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ok = null,}) {
  return _then(_OkDtoOutput(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
