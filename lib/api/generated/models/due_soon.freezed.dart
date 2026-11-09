// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'due_soon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DueSoon {

 String get id; String get name; Status8 get status; DateTime get expiresAt;
/// Create a copy of DueSoon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DueSoonCopyWith<DueSoon> get copyWith => _$DueSoonCopyWithImpl<DueSoon>(this as DueSoon, _$identity);

  /// Serializes this DueSoon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DueSoon;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DueSoon&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DueSoon;
  return Object.hash(runtimeType,_this.id,_this.name,_this.status,_this.expiresAt);
}

@override
String toString() {
  final _this = this as DueSoon;
  return 'DueSoon(id: ${_this.id}, name: ${_this.name}, status: ${_this.status}, expiresAt: ${_this.expiresAt})';
}


}

/// @nodoc
abstract mixin class $DueSoonCopyWith<$Res>  {
  factory $DueSoonCopyWith(DueSoon value, $Res Function(DueSoon) _then) = _$DueSoonCopyWithImpl;
@useResult
$Res call({
 String id, String name, Status8 status, DateTime expiresAt
});




}
/// @nodoc
class _$DueSoonCopyWithImpl<$Res>
    implements $DueSoonCopyWith<$Res> {
  _$DueSoonCopyWithImpl(this._self, this._then);

  final DueSoon _self;
  final $Res Function(DueSoon) _then;

/// Create a copy of DueSoon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? expiresAt = null,}) {
  return _then(DueSoon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status8,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DueSoon].
extension DueSoonPatterns on DueSoon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DueSoon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DueSoon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DueSoon value)  $default,){
final _that = this;
switch (_that) {
case _DueSoon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DueSoon value)?  $default,){
final _that = this;
switch (_that) {
case _DueSoon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Status8 status,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DueSoon() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Status8 status,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _DueSoon():
return $default(_that.id,_that.name,_that.status,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Status8 status,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _DueSoon() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DueSoon implements DueSoon {
  const _DueSoon({required this.id, required this.name, required this.status, required this.expiresAt});
  factory _DueSoon.fromJson(Map<String, dynamic> json) => _$DueSoonFromJson(json);

@override final  String id;
@override final  String name;
@override final  Status8 status;
@override final  DateTime expiresAt;

/// Create a copy of DueSoon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DueSoonCopyWith<_DueSoon> get copyWith => __$DueSoonCopyWithImpl<_DueSoon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DueSoonToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DueSoon&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,status,expiresAt);
}

@override
String toString() {
    return 'DueSoon(id: $id, name: $name, status: $status, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$DueSoonCopyWith<$Res> implements $DueSoonCopyWith<$Res> {
  factory _$DueSoonCopyWith(_DueSoon value, $Res Function(_DueSoon) _then) = __$DueSoonCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Status8 status, DateTime expiresAt
});




}
/// @nodoc
class __$DueSoonCopyWithImpl<$Res>
    implements _$DueSoonCopyWith<$Res> {
  __$DueSoonCopyWithImpl(this._self, this._then);

  final _DueSoon _self;
  final $Res Function(_DueSoon) _then;

/// Create a copy of DueSoon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? expiresAt = null,}) {
  return _then(_DueSoon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status8,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
