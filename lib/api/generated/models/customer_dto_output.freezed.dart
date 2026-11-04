// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerDtoOutput {

 String get id; String get name; String? get phone; String? get area; String? get address; String? get notes; PriceGroup? get priceGroup; int get creditLimit; int get creditDays; Agent? get agent; int get openingBalance; CustomerDtoOutputStatus get status; int get outstanding; int get overdue; DateTime get createdAt;
/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDtoOutputCopyWith<CustomerDtoOutput> get copyWith => _$CustomerDtoOutputCopyWithImpl<CustomerDtoOutput>(this as CustomerDtoOutput, _$identity);

  /// Serializes this CustomerDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CustomerDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.area, _this.area) || other.area == _this.area)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.priceGroup, _this.priceGroup) || other.priceGroup == _this.priceGroup)&&(identical(other.creditLimit, _this.creditLimit) || other.creditLimit == _this.creditLimit)&&(identical(other.creditDays, _this.creditDays) || other.creditDays == _this.creditDays)&&(identical(other.agent, _this.agent) || other.agent == _this.agent)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.outstanding, _this.outstanding) || other.outstanding == _this.outstanding)&&(identical(other.overdue, _this.overdue) || other.overdue == _this.overdue)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CustomerDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.area,_this.address,_this.notes,_this.priceGroup,_this.creditLimit,_this.creditDays,_this.agent,_this.openingBalance,_this.status,_this.outstanding,_this.overdue,_this.createdAt);
}

@override
String toString() {
  final _this = this as CustomerDtoOutput;
  return 'CustomerDtoOutput(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, area: ${_this.area}, address: ${_this.address}, notes: ${_this.notes}, priceGroup: ${_this.priceGroup}, creditLimit: ${_this.creditLimit}, creditDays: ${_this.creditDays}, agent: ${_this.agent}, openingBalance: ${_this.openingBalance}, status: ${_this.status}, outstanding: ${_this.outstanding}, overdue: ${_this.overdue}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $CustomerDtoOutputCopyWith<$Res>  {
  factory $CustomerDtoOutputCopyWith(CustomerDtoOutput value, $Res Function(CustomerDtoOutput) _then) = _$CustomerDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? phone, String? area, String? address, String? notes, PriceGroup? priceGroup, int creditLimit, int creditDays, Agent? agent, int openingBalance, CustomerDtoOutputStatus status, int outstanding, int overdue, DateTime createdAt
});


$PriceGroupCopyWith<$Res>? get priceGroup;$AgentCopyWith<$Res>? get agent;

}
/// @nodoc
class _$CustomerDtoOutputCopyWithImpl<$Res>
    implements $CustomerDtoOutputCopyWith<$Res> {
  _$CustomerDtoOutputCopyWithImpl(this._self, this._then);

  final CustomerDtoOutput _self;
  final $Res Function(CustomerDtoOutput) _then;

/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? area = freezed,Object? address = freezed,Object? notes = freezed,Object? priceGroup = freezed,Object? creditLimit = null,Object? creditDays = null,Object? agent = freezed,Object? openingBalance = null,Object? status = null,Object? outstanding = null,Object? overdue = null,Object? createdAt = null,}) {
  return _then(CustomerDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,priceGroup: freezed == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as PriceGroup?,creditLimit: null == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int,creditDays: null == creditDays ? _self.creditDays : creditDays // ignore: cast_nullable_to_non_nullable
as int,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerDtoOutputStatus,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceGroupCopyWith<$Res>? get priceGroup {
    if (_self.priceGroup == null) {
    return null;
  }

  return $PriceGroupCopyWith<$Res>(_self.priceGroup!, (value) {
    return _then(_self.copyWith(priceGroup: value));
  });
}/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgentCopyWith<$Res>? get agent {
    if (_self.agent == null) {
    return null;
  }

  return $AgentCopyWith<$Res>(_self.agent!, (value) {
    return _then(_self.copyWith(agent: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerDtoOutput].
extension CustomerDtoOutputPatterns on CustomerDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? area,  String? address,  String? notes,  PriceGroup? priceGroup,  int creditLimit,  int creditDays,  Agent? agent,  int openingBalance,  CustomerDtoOutputStatus status,  int outstanding,  int overdue,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.area,_that.address,_that.notes,_that.priceGroup,_that.creditLimit,_that.creditDays,_that.agent,_that.openingBalance,_that.status,_that.outstanding,_that.overdue,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? area,  String? address,  String? notes,  PriceGroup? priceGroup,  int creditLimit,  int creditDays,  Agent? agent,  int openingBalance,  CustomerDtoOutputStatus status,  int outstanding,  int overdue,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerDtoOutput():
return $default(_that.id,_that.name,_that.phone,_that.area,_that.address,_that.notes,_that.priceGroup,_that.creditLimit,_that.creditDays,_that.agent,_that.openingBalance,_that.status,_that.outstanding,_that.overdue,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? phone,  String? area,  String? address,  String? notes,  PriceGroup? priceGroup,  int creditLimit,  int creditDays,  Agent? agent,  int openingBalance,  CustomerDtoOutputStatus status,  int outstanding,  int overdue,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.area,_that.address,_that.notes,_that.priceGroup,_that.creditLimit,_that.creditDays,_that.agent,_that.openingBalance,_that.status,_that.outstanding,_that.overdue,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDtoOutput implements CustomerDtoOutput {
  const _CustomerDtoOutput({required this.id, required this.name, required this.phone, required this.area, required this.address, required this.notes, required this.priceGroup, required this.creditLimit, required this.creditDays, required this.agent, required this.openingBalance, required this.status, required this.outstanding, required this.overdue, required this.createdAt});
  factory _CustomerDtoOutput.fromJson(Map<String, dynamic> json) => _$CustomerDtoOutputFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? phone;
@override final  String? area;
@override final  String? address;
@override final  String? notes;
@override final  PriceGroup? priceGroup;
@override final  int creditLimit;
@override final  int creditDays;
@override final  Agent? agent;
@override final  int openingBalance;
@override final  CustomerDtoOutputStatus status;
@override final  int outstanding;
@override final  int overdue;
@override final  DateTime createdAt;

/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDtoOutputCopyWith<_CustomerDtoOutput> get copyWith => __$CustomerDtoOutputCopyWithImpl<_CustomerDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.area, area) || other.area == area)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.creditDays, creditDays) || other.creditDays == creditDays)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&(identical(other.status, status) || other.status == status)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.overdue, overdue) || other.overdue == overdue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,area,address,notes,priceGroup,creditLimit,creditDays,agent,openingBalance,status,outstanding,overdue,createdAt);
}

@override
String toString() {
    return 'CustomerDtoOutput(id: $id, name: $name, phone: $phone, area: $area, address: $address, notes: $notes, priceGroup: $priceGroup, creditLimit: $creditLimit, creditDays: $creditDays, agent: $agent, openingBalance: $openingBalance, status: $status, outstanding: $outstanding, overdue: $overdue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerDtoOutputCopyWith<$Res> implements $CustomerDtoOutputCopyWith<$Res> {
  factory _$CustomerDtoOutputCopyWith(_CustomerDtoOutput value, $Res Function(_CustomerDtoOutput) _then) = __$CustomerDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? phone, String? area, String? address, String? notes, PriceGroup? priceGroup, int creditLimit, int creditDays, Agent? agent, int openingBalance, CustomerDtoOutputStatus status, int outstanding, int overdue, DateTime createdAt
});


@override $PriceGroupCopyWith<$Res>? get priceGroup;@override $AgentCopyWith<$Res>? get agent;

}
/// @nodoc
class __$CustomerDtoOutputCopyWithImpl<$Res>
    implements _$CustomerDtoOutputCopyWith<$Res> {
  __$CustomerDtoOutputCopyWithImpl(this._self, this._then);

  final _CustomerDtoOutput _self;
  final $Res Function(_CustomerDtoOutput) _then;

/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? area = freezed,Object? address = freezed,Object? notes = freezed,Object? priceGroup = freezed,Object? creditLimit = null,Object? creditDays = null,Object? agent = freezed,Object? openingBalance = null,Object? status = null,Object? outstanding = null,Object? overdue = null,Object? createdAt = null,}) {
  return _then(_CustomerDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,priceGroup: freezed == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as PriceGroup?,creditLimit: null == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int,creditDays: null == creditDays ? _self.creditDays : creditDays // ignore: cast_nullable_to_non_nullable
as int,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Agent?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomerDtoOutputStatus,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceGroupCopyWith<$Res>? get priceGroup {
    if (_self.priceGroup == null) {
    return null;
  }

  return $PriceGroupCopyWith<$Res>(_self.priceGroup!, (value) {
    return _then(_self.copyWith(priceGroup: value));
  });
}/// Create a copy of CustomerDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AgentCopyWith<$Res>? get agent {
    if (_self.agent == null) {
    return null;
  }

  return $AgentCopyWith<$Res>(_self.agent!, (value) {
    return _then(_self.copyWith(agent: value));
  });
}
}

// dart format on
