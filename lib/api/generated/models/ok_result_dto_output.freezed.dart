// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ok_result_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OkResultDtoOutput {

 bool get ok;
/// Create a copy of OkResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OkResultDtoOutputCopyWith<OkResultDtoOutput> get copyWith => _$OkResultDtoOutputCopyWithImpl<OkResultDtoOutput>(this as OkResultDtoOutput, _$identity);

  /// Serializes this OkResultDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OkResultDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OkResultDtoOutput&&(identical(other.ok, _this.ok) || other.ok == _this.ok));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OkResultDtoOutput;
  return Object.hash(runtimeType,_this.ok);
}

@override
String toString() {
  final _this = this as OkResultDtoOutput;
  return 'OkResultDtoOutput(ok: ${_this.ok})';
}


}

/// @nodoc
abstract mixin class $OkResultDtoOutputCopyWith<$Res>  {
  factory $OkResultDtoOutputCopyWith(OkResultDtoOutput value, $Res Function(OkResultDtoOutput) _then) = _$OkResultDtoOutputCopyWithImpl;
@useResult
$Res call({
 bool ok
});




}
/// @nodoc
class _$OkResultDtoOutputCopyWithImpl<$Res>
    implements $OkResultDtoOutputCopyWith<$Res> {
  _$OkResultDtoOutputCopyWithImpl(this._self, this._then);

  final OkResultDtoOutput _self;
  final $Res Function(OkResultDtoOutput) _then;

/// Create a copy of OkResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ok = null,}) {
  return _then(OkResultDtoOutput(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OkResultDtoOutput].
extension OkResultDtoOutputPatterns on OkResultDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OkResultDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OkResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OkResultDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _OkResultDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OkResultDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _OkResultDtoOutput() when $default != null:
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
case _OkResultDtoOutput() when $default != null:
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
case _OkResultDtoOutput():
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
case _OkResultDtoOutput() when $default != null:
return $default(_that.ok);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OkResultDtoOutput implements OkResultDtoOutput {
  const _OkResultDtoOutput({required this.ok});
  factory _OkResultDtoOutput.fromJson(Map<String, dynamic> json) => _$OkResultDtoOutputFromJson(json);

@override final  bool ok;

/// Create a copy of OkResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OkResultDtoOutputCopyWith<_OkResultDtoOutput> get copyWith => __$OkResultDtoOutputCopyWithImpl<_OkResultDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OkResultDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OkResultDtoOutput&&(identical(other.ok, ok) || other.ok == ok));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ok);
}

@override
String toString() {
    return 'OkResultDtoOutput(ok: $ok)';
}


}

/// @nodoc
abstract mixin class _$OkResultDtoOutputCopyWith<$Res> implements $OkResultDtoOutputCopyWith<$Res> {
  factory _$OkResultDtoOutputCopyWith(_OkResultDtoOutput value, $Res Function(_OkResultDtoOutput) _then) = __$OkResultDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 bool ok
});




}
/// @nodoc
class __$OkResultDtoOutputCopyWithImpl<$Res>
    implements _$OkResultDtoOutputCopyWith<$Res> {
  __$OkResultDtoOutputCopyWithImpl(this._self, this._then);

  final _OkResultDtoOutput _self;
  final $Res Function(_OkResultDtoOutput) _then;

/// Create a copy of OkResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ok = null,}) {
  return _then(_OkResultDtoOutput(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
