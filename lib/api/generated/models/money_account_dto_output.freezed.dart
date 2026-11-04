// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_account_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoneyAccountDtoOutput {

 String get id; MoneyAccountDtoOutputType get type; String get name; String? get bankName; String? get accountNumber; String? get ifsc; String? get upiId; String? get linkedAccountId; String? get agentUserId; int get openingBalance; int get balance; bool get system; bool get active;
/// Create a copy of MoneyAccountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyAccountDtoOutputCopyWith<MoneyAccountDtoOutput> get copyWith => _$MoneyAccountDtoOutputCopyWithImpl<MoneyAccountDtoOutput>(this as MoneyAccountDtoOutput, _$identity);

  /// Serializes this MoneyAccountDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MoneyAccountDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyAccountDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.accountNumber, _this.accountNumber) || other.accountNumber == _this.accountNumber)&&(identical(other.ifsc, _this.ifsc) || other.ifsc == _this.ifsc)&&(identical(other.upiId, _this.upiId) || other.upiId == _this.upiId)&&(identical(other.linkedAccountId, _this.linkedAccountId) || other.linkedAccountId == _this.linkedAccountId)&&(identical(other.agentUserId, _this.agentUserId) || other.agentUserId == _this.agentUserId)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&(identical(other.balance, _this.balance) || other.balance == _this.balance)&&(identical(other.system, _this.system) || other.system == _this.system)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MoneyAccountDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.type,_this.name,_this.bankName,_this.accountNumber,_this.ifsc,_this.upiId,_this.linkedAccountId,_this.agentUserId,_this.openingBalance,_this.balance,_this.system,_this.active);
}

@override
String toString() {
  final _this = this as MoneyAccountDtoOutput;
  return 'MoneyAccountDtoOutput(id: ${_this.id}, type: ${_this.type}, name: ${_this.name}, bankName: ${_this.bankName}, accountNumber: ${_this.accountNumber}, ifsc: ${_this.ifsc}, upiId: ${_this.upiId}, linkedAccountId: ${_this.linkedAccountId}, agentUserId: ${_this.agentUserId}, openingBalance: ${_this.openingBalance}, balance: ${_this.balance}, system: ${_this.system}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $MoneyAccountDtoOutputCopyWith<$Res>  {
  factory $MoneyAccountDtoOutputCopyWith(MoneyAccountDtoOutput value, $Res Function(MoneyAccountDtoOutput) _then) = _$MoneyAccountDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, MoneyAccountDtoOutputType type, String name, String? bankName, String? accountNumber, String? ifsc, String? upiId, String? linkedAccountId, String? agentUserId, int openingBalance, int balance, bool system, bool active
});




}
/// @nodoc
class _$MoneyAccountDtoOutputCopyWithImpl<$Res>
    implements $MoneyAccountDtoOutputCopyWith<$Res> {
  _$MoneyAccountDtoOutputCopyWithImpl(this._self, this._then);

  final MoneyAccountDtoOutput _self;
  final $Res Function(MoneyAccountDtoOutput) _then;

/// Create a copy of MoneyAccountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? name = null,Object? bankName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? upiId = freezed,Object? linkedAccountId = freezed,Object? agentUserId = freezed,Object? openingBalance = null,Object? balance = null,Object? system = null,Object? active = null,}) {
  return _then(MoneyAccountDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MoneyAccountDtoOutputType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,linkedAccountId: freezed == linkedAccountId ? _self.linkedAccountId : linkedAccountId // ignore: cast_nullable_to_non_nullable
as String?,agentUserId: freezed == agentUserId ? _self.agentUserId : agentUserId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,system: null == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MoneyAccountDtoOutput].
extension MoneyAccountDtoOutputPatterns on MoneyAccountDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoneyAccountDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoneyAccountDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoneyAccountDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _MoneyAccountDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoneyAccountDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _MoneyAccountDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  MoneyAccountDtoOutputType type,  String name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  String? agentUserId,  int openingBalance,  int balance,  bool system,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoneyAccountDtoOutput() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.agentUserId,_that.openingBalance,_that.balance,_that.system,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  MoneyAccountDtoOutputType type,  String name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  String? agentUserId,  int openingBalance,  int balance,  bool system,  bool active)  $default,) {final _that = this;
switch (_that) {
case _MoneyAccountDtoOutput():
return $default(_that.id,_that.type,_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.agentUserId,_that.openingBalance,_that.balance,_that.system,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  MoneyAccountDtoOutputType type,  String name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  String? agentUserId,  int openingBalance,  int balance,  bool system,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _MoneyAccountDtoOutput() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.agentUserId,_that.openingBalance,_that.balance,_that.system,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoneyAccountDtoOutput implements MoneyAccountDtoOutput {
  const _MoneyAccountDtoOutput({required this.id, required this.type, required this.name, required this.bankName, required this.accountNumber, required this.ifsc, required this.upiId, required this.linkedAccountId, required this.agentUserId, required this.openingBalance, required this.balance, required this.system, required this.active});
  factory _MoneyAccountDtoOutput.fromJson(Map<String, dynamic> json) => _$MoneyAccountDtoOutputFromJson(json);

@override final  String id;
@override final  MoneyAccountDtoOutputType type;
@override final  String name;
@override final  String? bankName;
@override final  String? accountNumber;
@override final  String? ifsc;
@override final  String? upiId;
@override final  String? linkedAccountId;
@override final  String? agentUserId;
@override final  int openingBalance;
@override final  int balance;
@override final  bool system;
@override final  bool active;

/// Create a copy of MoneyAccountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyAccountDtoOutputCopyWith<_MoneyAccountDtoOutput> get copyWith => __$MoneyAccountDtoOutputCopyWithImpl<_MoneyAccountDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoneyAccountDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoneyAccountDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.linkedAccountId, linkedAccountId) || other.linkedAccountId == linkedAccountId)&&(identical(other.agentUserId, agentUserId) || other.agentUserId == agentUserId)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.system, system) || other.system == system)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,name,bankName,accountNumber,ifsc,upiId,linkedAccountId,agentUserId,openingBalance,balance,system,active);
}

@override
String toString() {
    return 'MoneyAccountDtoOutput(id: $id, type: $type, name: $name, bankName: $bankName, accountNumber: $accountNumber, ifsc: $ifsc, upiId: $upiId, linkedAccountId: $linkedAccountId, agentUserId: $agentUserId, openingBalance: $openingBalance, balance: $balance, system: $system, active: $active)';
}


}

/// @nodoc
abstract mixin class _$MoneyAccountDtoOutputCopyWith<$Res> implements $MoneyAccountDtoOutputCopyWith<$Res> {
  factory _$MoneyAccountDtoOutputCopyWith(_MoneyAccountDtoOutput value, $Res Function(_MoneyAccountDtoOutput) _then) = __$MoneyAccountDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, MoneyAccountDtoOutputType type, String name, String? bankName, String? accountNumber, String? ifsc, String? upiId, String? linkedAccountId, String? agentUserId, int openingBalance, int balance, bool system, bool active
});




}
/// @nodoc
class __$MoneyAccountDtoOutputCopyWithImpl<$Res>
    implements _$MoneyAccountDtoOutputCopyWith<$Res> {
  __$MoneyAccountDtoOutputCopyWithImpl(this._self, this._then);

  final _MoneyAccountDtoOutput _self;
  final $Res Function(_MoneyAccountDtoOutput) _then;

/// Create a copy of MoneyAccountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? name = null,Object? bankName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? upiId = freezed,Object? linkedAccountId = freezed,Object? agentUserId = freezed,Object? openingBalance = null,Object? balance = null,Object? system = null,Object? active = null,}) {
  return _then(_MoneyAccountDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MoneyAccountDtoOutputType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,linkedAccountId: freezed == linkedAccountId ? _self.linkedAccountId : linkedAccountId // ignore: cast_nullable_to_non_nullable
as String?,agentUserId: freezed == agentUserId ? _self.agentUserId : agentUserId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,system: null == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
