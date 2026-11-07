// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDtoOutput {

 String get id; String get number; String get orderDate; Customer6 get customer; Agent2? get agent; OrderDtoOutputStatus get status; int? get estimatedTotal; String? get notes; List<Lines14> get lines; List<Bills> get bills; String? get approvalId; DateTime get createdAt; String? get cancelReason;
/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDtoOutputCopyWith<OrderDtoOutput> get copyWith => _$OrderDtoOutputCopyWithImpl<OrderDtoOutput>(this as OrderDtoOutput, _$identity);

  /// Serializes this OrderDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OrderDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.orderDate, _this.orderDate) || other.orderDate == _this.orderDate)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.agent, _this.agent) || other.agent == _this.agent)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.estimatedTotal, _this.estimatedTotal) || other.estimatedTotal == _this.estimatedTotal)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&const DeepCollectionEquality().equals(other.bills, _this.bills)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OrderDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.orderDate,_this.customer,_this.agent,_this.status,_this.estimatedTotal,_this.notes,const DeepCollectionEquality().hash(_this.lines),const DeepCollectionEquality().hash(_this.bills),_this.approvalId,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as OrderDtoOutput;
  return 'OrderDtoOutput(id: ${_this.id}, number: ${_this.number}, orderDate: ${_this.orderDate}, customer: ${_this.customer}, agent: ${_this.agent}, status: ${_this.status}, estimatedTotal: ${_this.estimatedTotal}, notes: ${_this.notes}, lines: ${_this.lines}, bills: ${_this.bills}, approvalId: ${_this.approvalId}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $OrderDtoOutputCopyWith<$Res>  {
  factory $OrderDtoOutputCopyWith(OrderDtoOutput value, $Res Function(OrderDtoOutput) _then) = _$OrderDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String number, String orderDate, Customer6 customer, Agent2? agent, OrderDtoOutputStatus status, int? estimatedTotal, String? notes, List<Lines14> lines, List<Bills> bills, String? approvalId, DateTime createdAt, String? cancelReason
});


$Customer6CopyWith<$Res> get customer;$Agent2CopyWith<$Res>? get agent;

}
/// @nodoc
class _$OrderDtoOutputCopyWithImpl<$Res>
    implements $OrderDtoOutputCopyWith<$Res> {
  _$OrderDtoOutputCopyWithImpl(this._self, this._then);

  final OrderDtoOutput _self;
  final $Res Function(OrderDtoOutput) _then;

/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? orderDate = null,Object? customer = null,Object? agent = freezed,Object? status = null,Object? estimatedTotal = freezed,Object? notes = freezed,Object? lines = null,Object? bills = null,Object? approvalId = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(OrderDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer6,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent2?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDtoOutputStatus,estimatedTotal: freezed == estimatedTotal ? _self.estimatedTotal : estimatedTotal // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines14>,bills: null == bills ? _self.bills : bills // ignore: cast_nullable_to_non_nullable
as List<Bills>,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer6CopyWith<$Res> get customer {
  
  return $Customer6CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Agent2CopyWith<$Res>? get agent {
    if (_self.agent == null) {
    return null;
  }

  return $Agent2CopyWith<$Res>(_self.agent!, (value) {
    return _then(_self.copyWith(agent: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDtoOutput].
extension OrderDtoOutputPatterns on OrderDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _OrderDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String orderDate,  Customer6 customer,  Agent2? agent,  OrderDtoOutputStatus status,  int? estimatedTotal,  String? notes,  List<Lines14> lines,  List<Bills> bills,  String? approvalId,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.orderDate,_that.customer,_that.agent,_that.status,_that.estimatedTotal,_that.notes,_that.lines,_that.bills,_that.approvalId,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String orderDate,  Customer6 customer,  Agent2? agent,  OrderDtoOutputStatus status,  int? estimatedTotal,  String? notes,  List<Lines14> lines,  List<Bills> bills,  String? approvalId,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _OrderDtoOutput():
return $default(_that.id,_that.number,_that.orderDate,_that.customer,_that.agent,_that.status,_that.estimatedTotal,_that.notes,_that.lines,_that.bills,_that.approvalId,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String orderDate,  Customer6 customer,  Agent2? agent,  OrderDtoOutputStatus status,  int? estimatedTotal,  String? notes,  List<Lines14> lines,  List<Bills> bills,  String? approvalId,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _OrderDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.orderDate,_that.customer,_that.agent,_that.status,_that.estimatedTotal,_that.notes,_that.lines,_that.bills,_that.approvalId,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDtoOutput implements OrderDtoOutput {
  const _OrderDtoOutput({required this.id, required this.number, required this.orderDate, required this.customer, required this.agent, required this.status, required this.estimatedTotal, required this.notes, required  List<Lines14> lines, required  List<Bills> bills, required this.approvalId, required this.createdAt, required this.cancelReason}): _lines = lines,_bills = bills;
  factory _OrderDtoOutput.fromJson(Map<String, dynamic> json) => _$OrderDtoOutputFromJson(json);

@override final  String id;
@override final  String number;
@override final  String orderDate;
@override final  Customer6 customer;
@override final  Agent2? agent;
@override final  OrderDtoOutputStatus status;
@override final  int? estimatedTotal;
@override final  String? notes;
 final  List<Lines14> _lines;
@override List<Lines14> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  List<Bills> _bills;
@override List<Bills> get bills {
  if (_bills is EqualUnmodifiableListView) return _bills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bills);
}

@override final  String? approvalId;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDtoOutputCopyWith<_OrderDtoOutput> get copyWith => __$OrderDtoOutputCopyWithImpl<_OrderDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.status, status) || other.status == status)&&(identical(other.estimatedTotal, estimatedTotal) || other.estimatedTotal == estimatedTotal)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.lines, _lines)&&const DeepCollectionEquality().equals(other.bills, _bills)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,orderDate,customer,agent,status,estimatedTotal,notes,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_bills),approvalId,createdAt,cancelReason);
}

@override
String toString() {
    return 'OrderDtoOutput(id: $id, number: $number, orderDate: $orderDate, customer: $customer, agent: $agent, status: $status, estimatedTotal: $estimatedTotal, notes: $notes, lines: $lines, bills: $bills, approvalId: $approvalId, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$OrderDtoOutputCopyWith<$Res> implements $OrderDtoOutputCopyWith<$Res> {
  factory _$OrderDtoOutputCopyWith(_OrderDtoOutput value, $Res Function(_OrderDtoOutput) _then) = __$OrderDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String orderDate, Customer6 customer, Agent2? agent, OrderDtoOutputStatus status, int? estimatedTotal, String? notes, List<Lines14> lines, List<Bills> bills, String? approvalId, DateTime createdAt, String? cancelReason
});


@override $Customer6CopyWith<$Res> get customer;@override $Agent2CopyWith<$Res>? get agent;

}
/// @nodoc
class __$OrderDtoOutputCopyWithImpl<$Res>
    implements _$OrderDtoOutputCopyWith<$Res> {
  __$OrderDtoOutputCopyWithImpl(this._self, this._then);

  final _OrderDtoOutput _self;
  final $Res Function(_OrderDtoOutput) _then;

/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? orderDate = null,Object? customer = null,Object? agent = freezed,Object? status = null,Object? estimatedTotal = freezed,Object? notes = freezed,Object? lines = null,Object? bills = null,Object? approvalId = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_OrderDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer6,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent2?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDtoOutputStatus,estimatedTotal: freezed == estimatedTotal ? _self.estimatedTotal : estimatedTotal // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines14>,bills: null == bills ? _self._bills : bills // ignore: cast_nullable_to_non_nullable
as List<Bills>,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer6CopyWith<$Res> get customer {
  
  return $Customer6CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of OrderDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Agent2CopyWith<$Res>? get agent {
    if (_self.agent == null) {
    return null;
  }

  return $Agent2CopyWith<$Res>(_self.agent!, (value) {
    return _then(_self.copyWith(agent: value));
  });
}
}

// dart format on
