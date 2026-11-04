// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_handover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PendingHandover {

 String get id; Agent4 get agent; DateTime get handoverDate; int get declaredAmount; int? get countedAmount; int? get difference; Status6 get status; int get bagBalance; String? get note; ConfirmedBy2? get confirmedBy; DateTime? get confirmedAt; DateTime get createdAt;
/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingHandoverCopyWith<PendingHandover> get copyWith => _$PendingHandoverCopyWithImpl<PendingHandover>(this as PendingHandover, _$identity);

  /// Serializes this PendingHandover to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingHandover;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingHandover&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.agent, _this.agent) || other.agent == _this.agent)&&(identical(other.handoverDate, _this.handoverDate) || other.handoverDate == _this.handoverDate)&&(identical(other.declaredAmount, _this.declaredAmount) || other.declaredAmount == _this.declaredAmount)&&(identical(other.countedAmount, _this.countedAmount) || other.countedAmount == _this.countedAmount)&&(identical(other.difference, _this.difference) || other.difference == _this.difference)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.bagBalance, _this.bagBalance) || other.bagBalance == _this.bagBalance)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.confirmedBy, _this.confirmedBy) || other.confirmedBy == _this.confirmedBy)&&(identical(other.confirmedAt, _this.confirmedAt) || other.confirmedAt == _this.confirmedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingHandover;
  return Object.hash(runtimeType,_this.id,_this.agent,_this.handoverDate,_this.declaredAmount,_this.countedAmount,_this.difference,_this.status,_this.bagBalance,_this.note,_this.confirmedBy,_this.confirmedAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as PendingHandover;
  return 'PendingHandover(id: ${_this.id}, agent: ${_this.agent}, handoverDate: ${_this.handoverDate}, declaredAmount: ${_this.declaredAmount}, countedAmount: ${_this.countedAmount}, difference: ${_this.difference}, status: ${_this.status}, bagBalance: ${_this.bagBalance}, note: ${_this.note}, confirmedBy: ${_this.confirmedBy}, confirmedAt: ${_this.confirmedAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PendingHandoverCopyWith<$Res>  {
  factory $PendingHandoverCopyWith(PendingHandover value, $Res Function(PendingHandover) _then) = _$PendingHandoverCopyWithImpl;
@useResult
$Res call({
 String id, Agent4 agent, DateTime handoverDate, int declaredAmount, int? countedAmount, int? difference, Status6 status, int bagBalance, String? note, ConfirmedBy2? confirmedBy, DateTime? confirmedAt, DateTime createdAt
});


$Agent4CopyWith<$Res> get agent;$ConfirmedBy2CopyWith<$Res>? get confirmedBy;

}
/// @nodoc
class _$PendingHandoverCopyWithImpl<$Res>
    implements $PendingHandoverCopyWith<$Res> {
  _$PendingHandoverCopyWithImpl(this._self, this._then);

  final PendingHandover _self;
  final $Res Function(PendingHandover) _then;

/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? agent = null,Object? handoverDate = null,Object? declaredAmount = null,Object? countedAmount = freezed,Object? difference = freezed,Object? status = null,Object? bagBalance = null,Object? note = freezed,Object? confirmedBy = freezed,Object? confirmedAt = freezed,Object? createdAt = null,}) {
  return _then(PendingHandover(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,agent: null == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent4,handoverDate: null == handoverDate ? _self.handoverDate : handoverDate // ignore: cast_nullable_to_non_nullable
as DateTime,declaredAmount: null == declaredAmount ? _self.declaredAmount : declaredAmount // ignore: cast_nullable_to_non_nullable
as int,countedAmount: freezed == countedAmount ? _self.countedAmount : countedAmount // ignore: cast_nullable_to_non_nullable
as int?,difference: freezed == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status6,bagBalance: null == bagBalance ? _self.bagBalance : bagBalance // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,confirmedBy: freezed == confirmedBy ? _self.confirmedBy : confirmedBy // ignore: cast_nullable_to_non_nullable
as ConfirmedBy2?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Agent4CopyWith<$Res> get agent {
  
  return $Agent4CopyWith<$Res>(_self.agent, (value) {
    return _then(_self.copyWith(agent: value));
  });
}/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfirmedBy2CopyWith<$Res>? get confirmedBy {
    if (_self.confirmedBy == null) {
    return null;
  }

  return $ConfirmedBy2CopyWith<$Res>(_self.confirmedBy!, (value) {
    return _then(_self.copyWith(confirmedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [PendingHandover].
extension PendingHandoverPatterns on PendingHandover {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingHandover value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingHandover() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingHandover value)  $default,){
final _that = this;
switch (_that) {
case _PendingHandover():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingHandover value)?  $default,){
final _that = this;
switch (_that) {
case _PendingHandover() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Agent4 agent,  DateTime handoverDate,  int declaredAmount,  int? countedAmount,  int? difference,  Status6 status,  int bagBalance,  String? note,  ConfirmedBy2? confirmedBy,  DateTime? confirmedAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingHandover() when $default != null:
return $default(_that.id,_that.agent,_that.handoverDate,_that.declaredAmount,_that.countedAmount,_that.difference,_that.status,_that.bagBalance,_that.note,_that.confirmedBy,_that.confirmedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Agent4 agent,  DateTime handoverDate,  int declaredAmount,  int? countedAmount,  int? difference,  Status6 status,  int bagBalance,  String? note,  ConfirmedBy2? confirmedBy,  DateTime? confirmedAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _PendingHandover():
return $default(_that.id,_that.agent,_that.handoverDate,_that.declaredAmount,_that.countedAmount,_that.difference,_that.status,_that.bagBalance,_that.note,_that.confirmedBy,_that.confirmedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Agent4 agent,  DateTime handoverDate,  int declaredAmount,  int? countedAmount,  int? difference,  Status6 status,  int bagBalance,  String? note,  ConfirmedBy2? confirmedBy,  DateTime? confirmedAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PendingHandover() when $default != null:
return $default(_that.id,_that.agent,_that.handoverDate,_that.declaredAmount,_that.countedAmount,_that.difference,_that.status,_that.bagBalance,_that.note,_that.confirmedBy,_that.confirmedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingHandover implements PendingHandover {
  const _PendingHandover({required this.id, required this.agent, required this.handoverDate, required this.declaredAmount, required this.countedAmount, required this.difference, required this.status, required this.bagBalance, required this.note, required this.confirmedBy, required this.confirmedAt, required this.createdAt});
  factory _PendingHandover.fromJson(Map<String, dynamic> json) => _$PendingHandoverFromJson(json);

@override final  String id;
@override final  Agent4 agent;
@override final  DateTime handoverDate;
@override final  int declaredAmount;
@override final  int? countedAmount;
@override final  int? difference;
@override final  Status6 status;
@override final  int bagBalance;
@override final  String? note;
@override final  ConfirmedBy2? confirmedBy;
@override final  DateTime? confirmedAt;
@override final  DateTime createdAt;

/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingHandoverCopyWith<_PendingHandover> get copyWith => __$PendingHandoverCopyWithImpl<_PendingHandover>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingHandoverToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingHandover&&(identical(other.id, id) || other.id == id)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.handoverDate, handoverDate) || other.handoverDate == handoverDate)&&(identical(other.declaredAmount, declaredAmount) || other.declaredAmount == declaredAmount)&&(identical(other.countedAmount, countedAmount) || other.countedAmount == countedAmount)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.status, status) || other.status == status)&&(identical(other.bagBalance, bagBalance) || other.bagBalance == bagBalance)&&(identical(other.note, note) || other.note == note)&&(identical(other.confirmedBy, confirmedBy) || other.confirmedBy == confirmedBy)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,agent,handoverDate,declaredAmount,countedAmount,difference,status,bagBalance,note,confirmedBy,confirmedAt,createdAt);
}

@override
String toString() {
    return 'PendingHandover(id: $id, agent: $agent, handoverDate: $handoverDate, declaredAmount: $declaredAmount, countedAmount: $countedAmount, difference: $difference, status: $status, bagBalance: $bagBalance, note: $note, confirmedBy: $confirmedBy, confirmedAt: $confirmedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PendingHandoverCopyWith<$Res> implements $PendingHandoverCopyWith<$Res> {
  factory _$PendingHandoverCopyWith(_PendingHandover value, $Res Function(_PendingHandover) _then) = __$PendingHandoverCopyWithImpl;
@override @useResult
$Res call({
 String id, Agent4 agent, DateTime handoverDate, int declaredAmount, int? countedAmount, int? difference, Status6 status, int bagBalance, String? note, ConfirmedBy2? confirmedBy, DateTime? confirmedAt, DateTime createdAt
});


@override $Agent4CopyWith<$Res> get agent;@override $ConfirmedBy2CopyWith<$Res>? get confirmedBy;

}
/// @nodoc
class __$PendingHandoverCopyWithImpl<$Res>
    implements _$PendingHandoverCopyWith<$Res> {
  __$PendingHandoverCopyWithImpl(this._self, this._then);

  final _PendingHandover _self;
  final $Res Function(_PendingHandover) _then;

/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? agent = null,Object? handoverDate = null,Object? declaredAmount = null,Object? countedAmount = freezed,Object? difference = freezed,Object? status = null,Object? bagBalance = null,Object? note = freezed,Object? confirmedBy = freezed,Object? confirmedAt = freezed,Object? createdAt = null,}) {
  return _then(_PendingHandover(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,agent: null == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent4,handoverDate: null == handoverDate ? _self.handoverDate : handoverDate // ignore: cast_nullable_to_non_nullable
as DateTime,declaredAmount: null == declaredAmount ? _self.declaredAmount : declaredAmount // ignore: cast_nullable_to_non_nullable
as int,countedAmount: freezed == countedAmount ? _self.countedAmount : countedAmount // ignore: cast_nullable_to_non_nullable
as int?,difference: freezed == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status6,bagBalance: null == bagBalance ? _self.bagBalance : bagBalance // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,confirmedBy: freezed == confirmedBy ? _self.confirmedBy : confirmedBy // ignore: cast_nullable_to_non_nullable
as ConfirmedBy2?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Agent4CopyWith<$Res> get agent {
  
  return $Agent4CopyWith<$Res>(_self.agent, (value) {
    return _then(_self.copyWith(agent: value));
  });
}/// Create a copy of PendingHandover
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfirmedBy2CopyWith<$Res>? get confirmedBy {
    if (_self.confirmedBy == null) {
    return null;
  }

  return $ConfirmedBy2CopyWith<$Res>(_self.confirmedBy!, (value) {
    return _then(_self.copyWith(confirmedBy: value));
  });
}
}

// dart format on
