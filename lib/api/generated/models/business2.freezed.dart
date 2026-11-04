// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Business2 {

 String get id; String get name; String? get phone; DateTime get createdAt; Subscription3? get subscription; int get userCount; int get activeUserCount; String? get lastActivityAt; String? get supportAccessUntil;
/// Create a copy of Business2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Business2CopyWith<Business2> get copyWith => _$Business2CopyWithImpl<Business2>(this as Business2, _$identity);

  /// Serializes this Business2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Business2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Business2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.subscription, _this.subscription) || other.subscription == _this.subscription)&&(identical(other.userCount, _this.userCount) || other.userCount == _this.userCount)&&(identical(other.activeUserCount, _this.activeUserCount) || other.activeUserCount == _this.activeUserCount)&&(identical(other.lastActivityAt, _this.lastActivityAt) || other.lastActivityAt == _this.lastActivityAt)&&(identical(other.supportAccessUntil, _this.supportAccessUntil) || other.supportAccessUntil == _this.supportAccessUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Business2;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.createdAt,_this.subscription,_this.userCount,_this.activeUserCount,_this.lastActivityAt,_this.supportAccessUntil);
}

@override
String toString() {
  final _this = this as Business2;
  return 'Business2(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, createdAt: ${_this.createdAt}, subscription: ${_this.subscription}, userCount: ${_this.userCount}, activeUserCount: ${_this.activeUserCount}, lastActivityAt: ${_this.lastActivityAt}, supportAccessUntil: ${_this.supportAccessUntil})';
}


}

/// @nodoc
abstract mixin class $Business2CopyWith<$Res>  {
  factory $Business2CopyWith(Business2 value, $Res Function(Business2) _then) = _$Business2CopyWithImpl;
@useResult
$Res call({
 String id, String name, String? phone, DateTime createdAt, Subscription3? subscription, int userCount, int activeUserCount, String? lastActivityAt, String? supportAccessUntil
});


$Subscription3CopyWith<$Res>? get subscription;

}
/// @nodoc
class _$Business2CopyWithImpl<$Res>
    implements $Business2CopyWith<$Res> {
  _$Business2CopyWithImpl(this._self, this._then);

  final Business2 _self;
  final $Res Function(Business2) _then;

/// Create a copy of Business2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? createdAt = null,Object? subscription = freezed,Object? userCount = null,Object? activeUserCount = null,Object? lastActivityAt = freezed,Object? supportAccessUntil = freezed,}) {
  return _then(Business2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as Subscription3?,userCount: null == userCount ? _self.userCount : userCount // ignore: cast_nullable_to_non_nullable
as int,activeUserCount: null == activeUserCount ? _self.activeUserCount : activeUserCount // ignore: cast_nullable_to_non_nullable
as int,lastActivityAt: freezed == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as String?,supportAccessUntil: freezed == supportAccessUntil ? _self.supportAccessUntil : supportAccessUntil // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Business2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Subscription3CopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $Subscription3CopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}


/// Adds pattern-matching-related methods to [Business2].
extension Business2Patterns on Business2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Business2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Business2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Business2 value)  $default,){
final _that = this;
switch (_that) {
case _Business2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Business2 value)?  $default,){
final _that = this;
switch (_that) {
case _Business2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  DateTime createdAt,  Subscription3? subscription,  int userCount,  int activeUserCount,  String? lastActivityAt,  String? supportAccessUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Business2() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.createdAt,_that.subscription,_that.userCount,_that.activeUserCount,_that.lastActivityAt,_that.supportAccessUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  DateTime createdAt,  Subscription3? subscription,  int userCount,  int activeUserCount,  String? lastActivityAt,  String? supportAccessUntil)  $default,) {final _that = this;
switch (_that) {
case _Business2():
return $default(_that.id,_that.name,_that.phone,_that.createdAt,_that.subscription,_that.userCount,_that.activeUserCount,_that.lastActivityAt,_that.supportAccessUntil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? phone,  DateTime createdAt,  Subscription3? subscription,  int userCount,  int activeUserCount,  String? lastActivityAt,  String? supportAccessUntil)?  $default,) {final _that = this;
switch (_that) {
case _Business2() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.createdAt,_that.subscription,_that.userCount,_that.activeUserCount,_that.lastActivityAt,_that.supportAccessUntil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Business2 implements Business2 {
  const _Business2({required this.id, required this.name, required this.phone, required this.createdAt, required this.subscription, required this.userCount, required this.activeUserCount, required this.lastActivityAt, required this.supportAccessUntil});
  factory _Business2.fromJson(Map<String, dynamic> json) => _$Business2FromJson(json);

@override final  String id;
@override final  String name;
@override final  String? phone;
@override final  DateTime createdAt;
@override final  Subscription3? subscription;
@override final  int userCount;
@override final  int activeUserCount;
@override final  String? lastActivityAt;
@override final  String? supportAccessUntil;

/// Create a copy of Business2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Business2CopyWith<_Business2> get copyWith => __$Business2CopyWithImpl<_Business2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Business2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Business2&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.userCount, userCount) || other.userCount == userCount)&&(identical(other.activeUserCount, activeUserCount) || other.activeUserCount == activeUserCount)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.supportAccessUntil, supportAccessUntil) || other.supportAccessUntil == supportAccessUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,createdAt,subscription,userCount,activeUserCount,lastActivityAt,supportAccessUntil);
}

@override
String toString() {
    return 'Business2(id: $id, name: $name, phone: $phone, createdAt: $createdAt, subscription: $subscription, userCount: $userCount, activeUserCount: $activeUserCount, lastActivityAt: $lastActivityAt, supportAccessUntil: $supportAccessUntil)';
}


}

/// @nodoc
abstract mixin class _$Business2CopyWith<$Res> implements $Business2CopyWith<$Res> {
  factory _$Business2CopyWith(_Business2 value, $Res Function(_Business2) _then) = __$Business2CopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? phone, DateTime createdAt, Subscription3? subscription, int userCount, int activeUserCount, String? lastActivityAt, String? supportAccessUntil
});


@override $Subscription3CopyWith<$Res>? get subscription;

}
/// @nodoc
class __$Business2CopyWithImpl<$Res>
    implements _$Business2CopyWith<$Res> {
  __$Business2CopyWithImpl(this._self, this._then);

  final _Business2 _self;
  final $Res Function(_Business2) _then;

/// Create a copy of Business2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? createdAt = null,Object? subscription = freezed,Object? userCount = null,Object? activeUserCount = null,Object? lastActivityAt = freezed,Object? supportAccessUntil = freezed,}) {
  return _then(_Business2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as Subscription3?,userCount: null == userCount ? _self.userCount : userCount // ignore: cast_nullable_to_non_nullable
as int,activeUserCount: null == activeUserCount ? _self.activeUserCount : activeUserCount // ignore: cast_nullable_to_non_nullable
as int,lastActivityAt: freezed == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as String?,supportAccessUntil: freezed == supportAccessUntil ? _self.supportAccessUntil : supportAccessUntil // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Business2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Subscription3CopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $Subscription3CopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}

// dart format on
