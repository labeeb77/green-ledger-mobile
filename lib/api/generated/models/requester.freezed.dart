// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requester.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Requester {

 String get id; String get name; Role get role;
/// Create a copy of Requester
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequesterCopyWith<Requester> get copyWith => _$RequesterCopyWithImpl<Requester>(this as Requester, _$identity);

  /// Serializes this Requester to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Requester;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Requester&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.role, _this.role) || other.role == _this.role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Requester;
  return Object.hash(runtimeType,_this.id,_this.name,_this.role);
}

@override
String toString() {
  final _this = this as Requester;
  return 'Requester(id: ${_this.id}, name: ${_this.name}, role: ${_this.role})';
}


}

/// @nodoc
abstract mixin class $RequesterCopyWith<$Res>  {
  factory $RequesterCopyWith(Requester value, $Res Function(Requester) _then) = _$RequesterCopyWithImpl;
@useResult
$Res call({
 String id, String name, Role role
});




}
/// @nodoc
class _$RequesterCopyWithImpl<$Res>
    implements $RequesterCopyWith<$Res> {
  _$RequesterCopyWithImpl(this._self, this._then);

  final Requester _self;
  final $Res Function(Requester) _then;

/// Create a copy of Requester
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? role = null,}) {
  return _then(Requester(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,
  ));
}

}


/// Adds pattern-matching-related methods to [Requester].
extension RequesterPatterns on Requester {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Requester value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Requester() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Requester value)  $default,){
final _that = this;
switch (_that) {
case _Requester():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Requester value)?  $default,){
final _that = this;
switch (_that) {
case _Requester() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Role role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Requester() when $default != null:
return $default(_that.id,_that.name,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Role role)  $default,) {final _that = this;
switch (_that) {
case _Requester():
return $default(_that.id,_that.name,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Role role)?  $default,) {final _that = this;
switch (_that) {
case _Requester() when $default != null:
return $default(_that.id,_that.name,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Requester implements Requester {
  const _Requester({required this.id, required this.name, required this.role});
  factory _Requester.fromJson(Map<String, dynamic> json) => _$RequesterFromJson(json);

@override final  String id;
@override final  String name;
@override final  Role role;

/// Create a copy of Requester
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequesterCopyWith<_Requester> get copyWith => __$RequesterCopyWithImpl<_Requester>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequesterToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Requester&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,role);
}

@override
String toString() {
    return 'Requester(id: $id, name: $name, role: $role)';
}


}

/// @nodoc
abstract mixin class _$RequesterCopyWith<$Res> implements $RequesterCopyWith<$Res> {
  factory _$RequesterCopyWith(_Requester value, $Res Function(_Requester) _then) = __$RequesterCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Role role
});




}
/// @nodoc
class __$RequesterCopyWithImpl<$Res>
    implements _$RequesterCopyWith<$Res> {
  __$RequesterCopyWithImpl(this._self, this._then);

  final _Requester _self;
  final $Res Function(_Requester) _then;

/// Create a copy of Requester
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? role = null,}) {
  return _then(_Requester(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,
  ));
}


}

// dart format on
