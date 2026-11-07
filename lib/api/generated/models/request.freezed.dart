// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Request {

 String get id; Status8 get status; String? get reason; DateTime get createdAt; DateTime? get closedAt; String? get closedNote; HandledBy get handledBy;
/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCopyWith<Request> get copyWith => _$RequestCopyWithImpl<Request>(this as Request, _$identity);

  /// Serializes this Request to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Request;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Request&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.closedNote, _this.closedNote) || other.closedNote == _this.closedNote)&&(identical(other.handledBy, _this.handledBy) || other.handledBy == _this.handledBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Request;
  return Object.hash(runtimeType,_this.id,_this.status,_this.reason,_this.createdAt,_this.closedAt,_this.closedNote,_this.handledBy);
}

@override
String toString() {
  final _this = this as Request;
  return 'Request(id: ${_this.id}, status: ${_this.status}, reason: ${_this.reason}, createdAt: ${_this.createdAt}, closedAt: ${_this.closedAt}, closedNote: ${_this.closedNote}, handledBy: ${_this.handledBy})';
}


}

/// @nodoc
abstract mixin class $RequestCopyWith<$Res>  {
  factory $RequestCopyWith(Request value, $Res Function(Request) _then) = _$RequestCopyWithImpl;
@useResult
$Res call({
 String id, Status8 status, String? reason, DateTime createdAt, DateTime? closedAt, String? closedNote, HandledBy handledBy
});




}
/// @nodoc
class _$RequestCopyWithImpl<$Res>
    implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._self, this._then);

  final Request _self;
  final $Res Function(Request) _then;

/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? reason = freezed,Object? createdAt = null,Object? closedAt = freezed,Object? closedNote = freezed,Object? handledBy = null,}) {
  return _then(Request(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status8,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedNote: freezed == closedNote ? _self.closedNote : closedNote // ignore: cast_nullable_to_non_nullable
as String?,handledBy: null == handledBy ? _self.handledBy : handledBy // ignore: cast_nullable_to_non_nullable
as HandledBy,
  ));
}

}


/// Adds pattern-matching-related methods to [Request].
extension RequestPatterns on Request {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Request value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Request() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Request value)  $default,){
final _that = this;
switch (_that) {
case _Request():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Request value)?  $default,){
final _that = this;
switch (_that) {
case _Request() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Status8 status,  String? reason,  DateTime createdAt,  DateTime? closedAt,  String? closedNote,  HandledBy handledBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Request() when $default != null:
return $default(_that.id,_that.status,_that.reason,_that.createdAt,_that.closedAt,_that.closedNote,_that.handledBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Status8 status,  String? reason,  DateTime createdAt,  DateTime? closedAt,  String? closedNote,  HandledBy handledBy)  $default,) {final _that = this;
switch (_that) {
case _Request():
return $default(_that.id,_that.status,_that.reason,_that.createdAt,_that.closedAt,_that.closedNote,_that.handledBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Status8 status,  String? reason,  DateTime createdAt,  DateTime? closedAt,  String? closedNote,  HandledBy handledBy)?  $default,) {final _that = this;
switch (_that) {
case _Request() when $default != null:
return $default(_that.id,_that.status,_that.reason,_that.createdAt,_that.closedAt,_that.closedNote,_that.handledBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Request implements Request {
  const _Request({required this.id, required this.status, required this.reason, required this.createdAt, required this.closedAt, required this.closedNote, required this.handledBy});
  factory _Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);

@override final  String id;
@override final  Status8 status;
@override final  String? reason;
@override final  DateTime createdAt;
@override final  DateTime? closedAt;
@override final  String? closedNote;
@override final  HandledBy handledBy;

/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestCopyWith<_Request> get copyWith => __$RequestCopyWithImpl<_Request>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Request&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.closedNote, closedNote) || other.closedNote == closedNote)&&(identical(other.handledBy, handledBy) || other.handledBy == handledBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status,reason,createdAt,closedAt,closedNote,handledBy);
}

@override
String toString() {
    return 'Request(id: $id, status: $status, reason: $reason, createdAt: $createdAt, closedAt: $closedAt, closedNote: $closedNote, handledBy: $handledBy)';
}


}

/// @nodoc
abstract mixin class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) _then) = __$RequestCopyWithImpl;
@override @useResult
$Res call({
 String id, Status8 status, String? reason, DateTime createdAt, DateTime? closedAt, String? closedNote, HandledBy handledBy
});




}
/// @nodoc
class __$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(this._self, this._then);

  final _Request _self;
  final $Res Function(_Request) _then;

/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? reason = freezed,Object? createdAt = null,Object? closedAt = freezed,Object? closedNote = freezed,Object? handledBy = null,}) {
  return _then(_Request(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status8,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedNote: freezed == closedNote ? _self.closedNote : closedNote // ignore: cast_nullable_to_non_nullable
as String?,handledBy: null == handledBy ? _self.handledBy : handledBy // ignore: cast_nullable_to_non_nullable
as HandledBy,
  ));
}


}

// dart format on
