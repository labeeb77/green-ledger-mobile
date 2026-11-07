// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverDtoOutput {

 String get id; Agent3 get agent; String get handoverDate; int get declaredAmount; int? get countedAmount; int? get difference; HandoverDtoOutputStatus get status; int get bagBalance; String? get note; ConfirmedBy? get confirmedBy; DateTime? get confirmedAt; DateTime get createdAt;
/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverDtoOutputCopyWith<HandoverDtoOutput> get copyWith => _$HandoverDtoOutputCopyWithImpl<HandoverDtoOutput>(this as HandoverDtoOutput, _$identity);

  /// Serializes this HandoverDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HandoverDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.agent, _this.agent) || other.agent == _this.agent)&&(identical(other.handoverDate, _this.handoverDate) || other.handoverDate == _this.handoverDate)&&(identical(other.declaredAmount, _this.declaredAmount) || other.declaredAmount == _this.declaredAmount)&&(identical(other.countedAmount, _this.countedAmount) || other.countedAmount == _this.countedAmount)&&(identical(other.difference, _this.difference) || other.difference == _this.difference)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.bagBalance, _this.bagBalance) || other.bagBalance == _this.bagBalance)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.confirmedBy, _this.confirmedBy) || other.confirmedBy == _this.confirmedBy)&&(identical(other.confirmedAt, _this.confirmedAt) || other.confirmedAt == _this.confirmedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HandoverDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.agent,_this.handoverDate,_this.declaredAmount,_this.countedAmount,_this.difference,_this.status,_this.bagBalance,_this.note,_this.confirmedBy,_this.confirmedAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as HandoverDtoOutput;
  return 'HandoverDtoOutput(id: ${_this.id}, agent: ${_this.agent}, handoverDate: ${_this.handoverDate}, declaredAmount: ${_this.declaredAmount}, countedAmount: ${_this.countedAmount}, difference: ${_this.difference}, status: ${_this.status}, bagBalance: ${_this.bagBalance}, note: ${_this.note}, confirmedBy: ${_this.confirmedBy}, confirmedAt: ${_this.confirmedAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $HandoverDtoOutputCopyWith<$Res>  {
  factory $HandoverDtoOutputCopyWith(HandoverDtoOutput value, $Res Function(HandoverDtoOutput) _then) = _$HandoverDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, Agent3 agent, String handoverDate, int declaredAmount, int? countedAmount, int? difference, HandoverDtoOutputStatus status, int bagBalance, String? note, ConfirmedBy? confirmedBy, DateTime? confirmedAt, DateTime createdAt
});


$Agent3CopyWith<$Res> get agent;$ConfirmedByCopyWith<$Res>? get confirmedBy;

}
/// @nodoc
class _$HandoverDtoOutputCopyWithImpl<$Res>
    implements $HandoverDtoOutputCopyWith<$Res> {
  _$HandoverDtoOutputCopyWithImpl(this._self, this._then);

  final HandoverDtoOutput _self;
  final $Res Function(HandoverDtoOutput) _then;

/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? agent = null,Object? handoverDate = null,Object? declaredAmount = null,Object? countedAmount = freezed,Object? difference = freezed,Object? status = null,Object? bagBalance = null,Object? note = freezed,Object? confirmedBy = freezed,Object? confirmedAt = freezed,Object? createdAt = null,}) {
  return _then(HandoverDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,agent: null == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent3,handoverDate: null == handoverDate ? _self.handoverDate : handoverDate // ignore: cast_nullable_to_non_nullable
as String,declaredAmount: null == declaredAmount ? _self.declaredAmount : declaredAmount // ignore: cast_nullable_to_non_nullable
as int,countedAmount: freezed == countedAmount ? _self.countedAmount : countedAmount // ignore: cast_nullable_to_non_nullable
as int?,difference: freezed == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HandoverDtoOutputStatus,bagBalance: null == bagBalance ? _self.bagBalance : bagBalance // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,confirmedBy: freezed == confirmedBy ? _self.confirmedBy : confirmedBy // ignore: cast_nullable_to_non_nullable
as ConfirmedBy?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Agent3CopyWith<$Res> get agent {
  
  return $Agent3CopyWith<$Res>(_self.agent, (value) {
    return _then(_self.copyWith(agent: value));
  });
}/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfirmedByCopyWith<$Res>? get confirmedBy {
    if (_self.confirmedBy == null) {
    return null;
  }

  return $ConfirmedByCopyWith<$Res>(_self.confirmedBy!, (value) {
    return _then(_self.copyWith(confirmedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [HandoverDtoOutput].
extension HandoverDtoOutputPatterns on HandoverDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _HandoverDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Agent3 agent,  String handoverDate,  int declaredAmount,  int? countedAmount,  int? difference,  HandoverDtoOutputStatus status,  int bagBalance,  String? note,  ConfirmedBy? confirmedBy,  DateTime? confirmedAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Agent3 agent,  String handoverDate,  int declaredAmount,  int? countedAmount,  int? difference,  HandoverDtoOutputStatus status,  int bagBalance,  String? note,  ConfirmedBy? confirmedBy,  DateTime? confirmedAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _HandoverDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Agent3 agent,  String handoverDate,  int declaredAmount,  int? countedAmount,  int? difference,  HandoverDtoOutputStatus status,  int bagBalance,  String? note,  ConfirmedBy? confirmedBy,  DateTime? confirmedAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _HandoverDtoOutput() when $default != null:
return $default(_that.id,_that.agent,_that.handoverDate,_that.declaredAmount,_that.countedAmount,_that.difference,_that.status,_that.bagBalance,_that.note,_that.confirmedBy,_that.confirmedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverDtoOutput implements HandoverDtoOutput {
  const _HandoverDtoOutput({required this.id, required this.agent, required this.handoverDate, required this.declaredAmount, required this.countedAmount, required this.difference, required this.status, required this.bagBalance, required this.note, required this.confirmedBy, required this.confirmedAt, required this.createdAt});
  factory _HandoverDtoOutput.fromJson(Map<String, dynamic> json) => _$HandoverDtoOutputFromJson(json);

@override final  String id;
@override final  Agent3 agent;
@override final  String handoverDate;
@override final  int declaredAmount;
@override final  int? countedAmount;
@override final  int? difference;
@override final  HandoverDtoOutputStatus status;
@override final  int bagBalance;
@override final  String? note;
@override final  ConfirmedBy? confirmedBy;
@override final  DateTime? confirmedAt;
@override final  DateTime createdAt;

/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverDtoOutputCopyWith<_HandoverDtoOutput> get copyWith => __$HandoverDtoOutputCopyWithImpl<_HandoverDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.handoverDate, handoverDate) || other.handoverDate == handoverDate)&&(identical(other.declaredAmount, declaredAmount) || other.declaredAmount == declaredAmount)&&(identical(other.countedAmount, countedAmount) || other.countedAmount == countedAmount)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.status, status) || other.status == status)&&(identical(other.bagBalance, bagBalance) || other.bagBalance == bagBalance)&&(identical(other.note, note) || other.note == note)&&(identical(other.confirmedBy, confirmedBy) || other.confirmedBy == confirmedBy)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,agent,handoverDate,declaredAmount,countedAmount,difference,status,bagBalance,note,confirmedBy,confirmedAt,createdAt);
}

@override
String toString() {
    return 'HandoverDtoOutput(id: $id, agent: $agent, handoverDate: $handoverDate, declaredAmount: $declaredAmount, countedAmount: $countedAmount, difference: $difference, status: $status, bagBalance: $bagBalance, note: $note, confirmedBy: $confirmedBy, confirmedAt: $confirmedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$HandoverDtoOutputCopyWith<$Res> implements $HandoverDtoOutputCopyWith<$Res> {
  factory _$HandoverDtoOutputCopyWith(_HandoverDtoOutput value, $Res Function(_HandoverDtoOutput) _then) = __$HandoverDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, Agent3 agent, String handoverDate, int declaredAmount, int? countedAmount, int? difference, HandoverDtoOutputStatus status, int bagBalance, String? note, ConfirmedBy? confirmedBy, DateTime? confirmedAt, DateTime createdAt
});


@override $Agent3CopyWith<$Res> get agent;@override $ConfirmedByCopyWith<$Res>? get confirmedBy;

}
/// @nodoc
class __$HandoverDtoOutputCopyWithImpl<$Res>
    implements _$HandoverDtoOutputCopyWith<$Res> {
  __$HandoverDtoOutputCopyWithImpl(this._self, this._then);

  final _HandoverDtoOutput _self;
  final $Res Function(_HandoverDtoOutput) _then;

/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? agent = null,Object? handoverDate = null,Object? declaredAmount = null,Object? countedAmount = freezed,Object? difference = freezed,Object? status = null,Object? bagBalance = null,Object? note = freezed,Object? confirmedBy = freezed,Object? confirmedAt = freezed,Object? createdAt = null,}) {
  return _then(_HandoverDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,agent: null == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent3,handoverDate: null == handoverDate ? _self.handoverDate : handoverDate // ignore: cast_nullable_to_non_nullable
as String,declaredAmount: null == declaredAmount ? _self.declaredAmount : declaredAmount // ignore: cast_nullable_to_non_nullable
as int,countedAmount: freezed == countedAmount ? _self.countedAmount : countedAmount // ignore: cast_nullable_to_non_nullable
as int?,difference: freezed == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HandoverDtoOutputStatus,bagBalance: null == bagBalance ? _self.bagBalance : bagBalance // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,confirmedBy: freezed == confirmedBy ? _self.confirmedBy : confirmedBy // ignore: cast_nullable_to_non_nullable
as ConfirmedBy?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Agent3CopyWith<$Res> get agent {
  
  return $Agent3CopyWith<$Res>(_self.agent, (value) {
    return _then(_self.copyWith(agent: value));
  });
}/// Create a copy of HandoverDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfirmedByCopyWith<$Res>? get confirmedBy {
    if (_self.confirmedBy == null) {
    return null;
  }

  return $ConfirmedByCopyWith<$Res>(_self.confirmedBy!, (value) {
    return _then(_self.copyWith(confirmedBy: value));
  });
}
}

// dart format on
