// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_money_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateMoneyAccountDto {

 String? get name; String? get bankName; String? get accountNumber; String? get ifsc; String? get upiId; String? get linkedAccountId;/// Amount in paise (₹1 = 100)
 int? get openingBalance; bool? get active;
/// Create a copy of UpdateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMoneyAccountDtoCopyWith<UpdateMoneyAccountDto> get copyWith => _$UpdateMoneyAccountDtoCopyWithImpl<UpdateMoneyAccountDto>(this as UpdateMoneyAccountDto, _$identity);

  /// Serializes this UpdateMoneyAccountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateMoneyAccountDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMoneyAccountDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.accountNumber, _this.accountNumber) || other.accountNumber == _this.accountNumber)&&(identical(other.ifsc, _this.ifsc) || other.ifsc == _this.ifsc)&&(identical(other.upiId, _this.upiId) || other.upiId == _this.upiId)&&(identical(other.linkedAccountId, _this.linkedAccountId) || other.linkedAccountId == _this.linkedAccountId)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateMoneyAccountDto;
  return Object.hash(runtimeType,_this.name,_this.bankName,_this.accountNumber,_this.ifsc,_this.upiId,_this.linkedAccountId,_this.openingBalance,_this.active);
}

@override
String toString() {
  final _this = this as UpdateMoneyAccountDto;
  return 'UpdateMoneyAccountDto(name: ${_this.name}, bankName: ${_this.bankName}, accountNumber: ${_this.accountNumber}, ifsc: ${_this.ifsc}, upiId: ${_this.upiId}, linkedAccountId: ${_this.linkedAccountId}, openingBalance: ${_this.openingBalance}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdateMoneyAccountDtoCopyWith<$Res>  {
  factory $UpdateMoneyAccountDtoCopyWith(UpdateMoneyAccountDto value, $Res Function(UpdateMoneyAccountDto) _then) = _$UpdateMoneyAccountDtoCopyWithImpl;
@useResult
$Res call({
 String? name, String? bankName, String? accountNumber, String? ifsc, String? upiId, String? linkedAccountId, int? openingBalance, bool? active
});




}
/// @nodoc
class _$UpdateMoneyAccountDtoCopyWithImpl<$Res>
    implements $UpdateMoneyAccountDtoCopyWith<$Res> {
  _$UpdateMoneyAccountDtoCopyWithImpl(this._self, this._then);

  final UpdateMoneyAccountDto _self;
  final $Res Function(UpdateMoneyAccountDto) _then;

/// Create a copy of UpdateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? bankName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? upiId = freezed,Object? linkedAccountId = freezed,Object? openingBalance = freezed,Object? active = freezed,}) {
  return _then(UpdateMoneyAccountDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,linkedAccountId: freezed == linkedAccountId ? _self.linkedAccountId : linkedAccountId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateMoneyAccountDto].
extension UpdateMoneyAccountDtoPatterns on UpdateMoneyAccountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateMoneyAccountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateMoneyAccountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateMoneyAccountDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateMoneyAccountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateMoneyAccountDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateMoneyAccountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  int? openingBalance,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateMoneyAccountDto() when $default != null:
return $default(_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.openingBalance,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  int? openingBalance,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateMoneyAccountDto():
return $default(_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.openingBalance,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  int? openingBalance,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateMoneyAccountDto() when $default != null:
return $default(_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.openingBalance,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateMoneyAccountDto implements UpdateMoneyAccountDto {
  const _UpdateMoneyAccountDto({this.name, this.bankName, this.accountNumber, this.ifsc, this.upiId, this.linkedAccountId, this.openingBalance, this.active});
  factory _UpdateMoneyAccountDto.fromJson(Map<String, dynamic> json) => _$UpdateMoneyAccountDtoFromJson(json);

@override final  String? name;
@override final  String? bankName;
@override final  String? accountNumber;
@override final  String? ifsc;
@override final  String? upiId;
@override final  String? linkedAccountId;
/// Amount in paise (₹1 = 100)
@override final  int? openingBalance;
@override final  bool? active;

/// Create a copy of UpdateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMoneyAccountDtoCopyWith<_UpdateMoneyAccountDto> get copyWith => __$UpdateMoneyAccountDtoCopyWithImpl<_UpdateMoneyAccountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateMoneyAccountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMoneyAccountDto&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.linkedAccountId, linkedAccountId) || other.linkedAccountId == linkedAccountId)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,bankName,accountNumber,ifsc,upiId,linkedAccountId,openingBalance,active);
}

@override
String toString() {
    return 'UpdateMoneyAccountDto(name: $name, bankName: $bankName, accountNumber: $accountNumber, ifsc: $ifsc, upiId: $upiId, linkedAccountId: $linkedAccountId, openingBalance: $openingBalance, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateMoneyAccountDtoCopyWith<$Res> implements $UpdateMoneyAccountDtoCopyWith<$Res> {
  factory _$UpdateMoneyAccountDtoCopyWith(_UpdateMoneyAccountDto value, $Res Function(_UpdateMoneyAccountDto) _then) = __$UpdateMoneyAccountDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? bankName, String? accountNumber, String? ifsc, String? upiId, String? linkedAccountId, int? openingBalance, bool? active
});




}
/// @nodoc
class __$UpdateMoneyAccountDtoCopyWithImpl<$Res>
    implements _$UpdateMoneyAccountDtoCopyWith<$Res> {
  __$UpdateMoneyAccountDtoCopyWithImpl(this._self, this._then);

  final _UpdateMoneyAccountDto _self;
  final $Res Function(_UpdateMoneyAccountDto) _then;

/// Create a copy of UpdateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? bankName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? upiId = freezed,Object? linkedAccountId = freezed,Object? openingBalance = freezed,Object? active = freezed,}) {
  return _then(_UpdateMoneyAccountDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,linkedAccountId: freezed == linkedAccountId ? _self.linkedAccountId : linkedAccountId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
