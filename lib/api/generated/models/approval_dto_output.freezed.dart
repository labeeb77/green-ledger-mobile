// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApprovalDtoOutput {

 String get id; ApprovalDtoOutputType get type; ApprovalDtoOutputStatus get status; Requester get requester; String get entityType; String get entityId; int? get amount; String? get reason; Map<String, dynamic> get payload; DecidedBy? get decidedBy; DateTime? get decidedAt; String? get decisionNote; DateTime get createdAt;
/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApprovalDtoOutputCopyWith<ApprovalDtoOutput> get copyWith => _$ApprovalDtoOutputCopyWithImpl<ApprovalDtoOutput>(this as ApprovalDtoOutput, _$identity);

  /// Serializes this ApprovalDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApprovalDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApprovalDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.requester, _this.requester) || other.requester == _this.requester)&&(identical(other.entityType, _this.entityType) || other.entityType == _this.entityType)&&(identical(other.entityId, _this.entityId) || other.entityId == _this.entityId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&const DeepCollectionEquality().equals(other.payload, _this.payload)&&(identical(other.decidedBy, _this.decidedBy) || other.decidedBy == _this.decidedBy)&&(identical(other.decidedAt, _this.decidedAt) || other.decidedAt == _this.decidedAt)&&(identical(other.decisionNote, _this.decisionNote) || other.decisionNote == _this.decisionNote)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApprovalDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.type,_this.status,_this.requester,_this.entityType,_this.entityId,_this.amount,_this.reason,const DeepCollectionEquality().hash(_this.payload),_this.decidedBy,_this.decidedAt,_this.decisionNote,_this.createdAt);
}

@override
String toString() {
  final _this = this as ApprovalDtoOutput;
  return 'ApprovalDtoOutput(id: ${_this.id}, type: ${_this.type}, status: ${_this.status}, requester: ${_this.requester}, entityType: ${_this.entityType}, entityId: ${_this.entityId}, amount: ${_this.amount}, reason: ${_this.reason}, payload: ${_this.payload}, decidedBy: ${_this.decidedBy}, decidedAt: ${_this.decidedAt}, decisionNote: ${_this.decisionNote}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ApprovalDtoOutputCopyWith<$Res>  {
  factory $ApprovalDtoOutputCopyWith(ApprovalDtoOutput value, $Res Function(ApprovalDtoOutput) _then) = _$ApprovalDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, ApprovalDtoOutputType type, ApprovalDtoOutputStatus status, Requester requester, String entityType, String entityId, int? amount, String? reason, Map<String, dynamic> payload, DecidedBy? decidedBy, DateTime? decidedAt, String? decisionNote, DateTime createdAt
});


$RequesterCopyWith<$Res> get requester;$DecidedByCopyWith<$Res>? get decidedBy;

}
/// @nodoc
class _$ApprovalDtoOutputCopyWithImpl<$Res>
    implements $ApprovalDtoOutputCopyWith<$Res> {
  _$ApprovalDtoOutputCopyWithImpl(this._self, this._then);

  final ApprovalDtoOutput _self;
  final $Res Function(ApprovalDtoOutput) _then;

/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? status = null,Object? requester = null,Object? entityType = null,Object? entityId = null,Object? amount = freezed,Object? reason = freezed,Object? payload = null,Object? decidedBy = freezed,Object? decidedAt = freezed,Object? decisionNote = freezed,Object? createdAt = null,}) {
  return _then(ApprovalDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ApprovalDtoOutputType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ApprovalDtoOutputStatus,requester: null == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as Requester,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,decidedBy: freezed == decidedBy ? _self.decidedBy : decidedBy // ignore: cast_nullable_to_non_nullable
as DecidedBy?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequesterCopyWith<$Res> get requester {
  
  return $RequesterCopyWith<$Res>(_self.requester, (value) {
    return _then(_self.copyWith(requester: value));
  });
}/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecidedByCopyWith<$Res>? get decidedBy {
    if (_self.decidedBy == null) {
    return null;
  }

  return $DecidedByCopyWith<$Res>(_self.decidedBy!, (value) {
    return _then(_self.copyWith(decidedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApprovalDtoOutput].
extension ApprovalDtoOutputPatterns on ApprovalDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApprovalDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApprovalDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApprovalDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ApprovalDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApprovalDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ApprovalDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ApprovalDtoOutputType type,  ApprovalDtoOutputStatus status,  Requester requester,  String entityType,  String entityId,  int? amount,  String? reason,  Map<String, dynamic> payload,  DecidedBy? decidedBy,  DateTime? decidedAt,  String? decisionNote,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApprovalDtoOutput() when $default != null:
return $default(_that.id,_that.type,_that.status,_that.requester,_that.entityType,_that.entityId,_that.amount,_that.reason,_that.payload,_that.decidedBy,_that.decidedAt,_that.decisionNote,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ApprovalDtoOutputType type,  ApprovalDtoOutputStatus status,  Requester requester,  String entityType,  String entityId,  int? amount,  String? reason,  Map<String, dynamic> payload,  DecidedBy? decidedBy,  DateTime? decidedAt,  String? decisionNote,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ApprovalDtoOutput():
return $default(_that.id,_that.type,_that.status,_that.requester,_that.entityType,_that.entityId,_that.amount,_that.reason,_that.payload,_that.decidedBy,_that.decidedAt,_that.decisionNote,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ApprovalDtoOutputType type,  ApprovalDtoOutputStatus status,  Requester requester,  String entityType,  String entityId,  int? amount,  String? reason,  Map<String, dynamic> payload,  DecidedBy? decidedBy,  DateTime? decidedAt,  String? decisionNote,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ApprovalDtoOutput() when $default != null:
return $default(_that.id,_that.type,_that.status,_that.requester,_that.entityType,_that.entityId,_that.amount,_that.reason,_that.payload,_that.decidedBy,_that.decidedAt,_that.decisionNote,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApprovalDtoOutput implements ApprovalDtoOutput {
  const _ApprovalDtoOutput({required this.id, required this.type, required this.status, required this.requester, required this.entityType, required this.entityId, required this.amount, required this.reason, required  Map<String, dynamic> payload, required this.decidedBy, required this.decidedAt, required this.decisionNote, required this.createdAt}): _payload = payload;
  factory _ApprovalDtoOutput.fromJson(Map<String, dynamic> json) => _$ApprovalDtoOutputFromJson(json);

@override final  String id;
@override final  ApprovalDtoOutputType type;
@override final  ApprovalDtoOutputStatus status;
@override final  Requester requester;
@override final  String entityType;
@override final  String entityId;
@override final  int? amount;
@override final  String? reason;
 final  Map<String, dynamic> _payload;
@override Map<String, dynamic> get payload {
  if (_payload is EqualUnmodifiableMapView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_payload);
}

@override final  DecidedBy? decidedBy;
@override final  DateTime? decidedAt;
@override final  String? decisionNote;
@override final  DateTime createdAt;

/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApprovalDtoOutputCopyWith<_ApprovalDtoOutput> get copyWith => __$ApprovalDtoOutputCopyWithImpl<_ApprovalDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApprovalDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApprovalDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.requester, requester) || other.requester == requester)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.payload, _payload)&&(identical(other.decidedBy, decidedBy) || other.decidedBy == decidedBy)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,status,requester,entityType,entityId,amount,reason,const DeepCollectionEquality().hash(_payload),decidedBy,decidedAt,decisionNote,createdAt);
}

@override
String toString() {
    return 'ApprovalDtoOutput(id: $id, type: $type, status: $status, requester: $requester, entityType: $entityType, entityId: $entityId, amount: $amount, reason: $reason, payload: $payload, decidedBy: $decidedBy, decidedAt: $decidedAt, decisionNote: $decisionNote, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ApprovalDtoOutputCopyWith<$Res> implements $ApprovalDtoOutputCopyWith<$Res> {
  factory _$ApprovalDtoOutputCopyWith(_ApprovalDtoOutput value, $Res Function(_ApprovalDtoOutput) _then) = __$ApprovalDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, ApprovalDtoOutputType type, ApprovalDtoOutputStatus status, Requester requester, String entityType, String entityId, int? amount, String? reason, Map<String, dynamic> payload, DecidedBy? decidedBy, DateTime? decidedAt, String? decisionNote, DateTime createdAt
});


@override $RequesterCopyWith<$Res> get requester;@override $DecidedByCopyWith<$Res>? get decidedBy;

}
/// @nodoc
class __$ApprovalDtoOutputCopyWithImpl<$Res>
    implements _$ApprovalDtoOutputCopyWith<$Res> {
  __$ApprovalDtoOutputCopyWithImpl(this._self, this._then);

  final _ApprovalDtoOutput _self;
  final $Res Function(_ApprovalDtoOutput) _then;

/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? status = null,Object? requester = null,Object? entityType = null,Object? entityId = null,Object? amount = freezed,Object? reason = freezed,Object? payload = null,Object? decidedBy = freezed,Object? decidedAt = freezed,Object? decisionNote = freezed,Object? createdAt = null,}) {
  return _then(_ApprovalDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ApprovalDtoOutputType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ApprovalDtoOutputStatus,requester: null == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as Requester,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,payload: null == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,decidedBy: freezed == decidedBy ? _self.decidedBy : decidedBy // ignore: cast_nullable_to_non_nullable
as DecidedBy?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequesterCopyWith<$Res> get requester {
  
  return $RequesterCopyWith<$Res>(_self.requester, (value) {
    return _then(_self.copyWith(requester: value));
  });
}/// Create a copy of ApprovalDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecidedByCopyWith<$Res>? get decidedBy {
    if (_self.decidedBy == null) {
    return null;
  }

  return $DecidedByCopyWith<$Res>(_self.decidedBy!, (value) {
    return _then(_self.copyWith(decidedBy: value));
  });
}
}

// dart format on
