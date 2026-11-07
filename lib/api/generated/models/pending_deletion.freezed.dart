// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_deletion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PendingDeletion {

 String get userId; DateTime get requestedAt; String? get reason;
/// Create a copy of PendingDeletion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingDeletionCopyWith<PendingDeletion> get copyWith => _$PendingDeletionCopyWithImpl<PendingDeletion>(this as PendingDeletion, _$identity);

  /// Serializes this PendingDeletion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingDeletion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingDeletion&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.requestedAt, _this.requestedAt) || other.requestedAt == _this.requestedAt)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingDeletion;
  return Object.hash(runtimeType,_this.userId,_this.requestedAt,_this.reason);
}

@override
String toString() {
  final _this = this as PendingDeletion;
  return 'PendingDeletion(userId: ${_this.userId}, requestedAt: ${_this.requestedAt}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $PendingDeletionCopyWith<$Res>  {
  factory $PendingDeletionCopyWith(PendingDeletion value, $Res Function(PendingDeletion) _then) = _$PendingDeletionCopyWithImpl;
@useResult
$Res call({
 String userId, DateTime requestedAt, String? reason
});




}
/// @nodoc
class _$PendingDeletionCopyWithImpl<$Res>
    implements $PendingDeletionCopyWith<$Res> {
  _$PendingDeletionCopyWithImpl(this._self, this._then);

  final PendingDeletion _self;
  final $Res Function(PendingDeletion) _then;

/// Create a copy of PendingDeletion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? requestedAt = null,Object? reason = freezed,}) {
  return _then(PendingDeletion(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingDeletion].
extension PendingDeletionPatterns on PendingDeletion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingDeletion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingDeletion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingDeletion value)  $default,){
final _that = this;
switch (_that) {
case _PendingDeletion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingDeletion value)?  $default,){
final _that = this;
switch (_that) {
case _PendingDeletion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  DateTime requestedAt,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingDeletion() when $default != null:
return $default(_that.userId,_that.requestedAt,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  DateTime requestedAt,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _PendingDeletion():
return $default(_that.userId,_that.requestedAt,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  DateTime requestedAt,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _PendingDeletion() when $default != null:
return $default(_that.userId,_that.requestedAt,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingDeletion implements PendingDeletion {
  const _PendingDeletion({required this.userId, required this.requestedAt, required this.reason});
  factory _PendingDeletion.fromJson(Map<String, dynamic> json) => _$PendingDeletionFromJson(json);

@override final  String userId;
@override final  DateTime requestedAt;
@override final  String? reason;

/// Create a copy of PendingDeletion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingDeletionCopyWith<_PendingDeletion> get copyWith => __$PendingDeletionCopyWithImpl<_PendingDeletion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingDeletionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingDeletion&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,requestedAt,reason);
}

@override
String toString() {
    return 'PendingDeletion(userId: $userId, requestedAt: $requestedAt, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$PendingDeletionCopyWith<$Res> implements $PendingDeletionCopyWith<$Res> {
  factory _$PendingDeletionCopyWith(_PendingDeletion value, $Res Function(_PendingDeletion) _then) = __$PendingDeletionCopyWithImpl;
@override @useResult
$Res call({
 String userId, DateTime requestedAt, String? reason
});




}
/// @nodoc
class __$PendingDeletionCopyWithImpl<$Res>
    implements _$PendingDeletionCopyWith<$Res> {
  __$PendingDeletionCopyWithImpl(this._self, this._then);

  final _PendingDeletion _self;
  final $Res Function(_PendingDeletion) _then;

/// Create a copy of PendingDeletion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? requestedAt = null,Object? reason = freezed,}) {
  return _then(_PendingDeletion(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
