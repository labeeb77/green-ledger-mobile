// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'me_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeDtoOutput {

 User2 get user; bool get mustChangePassword; Business? get business; Subscription? get subscription; Map<String, PermissionsPermissions> get permissions; Support? get support;
/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeDtoOutputCopyWith<MeDtoOutput> get copyWith => _$MeDtoOutputCopyWithImpl<MeDtoOutput>(this as MeDtoOutput, _$identity);

  /// Serializes this MeDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MeDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeDtoOutput&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.mustChangePassword, _this.mustChangePassword) || other.mustChangePassword == _this.mustChangePassword)&&(identical(other.business, _this.business) || other.business == _this.business)&&(identical(other.subscription, _this.subscription) || other.subscription == _this.subscription)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions)&&(identical(other.support, _this.support) || other.support == _this.support));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MeDtoOutput;
  return Object.hash(runtimeType,_this.user,_this.mustChangePassword,_this.business,_this.subscription,const DeepCollectionEquality().hash(_this.permissions),_this.support);
}

@override
String toString() {
  final _this = this as MeDtoOutput;
  return 'MeDtoOutput(user: ${_this.user}, mustChangePassword: ${_this.mustChangePassword}, business: ${_this.business}, subscription: ${_this.subscription}, permissions: ${_this.permissions}, support: ${_this.support})';
}


}

/// @nodoc
abstract mixin class $MeDtoOutputCopyWith<$Res>  {
  factory $MeDtoOutputCopyWith(MeDtoOutput value, $Res Function(MeDtoOutput) _then) = _$MeDtoOutputCopyWithImpl;
@useResult
$Res call({
 User2 user, bool mustChangePassword, Business? business, Subscription? subscription, Map<String, PermissionsPermissions> permissions, Support? support
});


$User2CopyWith<$Res> get user;$BusinessCopyWith<$Res>? get business;$SubscriptionCopyWith<$Res>? get subscription;$SupportCopyWith<$Res>? get support;

}
/// @nodoc
class _$MeDtoOutputCopyWithImpl<$Res>
    implements $MeDtoOutputCopyWith<$Res> {
  _$MeDtoOutputCopyWithImpl(this._self, this._then);

  final MeDtoOutput _self;
  final $Res Function(MeDtoOutput) _then;

/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? mustChangePassword = null,Object? business = freezed,Object? subscription = freezed,Object? permissions = null,Object? support = freezed,}) {
  return _then(MeDtoOutput(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User2,mustChangePassword: null == mustChangePassword ? _self.mustChangePassword : mustChangePassword // ignore: cast_nullable_to_non_nullable
as bool,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as Subscription?,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Map<String, PermissionsPermissions>,support: freezed == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as Support?,
  ));
}
/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User2CopyWith<$Res> get user {
  
  return $User2CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $BusinessCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $SubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportCopyWith<$Res>? get support {
    if (_self.support == null) {
    return null;
  }

  return $SupportCopyWith<$Res>(_self.support!, (value) {
    return _then(_self.copyWith(support: value));
  });
}
}


/// Adds pattern-matching-related methods to [MeDtoOutput].
extension MeDtoOutputPatterns on MeDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _MeDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _MeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User2 user,  bool mustChangePassword,  Business? business,  Subscription? subscription,  Map<String, PermissionsPermissions> permissions,  Support? support)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeDtoOutput() when $default != null:
return $default(_that.user,_that.mustChangePassword,_that.business,_that.subscription,_that.permissions,_that.support);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User2 user,  bool mustChangePassword,  Business? business,  Subscription? subscription,  Map<String, PermissionsPermissions> permissions,  Support? support)  $default,) {final _that = this;
switch (_that) {
case _MeDtoOutput():
return $default(_that.user,_that.mustChangePassword,_that.business,_that.subscription,_that.permissions,_that.support);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User2 user,  bool mustChangePassword,  Business? business,  Subscription? subscription,  Map<String, PermissionsPermissions> permissions,  Support? support)?  $default,) {final _that = this;
switch (_that) {
case _MeDtoOutput() when $default != null:
return $default(_that.user,_that.mustChangePassword,_that.business,_that.subscription,_that.permissions,_that.support);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeDtoOutput implements MeDtoOutput {
  const _MeDtoOutput({required this.user, required this.mustChangePassword, required this.business, required this.subscription, required  Map<String, PermissionsPermissions> permissions, required this.support}): _permissions = permissions;
  factory _MeDtoOutput.fromJson(Map<String, dynamic> json) => _$MeDtoOutputFromJson(json);

@override final  User2 user;
@override final  bool mustChangePassword;
@override final  Business? business;
@override final  Subscription? subscription;
 final  Map<String, PermissionsPermissions> _permissions;
@override Map<String, PermissionsPermissions> get permissions {
  if (_permissions is EqualUnmodifiableMapView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_permissions);
}

@override final  Support? support;

/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeDtoOutputCopyWith<_MeDtoOutput> get copyWith => __$MeDtoOutputCopyWithImpl<_MeDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeDtoOutput&&(identical(other.user, user) || other.user == user)&&(identical(other.mustChangePassword, mustChangePassword) || other.mustChangePassword == mustChangePassword)&&(identical(other.business, business) || other.business == business)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&const DeepCollectionEquality().equals(other.permissions, _permissions)&&(identical(other.support, support) || other.support == support));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,user,mustChangePassword,business,subscription,const DeepCollectionEquality().hash(_permissions),support);
}

@override
String toString() {
    return 'MeDtoOutput(user: $user, mustChangePassword: $mustChangePassword, business: $business, subscription: $subscription, permissions: $permissions, support: $support)';
}


}

/// @nodoc
abstract mixin class _$MeDtoOutputCopyWith<$Res> implements $MeDtoOutputCopyWith<$Res> {
  factory _$MeDtoOutputCopyWith(_MeDtoOutput value, $Res Function(_MeDtoOutput) _then) = __$MeDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 User2 user, bool mustChangePassword, Business? business, Subscription? subscription, Map<String, PermissionsPermissions> permissions, Support? support
});


@override $User2CopyWith<$Res> get user;@override $BusinessCopyWith<$Res>? get business;@override $SubscriptionCopyWith<$Res>? get subscription;@override $SupportCopyWith<$Res>? get support;

}
/// @nodoc
class __$MeDtoOutputCopyWithImpl<$Res>
    implements _$MeDtoOutputCopyWith<$Res> {
  __$MeDtoOutputCopyWithImpl(this._self, this._then);

  final _MeDtoOutput _self;
  final $Res Function(_MeDtoOutput) _then;

/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? mustChangePassword = null,Object? business = freezed,Object? subscription = freezed,Object? permissions = null,Object? support = freezed,}) {
  return _then(_MeDtoOutput(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User2,mustChangePassword: null == mustChangePassword ? _self.mustChangePassword : mustChangePassword // ignore: cast_nullable_to_non_nullable
as bool,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as Business?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as Subscription?,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as Map<String, PermissionsPermissions>,support: freezed == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as Support?,
  ));
}

/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User2CopyWith<$Res> get user {
  
  return $User2CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $BusinessCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $SubscriptionCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}/// Create a copy of MeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportCopyWith<$Res>? get support {
    if (_self.support == null) {
    return null;
  }

  return $SupportCopyWith<$Res>(_self.support!, (value) {
    return _then(_self.copyWith(support: value));
  });
}
}

// dart format on
