// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User2 {

 String get id; String get name; String get phone; Role2 get role;
/// Create a copy of User2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$User2CopyWith<User2> get copyWith => _$User2CopyWithImpl<User2>(this as User2, _$identity);

  /// Serializes this User2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as User2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.role, _this.role) || other.role == _this.role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as User2;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.role);
}

@override
String toString() {
  final _this = this as User2;
  return 'User2(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, role: ${_this.role})';
}


}

/// @nodoc
abstract mixin class $User2CopyWith<$Res>  {
  factory $User2CopyWith(User2 value, $Res Function(User2) _then) = _$User2CopyWithImpl;
@useResult
$Res call({
 String id, String name, String phone, Role2 role
});




}
/// @nodoc
class _$User2CopyWithImpl<$Res>
    implements $User2CopyWith<$Res> {
  _$User2CopyWithImpl(this._self, this._then);

  final User2 _self;
  final $Res Function(User2) _then;

/// Create a copy of User2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? role = null,}) {
  return _then(User2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role2,
  ));
}

}


/// Adds pattern-matching-related methods to [User2].
extension User2Patterns on User2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User2 value)  $default,){
final _that = this;
switch (_that) {
case _User2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User2 value)?  $default,){
final _that = this;
switch (_that) {
case _User2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  Role2 role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User2() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  Role2 role)  $default,) {final _that = this;
switch (_that) {
case _User2():
return $default(_that.id,_that.name,_that.phone,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String phone,  Role2 role)?  $default,) {final _that = this;
switch (_that) {
case _User2() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User2 implements User2 {
  const _User2({required this.id, required this.name, required this.phone, required this.role});
  factory _User2.fromJson(Map<String, dynamic> json) => _$User2FromJson(json);

@override final  String id;
@override final  String name;
@override final  String phone;
@override final  Role2 role;

/// Create a copy of User2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$User2CopyWith<_User2> get copyWith => __$User2CopyWithImpl<_User2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$User2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _User2&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,role);
}

@override
String toString() {
    return 'User2(id: $id, name: $name, phone: $phone, role: $role)';
}


}

/// @nodoc
abstract mixin class _$User2CopyWith<$Res> implements $User2CopyWith<$Res> {
  factory _$User2CopyWith(_User2 value, $Res Function(_User2) _then) = __$User2CopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phone, Role2 role
});




}
/// @nodoc
class __$User2CopyWithImpl<$Res>
    implements _$User2CopyWith<$Res> {
  __$User2CopyWithImpl(this._self, this._then);

  final _User2 _self;
  final $Res Function(_User2) _then;

/// Create a copy of User2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? role = null,}) {
  return _then(_User2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role2,
  ));
}


}

// dart format on
