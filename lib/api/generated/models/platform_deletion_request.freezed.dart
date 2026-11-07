// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_deletion_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlatformDeletionRequest {

 String get id; PlatformDeletionRequestStatus get status; String? get reason; DateTime get createdAt; DateTime? get closedAt; String? get closedNote; PlatformDeletionRequestHandledBy get handledBy; String get businessId; String get businessName; String get userId; String get userName; String get phone; String get role;
/// Create a copy of PlatformDeletionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlatformDeletionRequestCopyWith<PlatformDeletionRequest> get copyWith => _$PlatformDeletionRequestCopyWithImpl<PlatformDeletionRequest>(this as PlatformDeletionRequest, _$identity);

  /// Serializes this PlatformDeletionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PlatformDeletionRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlatformDeletionRequest&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.closedNote, _this.closedNote) || other.closedNote == _this.closedNote)&&(identical(other.handledBy, _this.handledBy) || other.handledBy == _this.handledBy)&&(identical(other.businessId, _this.businessId) || other.businessId == _this.businessId)&&(identical(other.businessName, _this.businessName) || other.businessName == _this.businessName)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.userName, _this.userName) || other.userName == _this.userName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.role, _this.role) || other.role == _this.role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PlatformDeletionRequest;
  return Object.hash(runtimeType,_this.id,_this.status,_this.reason,_this.createdAt,_this.closedAt,_this.closedNote,_this.handledBy,_this.businessId,_this.businessName,_this.userId,_this.userName,_this.phone,_this.role);
}

@override
String toString() {
  final _this = this as PlatformDeletionRequest;
  return 'PlatformDeletionRequest(id: ${_this.id}, status: ${_this.status}, reason: ${_this.reason}, createdAt: ${_this.createdAt}, closedAt: ${_this.closedAt}, closedNote: ${_this.closedNote}, handledBy: ${_this.handledBy}, businessId: ${_this.businessId}, businessName: ${_this.businessName}, userId: ${_this.userId}, userName: ${_this.userName}, phone: ${_this.phone}, role: ${_this.role})';
}


}

/// @nodoc
abstract mixin class $PlatformDeletionRequestCopyWith<$Res>  {
  factory $PlatformDeletionRequestCopyWith(PlatformDeletionRequest value, $Res Function(PlatformDeletionRequest) _then) = _$PlatformDeletionRequestCopyWithImpl;
@useResult
$Res call({
 String id, PlatformDeletionRequestStatus status, String? reason, DateTime createdAt, DateTime? closedAt, String? closedNote, PlatformDeletionRequestHandledBy handledBy, String businessId, String businessName, String userId, String userName, String phone, String role
});




}
/// @nodoc
class _$PlatformDeletionRequestCopyWithImpl<$Res>
    implements $PlatformDeletionRequestCopyWith<$Res> {
  _$PlatformDeletionRequestCopyWithImpl(this._self, this._then);

  final PlatformDeletionRequest _self;
  final $Res Function(PlatformDeletionRequest) _then;

/// Create a copy of PlatformDeletionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? reason = freezed,Object? createdAt = null,Object? closedAt = freezed,Object? closedNote = freezed,Object? handledBy = null,Object? businessId = null,Object? businessName = null,Object? userId = null,Object? userName = null,Object? phone = null,Object? role = null,}) {
  return _then(PlatformDeletionRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PlatformDeletionRequestStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedNote: freezed == closedNote ? _self.closedNote : closedNote // ignore: cast_nullable_to_non_nullable
as String?,handledBy: null == handledBy ? _self.handledBy : handledBy // ignore: cast_nullable_to_non_nullable
as PlatformDeletionRequestHandledBy,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlatformDeletionRequest].
extension PlatformDeletionRequestPatterns on PlatformDeletionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlatformDeletionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlatformDeletionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlatformDeletionRequest value)  $default,){
final _that = this;
switch (_that) {
case _PlatformDeletionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlatformDeletionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PlatformDeletionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PlatformDeletionRequestStatus status,  String? reason,  DateTime createdAt,  DateTime? closedAt,  String? closedNote,  PlatformDeletionRequestHandledBy handledBy,  String businessId,  String businessName,  String userId,  String userName,  String phone,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlatformDeletionRequest() when $default != null:
return $default(_that.id,_that.status,_that.reason,_that.createdAt,_that.closedAt,_that.closedNote,_that.handledBy,_that.businessId,_that.businessName,_that.userId,_that.userName,_that.phone,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PlatformDeletionRequestStatus status,  String? reason,  DateTime createdAt,  DateTime? closedAt,  String? closedNote,  PlatformDeletionRequestHandledBy handledBy,  String businessId,  String businessName,  String userId,  String userName,  String phone,  String role)  $default,) {final _that = this;
switch (_that) {
case _PlatformDeletionRequest():
return $default(_that.id,_that.status,_that.reason,_that.createdAt,_that.closedAt,_that.closedNote,_that.handledBy,_that.businessId,_that.businessName,_that.userId,_that.userName,_that.phone,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PlatformDeletionRequestStatus status,  String? reason,  DateTime createdAt,  DateTime? closedAt,  String? closedNote,  PlatformDeletionRequestHandledBy handledBy,  String businessId,  String businessName,  String userId,  String userName,  String phone,  String role)?  $default,) {final _that = this;
switch (_that) {
case _PlatformDeletionRequest() when $default != null:
return $default(_that.id,_that.status,_that.reason,_that.createdAt,_that.closedAt,_that.closedNote,_that.handledBy,_that.businessId,_that.businessName,_that.userId,_that.userName,_that.phone,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlatformDeletionRequest implements PlatformDeletionRequest {
  const _PlatformDeletionRequest({required this.id, required this.status, required this.reason, required this.createdAt, required this.closedAt, required this.closedNote, required this.handledBy, required this.businessId, required this.businessName, required this.userId, required this.userName, required this.phone, required this.role});
  factory _PlatformDeletionRequest.fromJson(Map<String, dynamic> json) => _$PlatformDeletionRequestFromJson(json);

@override final  String id;
@override final  PlatformDeletionRequestStatus status;
@override final  String? reason;
@override final  DateTime createdAt;
@override final  DateTime? closedAt;
@override final  String? closedNote;
@override final  PlatformDeletionRequestHandledBy handledBy;
@override final  String businessId;
@override final  String businessName;
@override final  String userId;
@override final  String userName;
@override final  String phone;
@override final  String role;

/// Create a copy of PlatformDeletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlatformDeletionRequestCopyWith<_PlatformDeletionRequest> get copyWith => __$PlatformDeletionRequestCopyWithImpl<_PlatformDeletionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlatformDeletionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlatformDeletionRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.closedNote, closedNote) || other.closedNote == closedNote)&&(identical(other.handledBy, handledBy) || other.handledBy == handledBy)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status,reason,createdAt,closedAt,closedNote,handledBy,businessId,businessName,userId,userName,phone,role);
}

@override
String toString() {
    return 'PlatformDeletionRequest(id: $id, status: $status, reason: $reason, createdAt: $createdAt, closedAt: $closedAt, closedNote: $closedNote, handledBy: $handledBy, businessId: $businessId, businessName: $businessName, userId: $userId, userName: $userName, phone: $phone, role: $role)';
}


}

/// @nodoc
abstract mixin class _$PlatformDeletionRequestCopyWith<$Res> implements $PlatformDeletionRequestCopyWith<$Res> {
  factory _$PlatformDeletionRequestCopyWith(_PlatformDeletionRequest value, $Res Function(_PlatformDeletionRequest) _then) = __$PlatformDeletionRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, PlatformDeletionRequestStatus status, String? reason, DateTime createdAt, DateTime? closedAt, String? closedNote, PlatformDeletionRequestHandledBy handledBy, String businessId, String businessName, String userId, String userName, String phone, String role
});




}
/// @nodoc
class __$PlatformDeletionRequestCopyWithImpl<$Res>
    implements _$PlatformDeletionRequestCopyWith<$Res> {
  __$PlatformDeletionRequestCopyWithImpl(this._self, this._then);

  final _PlatformDeletionRequest _self;
  final $Res Function(_PlatformDeletionRequest) _then;

/// Create a copy of PlatformDeletionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? reason = freezed,Object? createdAt = null,Object? closedAt = freezed,Object? closedNote = freezed,Object? handledBy = null,Object? businessId = null,Object? businessName = null,Object? userId = null,Object? userName = null,Object? phone = null,Object? role = null,}) {
  return _then(_PlatformDeletionRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PlatformDeletionRequestStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedNote: freezed == closedNote ? _self.closedNote : closedNote // ignore: cast_nullable_to_non_nullable
as String?,handledBy: null == handledBy ? _self.handledBy : handledBy // ignore: cast_nullable_to_non_nullable
as PlatformDeletionRequestHandledBy,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
