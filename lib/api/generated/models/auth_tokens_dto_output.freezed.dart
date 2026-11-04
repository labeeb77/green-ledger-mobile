// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_tokens_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthTokensDtoOutput {

 String get accessToken; int get expiresIn; bool get mustChangePassword; User get user; String? get refreshToken;
/// Create a copy of AuthTokensDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthTokensDtoOutputCopyWith<AuthTokensDtoOutput> get copyWith => _$AuthTokensDtoOutputCopyWithImpl<AuthTokensDtoOutput>(this as AuthTokensDtoOutput, _$identity);

  /// Serializes this AuthTokensDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuthTokensDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthTokensDtoOutput&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.expiresIn, _this.expiresIn) || other.expiresIn == _this.expiresIn)&&(identical(other.mustChangePassword, _this.mustChangePassword) || other.mustChangePassword == _this.mustChangePassword)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuthTokensDtoOutput;
  return Object.hash(runtimeType,_this.accessToken,_this.expiresIn,_this.mustChangePassword,_this.user,_this.refreshToken);
}

@override
String toString() {
  final _this = this as AuthTokensDtoOutput;
  return 'AuthTokensDtoOutput(accessToken: ${_this.accessToken}, expiresIn: ${_this.expiresIn}, mustChangePassword: ${_this.mustChangePassword}, user: ${_this.user}, refreshToken: ${_this.refreshToken})';
}


}

/// @nodoc
abstract mixin class $AuthTokensDtoOutputCopyWith<$Res>  {
  factory $AuthTokensDtoOutputCopyWith(AuthTokensDtoOutput value, $Res Function(AuthTokensDtoOutput) _then) = _$AuthTokensDtoOutputCopyWithImpl;
@useResult
$Res call({
 String accessToken, int expiresIn, bool mustChangePassword, User user, String? refreshToken
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthTokensDtoOutputCopyWithImpl<$Res>
    implements $AuthTokensDtoOutputCopyWith<$Res> {
  _$AuthTokensDtoOutputCopyWithImpl(this._self, this._then);

  final AuthTokensDtoOutput _self;
  final $Res Function(AuthTokensDtoOutput) _then;

/// Create a copy of AuthTokensDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? expiresIn = null,Object? mustChangePassword = null,Object? user = null,Object? refreshToken = freezed,}) {
  return _then(AuthTokensDtoOutput(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,mustChangePassword: null == mustChangePassword ? _self.mustChangePassword : mustChangePassword // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuthTokensDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthTokensDtoOutput].
extension AuthTokensDtoOutputPatterns on AuthTokensDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthTokensDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthTokensDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthTokensDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _AuthTokensDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthTokensDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _AuthTokensDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  int expiresIn,  bool mustChangePassword,  User user,  String? refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthTokensDtoOutput() when $default != null:
return $default(_that.accessToken,_that.expiresIn,_that.mustChangePassword,_that.user,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  int expiresIn,  bool mustChangePassword,  User user,  String? refreshToken)  $default,) {final _that = this;
switch (_that) {
case _AuthTokensDtoOutput():
return $default(_that.accessToken,_that.expiresIn,_that.mustChangePassword,_that.user,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  int expiresIn,  bool mustChangePassword,  User user,  String? refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthTokensDtoOutput() when $default != null:
return $default(_that.accessToken,_that.expiresIn,_that.mustChangePassword,_that.user,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthTokensDtoOutput implements AuthTokensDtoOutput {
  const _AuthTokensDtoOutput({required this.accessToken, required this.expiresIn, required this.mustChangePassword, required this.user, this.refreshToken});
  factory _AuthTokensDtoOutput.fromJson(Map<String, dynamic> json) => _$AuthTokensDtoOutputFromJson(json);

@override final  String accessToken;
@override final  int expiresIn;
@override final  bool mustChangePassword;
@override final  User user;
@override final  String? refreshToken;

/// Create a copy of AuthTokensDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthTokensDtoOutputCopyWith<_AuthTokensDtoOutput> get copyWith => __$AuthTokensDtoOutputCopyWithImpl<_AuthTokensDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthTokensDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthTokensDtoOutput&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.mustChangePassword, mustChangePassword) || other.mustChangePassword == mustChangePassword)&&(identical(other.user, user) || other.user == user)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accessToken,expiresIn,mustChangePassword,user,refreshToken);
}

@override
String toString() {
    return 'AuthTokensDtoOutput(accessToken: $accessToken, expiresIn: $expiresIn, mustChangePassword: $mustChangePassword, user: $user, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$AuthTokensDtoOutputCopyWith<$Res> implements $AuthTokensDtoOutputCopyWith<$Res> {
  factory _$AuthTokensDtoOutputCopyWith(_AuthTokensDtoOutput value, $Res Function(_AuthTokensDtoOutput) _then) = __$AuthTokensDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, int expiresIn, bool mustChangePassword, User user, String? refreshToken
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthTokensDtoOutputCopyWithImpl<$Res>
    implements _$AuthTokensDtoOutputCopyWith<$Res> {
  __$AuthTokensDtoOutputCopyWithImpl(this._self, this._then);

  final _AuthTokensDtoOutput _self;
  final $Res Function(_AuthTokensDtoOutput) _then;

/// Create a copy of AuthTokensDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? expiresIn = null,Object? mustChangePassword = null,Object? user = null,Object? refreshToken = freezed,}) {
  return _then(_AuthTokensDtoOutput(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,mustChangePassword: null == mustChangePassword ? _self.mustChangePassword : mustChangePassword // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuthTokensDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
