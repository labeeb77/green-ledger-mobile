// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_business_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedBusinessDtoOutput {

 Business2 get business; Owner2 get owner; String get temporaryPassword;
/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedBusinessDtoOutputCopyWith<CreatedBusinessDtoOutput> get copyWith => _$CreatedBusinessDtoOutputCopyWithImpl<CreatedBusinessDtoOutput>(this as CreatedBusinessDtoOutput, _$identity);

  /// Serializes this CreatedBusinessDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatedBusinessDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedBusinessDtoOutput&&(identical(other.business, _this.business) || other.business == _this.business)&&(identical(other.owner, _this.owner) || other.owner == _this.owner)&&(identical(other.temporaryPassword, _this.temporaryPassword) || other.temporaryPassword == _this.temporaryPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatedBusinessDtoOutput;
  return Object.hash(runtimeType,_this.business,_this.owner,_this.temporaryPassword);
}

@override
String toString() {
  final _this = this as CreatedBusinessDtoOutput;
  return 'CreatedBusinessDtoOutput(business: ${_this.business}, owner: ${_this.owner}, temporaryPassword: ${_this.temporaryPassword})';
}


}

/// @nodoc
abstract mixin class $CreatedBusinessDtoOutputCopyWith<$Res>  {
  factory $CreatedBusinessDtoOutputCopyWith(CreatedBusinessDtoOutput value, $Res Function(CreatedBusinessDtoOutput) _then) = _$CreatedBusinessDtoOutputCopyWithImpl;
@useResult
$Res call({
 Business2 business, Owner2 owner, String temporaryPassword
});


$Business2CopyWith<$Res> get business;$Owner2CopyWith<$Res> get owner;

}
/// @nodoc
class _$CreatedBusinessDtoOutputCopyWithImpl<$Res>
    implements $CreatedBusinessDtoOutputCopyWith<$Res> {
  _$CreatedBusinessDtoOutputCopyWithImpl(this._self, this._then);

  final CreatedBusinessDtoOutput _self;
  final $Res Function(CreatedBusinessDtoOutput) _then;

/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? business = null,Object? owner = null,Object? temporaryPassword = null,}) {
  return _then(CreatedBusinessDtoOutput(
business: null == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business2,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner2,temporaryPassword: null == temporaryPassword ? _self.temporaryPassword : temporaryPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Business2CopyWith<$Res> get business {
  
  return $Business2CopyWith<$Res>(_self.business, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Owner2CopyWith<$Res> get owner {
  
  return $Owner2CopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatedBusinessDtoOutput].
extension CreatedBusinessDtoOutputPatterns on CreatedBusinessDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedBusinessDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedBusinessDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedBusinessDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CreatedBusinessDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedBusinessDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedBusinessDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Business2 business,  Owner2 owner,  String temporaryPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedBusinessDtoOutput() when $default != null:
return $default(_that.business,_that.owner,_that.temporaryPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Business2 business,  Owner2 owner,  String temporaryPassword)  $default,) {final _that = this;
switch (_that) {
case _CreatedBusinessDtoOutput():
return $default(_that.business,_that.owner,_that.temporaryPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Business2 business,  Owner2 owner,  String temporaryPassword)?  $default,) {final _that = this;
switch (_that) {
case _CreatedBusinessDtoOutput() when $default != null:
return $default(_that.business,_that.owner,_that.temporaryPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedBusinessDtoOutput implements CreatedBusinessDtoOutput {
  const _CreatedBusinessDtoOutput({required this.business, required this.owner, required this.temporaryPassword});
  factory _CreatedBusinessDtoOutput.fromJson(Map<String, dynamic> json) => _$CreatedBusinessDtoOutputFromJson(json);

@override final  Business2 business;
@override final  Owner2 owner;
@override final  String temporaryPassword;

/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedBusinessDtoOutputCopyWith<_CreatedBusinessDtoOutput> get copyWith => __$CreatedBusinessDtoOutputCopyWithImpl<_CreatedBusinessDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedBusinessDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedBusinessDtoOutput&&(identical(other.business, business) || other.business == business)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.temporaryPassword, temporaryPassword) || other.temporaryPassword == temporaryPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,business,owner,temporaryPassword);
}

@override
String toString() {
    return 'CreatedBusinessDtoOutput(business: $business, owner: $owner, temporaryPassword: $temporaryPassword)';
}


}

/// @nodoc
abstract mixin class _$CreatedBusinessDtoOutputCopyWith<$Res> implements $CreatedBusinessDtoOutputCopyWith<$Res> {
  factory _$CreatedBusinessDtoOutputCopyWith(_CreatedBusinessDtoOutput value, $Res Function(_CreatedBusinessDtoOutput) _then) = __$CreatedBusinessDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 Business2 business, Owner2 owner, String temporaryPassword
});


@override $Business2CopyWith<$Res> get business;@override $Owner2CopyWith<$Res> get owner;

}
/// @nodoc
class __$CreatedBusinessDtoOutputCopyWithImpl<$Res>
    implements _$CreatedBusinessDtoOutputCopyWith<$Res> {
  __$CreatedBusinessDtoOutputCopyWithImpl(this._self, this._then);

  final _CreatedBusinessDtoOutput _self;
  final $Res Function(_CreatedBusinessDtoOutput) _then;

/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? business = null,Object? owner = null,Object? temporaryPassword = null,}) {
  return _then(_CreatedBusinessDtoOutput(
business: null == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business2,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner2,temporaryPassword: null == temporaryPassword ? _self.temporaryPassword : temporaryPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Business2CopyWith<$Res> get business {
  
  return $Business2CopyWith<$Res>(_self.business, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of CreatedBusinessDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Owner2CopyWith<$Res> get owner {
  
  return $Owner2CopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
