// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User3 {

 String get id; String get name; String get phone; Role get role; bool get active; bool get mustChangePassword; DateTime? get lastLoginAt; DateTime get createdAt;
/// Create a copy of User3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$User3CopyWith<User3> get copyWith => _$User3CopyWithImpl<User3>(this as User3, _$identity);

  /// Serializes this User3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as User3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User3&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.mustChangePassword, _this.mustChangePassword) || other.mustChangePassword == _this.mustChangePassword)&&(identical(other.lastLoginAt, _this.lastLoginAt) || other.lastLoginAt == _this.lastLoginAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as User3;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.role,_this.active,_this.mustChangePassword,_this.lastLoginAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as User3;
  return 'User3(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, role: ${_this.role}, active: ${_this.active}, mustChangePassword: ${_this.mustChangePassword}, lastLoginAt: ${_this.lastLoginAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $User3CopyWith<$Res>  {
  factory $User3CopyWith(User3 value, $Res Function(User3) _then) = _$User3CopyWithImpl;
@useResult
$Res call({
 String id, String name, String phone, Role role, bool active, bool mustChangePassword, DateTime? lastLoginAt, DateTime createdAt
});




}
/// @nodoc
class _$User3CopyWithImpl<$Res>
    implements $User3CopyWith<$Res> {
  _$User3CopyWithImpl(this._self, this._then);

  final User3 _self;
  final $Res Function(User3) _then;

/// Create a copy of User3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? role = null,Object? active = null,Object? mustChangePassword = null,Object? lastLoginAt = freezed,Object? createdAt = null,}) {
  return _then(User3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,mustChangePassword: null == mustChangePassword ? _self.mustChangePassword : mustChangePassword // ignore: cast_nullable_to_non_nullable
as bool,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [User3].
extension User3Patterns on User3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User3 value)  $default,){
final _that = this;
switch (_that) {
case _User3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User3 value)?  $default,){
final _that = this;
switch (_that) {
case _User3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  Role role,  bool active,  bool mustChangePassword,  DateTime? lastLoginAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User3() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.role,_that.active,_that.mustChangePassword,_that.lastLoginAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  Role role,  bool active,  bool mustChangePassword,  DateTime? lastLoginAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _User3():
return $default(_that.id,_that.name,_that.phone,_that.role,_that.active,_that.mustChangePassword,_that.lastLoginAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String phone,  Role role,  bool active,  bool mustChangePassword,  DateTime? lastLoginAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _User3() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.role,_that.active,_that.mustChangePassword,_that.lastLoginAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User3 implements User3 {
  const _User3({required this.id, required this.name, required this.phone, required this.role, required this.active, required this.mustChangePassword, required this.lastLoginAt, required this.createdAt});
  factory _User3.fromJson(Map<String, dynamic> json) => _$User3FromJson(json);

@override final  String id;
@override final  String name;
@override final  String phone;
@override final  Role role;
@override final  bool active;
@override final  bool mustChangePassword;
@override final  DateTime? lastLoginAt;
@override final  DateTime createdAt;

/// Create a copy of User3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$User3CopyWith<_User3> get copyWith => __$User3CopyWithImpl<_User3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$User3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _User3&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active)&&(identical(other.mustChangePassword, mustChangePassword) || other.mustChangePassword == mustChangePassword)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,role,active,mustChangePassword,lastLoginAt,createdAt);
}

@override
String toString() {
    return 'User3(id: $id, name: $name, phone: $phone, role: $role, active: $active, mustChangePassword: $mustChangePassword, lastLoginAt: $lastLoginAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$User3CopyWith<$Res> implements $User3CopyWith<$Res> {
  factory _$User3CopyWith(_User3 value, $Res Function(_User3) _then) = __$User3CopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phone, Role role, bool active, bool mustChangePassword, DateTime? lastLoginAt, DateTime createdAt
});




}
/// @nodoc
class __$User3CopyWithImpl<$Res>
    implements _$User3CopyWith<$Res> {
  __$User3CopyWithImpl(this._self, this._then);

  final _User3 _self;
  final $Res Function(_User3) _then;

/// Create a copy of User3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? role = null,Object? active = null,Object? mustChangePassword = null,Object? lastLoginAt = freezed,Object? createdAt = null,}) {
  return _then(_User3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,mustChangePassword: null == mustChangePassword ? _self.mustChangePassword : mustChangePassword // ignore: cast_nullable_to_non_nullable
as bool,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
