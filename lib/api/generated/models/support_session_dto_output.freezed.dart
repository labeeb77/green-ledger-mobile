// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_session_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportSessionDtoOutput {

 String get accessToken; DateTime get expiresAt; Business3 get business;
/// Create a copy of SupportSessionDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportSessionDtoOutputCopyWith<SupportSessionDtoOutput> get copyWith => _$SupportSessionDtoOutputCopyWithImpl<SupportSessionDtoOutput>(this as SupportSessionDtoOutput, _$identity);

  /// Serializes this SupportSessionDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupportSessionDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportSessionDtoOutput&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.business, _this.business) || other.business == _this.business));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupportSessionDtoOutput;
  return Object.hash(runtimeType,_this.accessToken,_this.expiresAt,_this.business);
}

@override
String toString() {
  final _this = this as SupportSessionDtoOutput;
  return 'SupportSessionDtoOutput(accessToken: ${_this.accessToken}, expiresAt: ${_this.expiresAt}, business: ${_this.business})';
}


}

/// @nodoc
abstract mixin class $SupportSessionDtoOutputCopyWith<$Res>  {
  factory $SupportSessionDtoOutputCopyWith(SupportSessionDtoOutput value, $Res Function(SupportSessionDtoOutput) _then) = _$SupportSessionDtoOutputCopyWithImpl;
@useResult
$Res call({
 String accessToken, DateTime expiresAt, Business3 business
});


$Business3CopyWith<$Res> get business;

}
/// @nodoc
class _$SupportSessionDtoOutputCopyWithImpl<$Res>
    implements $SupportSessionDtoOutputCopyWith<$Res> {
  _$SupportSessionDtoOutputCopyWithImpl(this._self, this._then);

  final SupportSessionDtoOutput _self;
  final $Res Function(SupportSessionDtoOutput) _then;

/// Create a copy of SupportSessionDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? expiresAt = null,Object? business = null,}) {
  return _then(SupportSessionDtoOutput(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,business: null == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business3,
  ));
}
/// Create a copy of SupportSessionDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Business3CopyWith<$Res> get business {
  
  return $Business3CopyWith<$Res>(_self.business, (value) {
    return _then(_self.copyWith(business: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupportSessionDtoOutput].
extension SupportSessionDtoOutputPatterns on SupportSessionDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportSessionDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportSessionDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportSessionDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupportSessionDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportSessionDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupportSessionDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  DateTime expiresAt,  Business3 business)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportSessionDtoOutput() when $default != null:
return $default(_that.accessToken,_that.expiresAt,_that.business);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  DateTime expiresAt,  Business3 business)  $default,) {final _that = this;
switch (_that) {
case _SupportSessionDtoOutput():
return $default(_that.accessToken,_that.expiresAt,_that.business);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  DateTime expiresAt,  Business3 business)?  $default,) {final _that = this;
switch (_that) {
case _SupportSessionDtoOutput() when $default != null:
return $default(_that.accessToken,_that.expiresAt,_that.business);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportSessionDtoOutput implements SupportSessionDtoOutput {
  const _SupportSessionDtoOutput({required this.accessToken, required this.expiresAt, required this.business});
  factory _SupportSessionDtoOutput.fromJson(Map<String, dynamic> json) => _$SupportSessionDtoOutputFromJson(json);

@override final  String accessToken;
@override final  DateTime expiresAt;
@override final  Business3 business;

/// Create a copy of SupportSessionDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportSessionDtoOutputCopyWith<_SupportSessionDtoOutput> get copyWith => __$SupportSessionDtoOutputCopyWithImpl<_SupportSessionDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportSessionDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportSessionDtoOutput&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.business, business) || other.business == business));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accessToken,expiresAt,business);
}

@override
String toString() {
    return 'SupportSessionDtoOutput(accessToken: $accessToken, expiresAt: $expiresAt, business: $business)';
}


}

/// @nodoc
abstract mixin class _$SupportSessionDtoOutputCopyWith<$Res> implements $SupportSessionDtoOutputCopyWith<$Res> {
  factory _$SupportSessionDtoOutputCopyWith(_SupportSessionDtoOutput value, $Res Function(_SupportSessionDtoOutput) _then) = __$SupportSessionDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, DateTime expiresAt, Business3 business
});


@override $Business3CopyWith<$Res> get business;

}
/// @nodoc
class __$SupportSessionDtoOutputCopyWithImpl<$Res>
    implements _$SupportSessionDtoOutputCopyWith<$Res> {
  __$SupportSessionDtoOutputCopyWithImpl(this._self, this._then);

  final _SupportSessionDtoOutput _self;
  final $Res Function(_SupportSessionDtoOutput) _then;

/// Create a copy of SupportSessionDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? expiresAt = null,Object? business = null,}) {
  return _then(_SupportSessionDtoOutput(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,business: null == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business3,
  ));
}

/// Create a copy of SupportSessionDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Business3CopyWith<$Res> get business {
  
  return $Business3CopyWith<$Res>(_self.business, (value) {
    return _then(_self.copyWith(business: value));
  });
}
}

// dart format on
