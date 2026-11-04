// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_with_temporary_password_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserWithTemporaryPasswordDtoOutput {

 User3 get user; String get temporaryPassword;
/// Create a copy of UserWithTemporaryPasswordDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserWithTemporaryPasswordDtoOutputCopyWith<UserWithTemporaryPasswordDtoOutput> get copyWith => _$UserWithTemporaryPasswordDtoOutputCopyWithImpl<UserWithTemporaryPasswordDtoOutput>(this as UserWithTemporaryPasswordDtoOutput, _$identity);

  /// Serializes this UserWithTemporaryPasswordDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserWithTemporaryPasswordDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserWithTemporaryPasswordDtoOutput&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.temporaryPassword, _this.temporaryPassword) || other.temporaryPassword == _this.temporaryPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserWithTemporaryPasswordDtoOutput;
  return Object.hash(runtimeType,_this.user,_this.temporaryPassword);
}

@override
String toString() {
  final _this = this as UserWithTemporaryPasswordDtoOutput;
  return 'UserWithTemporaryPasswordDtoOutput(user: ${_this.user}, temporaryPassword: ${_this.temporaryPassword})';
}


}

/// @nodoc
abstract mixin class $UserWithTemporaryPasswordDtoOutputCopyWith<$Res>  {
  factory $UserWithTemporaryPasswordDtoOutputCopyWith(UserWithTemporaryPasswordDtoOutput value, $Res Function(UserWithTemporaryPasswordDtoOutput) _then) = _$UserWithTemporaryPasswordDtoOutputCopyWithImpl;
@useResult
$Res call({
 User3 user, String temporaryPassword
});


$User3CopyWith<$Res> get user;

}
/// @nodoc
class _$UserWithTemporaryPasswordDtoOutputCopyWithImpl<$Res>
    implements $UserWithTemporaryPasswordDtoOutputCopyWith<$Res> {
  _$UserWithTemporaryPasswordDtoOutputCopyWithImpl(this._self, this._then);

  final UserWithTemporaryPasswordDtoOutput _self;
  final $Res Function(UserWithTemporaryPasswordDtoOutput) _then;

/// Create a copy of UserWithTemporaryPasswordDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? temporaryPassword = null,}) {
  return _then(UserWithTemporaryPasswordDtoOutput(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User3,temporaryPassword: null == temporaryPassword ? _self.temporaryPassword : temporaryPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserWithTemporaryPasswordDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User3CopyWith<$Res> get user {
  
  return $User3CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserWithTemporaryPasswordDtoOutput].
extension UserWithTemporaryPasswordDtoOutputPatterns on UserWithTemporaryPasswordDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserWithTemporaryPasswordDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserWithTemporaryPasswordDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserWithTemporaryPasswordDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _UserWithTemporaryPasswordDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserWithTemporaryPasswordDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _UserWithTemporaryPasswordDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User3 user,  String temporaryPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserWithTemporaryPasswordDtoOutput() when $default != null:
return $default(_that.user,_that.temporaryPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User3 user,  String temporaryPassword)  $default,) {final _that = this;
switch (_that) {
case _UserWithTemporaryPasswordDtoOutput():
return $default(_that.user,_that.temporaryPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User3 user,  String temporaryPassword)?  $default,) {final _that = this;
switch (_that) {
case _UserWithTemporaryPasswordDtoOutput() when $default != null:
return $default(_that.user,_that.temporaryPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserWithTemporaryPasswordDtoOutput implements UserWithTemporaryPasswordDtoOutput {
  const _UserWithTemporaryPasswordDtoOutput({required this.user, required this.temporaryPassword});
  factory _UserWithTemporaryPasswordDtoOutput.fromJson(Map<String, dynamic> json) => _$UserWithTemporaryPasswordDtoOutputFromJson(json);

@override final  User3 user;
@override final  String temporaryPassword;

/// Create a copy of UserWithTemporaryPasswordDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserWithTemporaryPasswordDtoOutputCopyWith<_UserWithTemporaryPasswordDtoOutput> get copyWith => __$UserWithTemporaryPasswordDtoOutputCopyWithImpl<_UserWithTemporaryPasswordDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserWithTemporaryPasswordDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserWithTemporaryPasswordDtoOutput&&(identical(other.user, user) || other.user == user)&&(identical(other.temporaryPassword, temporaryPassword) || other.temporaryPassword == temporaryPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,user,temporaryPassword);
}

@override
String toString() {
    return 'UserWithTemporaryPasswordDtoOutput(user: $user, temporaryPassword: $temporaryPassword)';
}


}

/// @nodoc
abstract mixin class _$UserWithTemporaryPasswordDtoOutputCopyWith<$Res> implements $UserWithTemporaryPasswordDtoOutputCopyWith<$Res> {
  factory _$UserWithTemporaryPasswordDtoOutputCopyWith(_UserWithTemporaryPasswordDtoOutput value, $Res Function(_UserWithTemporaryPasswordDtoOutput) _then) = __$UserWithTemporaryPasswordDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 User3 user, String temporaryPassword
});


@override $User3CopyWith<$Res> get user;

}
/// @nodoc
class __$UserWithTemporaryPasswordDtoOutputCopyWithImpl<$Res>
    implements _$UserWithTemporaryPasswordDtoOutputCopyWith<$Res> {
  __$UserWithTemporaryPasswordDtoOutputCopyWithImpl(this._self, this._then);

  final _UserWithTemporaryPasswordDtoOutput _self;
  final $Res Function(_UserWithTemporaryPasswordDtoOutput) _then;

/// Create a copy of UserWithTemporaryPasswordDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? temporaryPassword = null,}) {
  return _then(_UserWithTemporaryPasswordDtoOutput(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User3,temporaryPassword: null == temporaryPassword ? _self.temporaryPassword : temporaryPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserWithTemporaryPasswordDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User3CopyWith<$Res> get user {
  
  return $User3CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
