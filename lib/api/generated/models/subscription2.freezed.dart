// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Subscription2 {

 Status8 get status; DateTime get expiresAt; int get userLimit; String? get notes;
/// Create a copy of Subscription2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Subscription2CopyWith<Subscription2> get copyWith => _$Subscription2CopyWithImpl<Subscription2>(this as Subscription2, _$identity);

  /// Serializes this Subscription2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Subscription2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subscription2&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.userLimit, _this.userLimit) || other.userLimit == _this.userLimit)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Subscription2;
  return Object.hash(runtimeType,_this.status,_this.expiresAt,_this.userLimit,_this.notes);
}

@override
String toString() {
  final _this = this as Subscription2;
  return 'Subscription2(status: ${_this.status}, expiresAt: ${_this.expiresAt}, userLimit: ${_this.userLimit}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $Subscription2CopyWith<$Res>  {
  factory $Subscription2CopyWith(Subscription2 value, $Res Function(Subscription2) _then) = _$Subscription2CopyWithImpl;
@useResult
$Res call({
 Status8 status, DateTime expiresAt, int userLimit, String? notes
});




}
/// @nodoc
class _$Subscription2CopyWithImpl<$Res>
    implements $Subscription2CopyWith<$Res> {
  _$Subscription2CopyWithImpl(this._self, this._then);

  final Subscription2 _self;
  final $Res Function(Subscription2) _then;

/// Create a copy of Subscription2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? expiresAt = null,Object? userLimit = null,Object? notes = freezed,}) {
  return _then(Subscription2(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status8,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,userLimit: null == userLimit ? _self.userLimit : userLimit // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Subscription2].
extension Subscription2Patterns on Subscription2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subscription2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subscription2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subscription2 value)  $default,){
final _that = this;
switch (_that) {
case _Subscription2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subscription2 value)?  $default,){
final _that = this;
switch (_that) {
case _Subscription2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status8 status,  DateTime expiresAt,  int userLimit,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subscription2() when $default != null:
return $default(_that.status,_that.expiresAt,_that.userLimit,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status8 status,  DateTime expiresAt,  int userLimit,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _Subscription2():
return $default(_that.status,_that.expiresAt,_that.userLimit,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status8 status,  DateTime expiresAt,  int userLimit,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _Subscription2() when $default != null:
return $default(_that.status,_that.expiresAt,_that.userLimit,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Subscription2 implements Subscription2 {
  const _Subscription2({required this.status, required this.expiresAt, required this.userLimit, required this.notes});
  factory _Subscription2.fromJson(Map<String, dynamic> json) => _$Subscription2FromJson(json);

@override final  Status8 status;
@override final  DateTime expiresAt;
@override final  int userLimit;
@override final  String? notes;

/// Create a copy of Subscription2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Subscription2CopyWith<_Subscription2> get copyWith => __$Subscription2CopyWithImpl<_Subscription2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Subscription2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscription2&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.userLimit, userLimit) || other.userLimit == userLimit)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,expiresAt,userLimit,notes);
}

@override
String toString() {
    return 'Subscription2(status: $status, expiresAt: $expiresAt, userLimit: $userLimit, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$Subscription2CopyWith<$Res> implements $Subscription2CopyWith<$Res> {
  factory _$Subscription2CopyWith(_Subscription2 value, $Res Function(_Subscription2) _then) = __$Subscription2CopyWithImpl;
@override @useResult
$Res call({
 Status8 status, DateTime expiresAt, int userLimit, String? notes
});




}
/// @nodoc
class __$Subscription2CopyWithImpl<$Res>
    implements _$Subscription2CopyWith<$Res> {
  __$Subscription2CopyWithImpl(this._self, this._then);

  final _Subscription2 _self;
  final $Res Function(_Subscription2) _then;

/// Create a copy of Subscription2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? expiresAt = null,Object? userLimit = null,Object? notes = freezed,}) {
  return _then(_Subscription2(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status8,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,userLimit: null == userLimit ? _self.userLimit : userLimit // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
