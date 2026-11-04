// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_password_reset_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OwnerPasswordResetDtoOutput {

 Owner3 get owner; String get temporaryPassword;
/// Create a copy of OwnerPasswordResetDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerPasswordResetDtoOutputCopyWith<OwnerPasswordResetDtoOutput> get copyWith => _$OwnerPasswordResetDtoOutputCopyWithImpl<OwnerPasswordResetDtoOutput>(this as OwnerPasswordResetDtoOutput, _$identity);

  /// Serializes this OwnerPasswordResetDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OwnerPasswordResetDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerPasswordResetDtoOutput&&(identical(other.owner, _this.owner) || other.owner == _this.owner)&&(identical(other.temporaryPassword, _this.temporaryPassword) || other.temporaryPassword == _this.temporaryPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OwnerPasswordResetDtoOutput;
  return Object.hash(runtimeType,_this.owner,_this.temporaryPassword);
}

@override
String toString() {
  final _this = this as OwnerPasswordResetDtoOutput;
  return 'OwnerPasswordResetDtoOutput(owner: ${_this.owner}, temporaryPassword: ${_this.temporaryPassword})';
}


}

/// @nodoc
abstract mixin class $OwnerPasswordResetDtoOutputCopyWith<$Res>  {
  factory $OwnerPasswordResetDtoOutputCopyWith(OwnerPasswordResetDtoOutput value, $Res Function(OwnerPasswordResetDtoOutput) _then) = _$OwnerPasswordResetDtoOutputCopyWithImpl;
@useResult
$Res call({
 Owner3 owner, String temporaryPassword
});


$Owner3CopyWith<$Res> get owner;

}
/// @nodoc
class _$OwnerPasswordResetDtoOutputCopyWithImpl<$Res>
    implements $OwnerPasswordResetDtoOutputCopyWith<$Res> {
  _$OwnerPasswordResetDtoOutputCopyWithImpl(this._self, this._then);

  final OwnerPasswordResetDtoOutput _self;
  final $Res Function(OwnerPasswordResetDtoOutput) _then;

/// Create a copy of OwnerPasswordResetDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = null,Object? temporaryPassword = null,}) {
  return _then(OwnerPasswordResetDtoOutput(
owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner3,temporaryPassword: null == temporaryPassword ? _self.temporaryPassword : temporaryPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of OwnerPasswordResetDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Owner3CopyWith<$Res> get owner {
  
  return $Owner3CopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [OwnerPasswordResetDtoOutput].
extension OwnerPasswordResetDtoOutputPatterns on OwnerPasswordResetDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OwnerPasswordResetDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OwnerPasswordResetDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OwnerPasswordResetDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _OwnerPasswordResetDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OwnerPasswordResetDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _OwnerPasswordResetDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Owner3 owner,  String temporaryPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OwnerPasswordResetDtoOutput() when $default != null:
return $default(_that.owner,_that.temporaryPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Owner3 owner,  String temporaryPassword)  $default,) {final _that = this;
switch (_that) {
case _OwnerPasswordResetDtoOutput():
return $default(_that.owner,_that.temporaryPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Owner3 owner,  String temporaryPassword)?  $default,) {final _that = this;
switch (_that) {
case _OwnerPasswordResetDtoOutput() when $default != null:
return $default(_that.owner,_that.temporaryPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OwnerPasswordResetDtoOutput implements OwnerPasswordResetDtoOutput {
  const _OwnerPasswordResetDtoOutput({required this.owner, required this.temporaryPassword});
  factory _OwnerPasswordResetDtoOutput.fromJson(Map<String, dynamic> json) => _$OwnerPasswordResetDtoOutputFromJson(json);

@override final  Owner3 owner;
@override final  String temporaryPassword;

/// Create a copy of OwnerPasswordResetDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerPasswordResetDtoOutputCopyWith<_OwnerPasswordResetDtoOutput> get copyWith => __$OwnerPasswordResetDtoOutputCopyWithImpl<_OwnerPasswordResetDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerPasswordResetDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnerPasswordResetDtoOutput&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.temporaryPassword, temporaryPassword) || other.temporaryPassword == temporaryPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,owner,temporaryPassword);
}

@override
String toString() {
    return 'OwnerPasswordResetDtoOutput(owner: $owner, temporaryPassword: $temporaryPassword)';
}


}

/// @nodoc
abstract mixin class _$OwnerPasswordResetDtoOutputCopyWith<$Res> implements $OwnerPasswordResetDtoOutputCopyWith<$Res> {
  factory _$OwnerPasswordResetDtoOutputCopyWith(_OwnerPasswordResetDtoOutput value, $Res Function(_OwnerPasswordResetDtoOutput) _then) = __$OwnerPasswordResetDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 Owner3 owner, String temporaryPassword
});


@override $Owner3CopyWith<$Res> get owner;

}
/// @nodoc
class __$OwnerPasswordResetDtoOutputCopyWithImpl<$Res>
    implements _$OwnerPasswordResetDtoOutputCopyWith<$Res> {
  __$OwnerPasswordResetDtoOutputCopyWithImpl(this._self, this._then);

  final _OwnerPasswordResetDtoOutput _self;
  final $Res Function(_OwnerPasswordResetDtoOutput) _then;

/// Create a copy of OwnerPasswordResetDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = null,Object? temporaryPassword = null,}) {
  return _then(_OwnerPasswordResetDtoOutput(
owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner3,temporaryPassword: null == temporaryPassword ? _self.temporaryPassword : temporaryPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OwnerPasswordResetDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Owner3CopyWith<$Res> get owner {
  
  return $Owner3CopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
