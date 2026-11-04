// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_money_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateMoneyAccountDto {

 CreateMoneyAccountDtoType get type; String get name; String? get bankName; String? get accountNumber; String? get ifsc; String? get upiId; String? get linkedAccountId;/// Amount in paise (₹1 = 100)
 int? get openingBalance;
/// Create a copy of CreateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMoneyAccountDtoCopyWith<CreateMoneyAccountDto> get copyWith => _$CreateMoneyAccountDtoCopyWithImpl<CreateMoneyAccountDto>(this as CreateMoneyAccountDto, _$identity);

  /// Serializes this CreateMoneyAccountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateMoneyAccountDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMoneyAccountDto&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.accountNumber, _this.accountNumber) || other.accountNumber == _this.accountNumber)&&(identical(other.ifsc, _this.ifsc) || other.ifsc == _this.ifsc)&&(identical(other.upiId, _this.upiId) || other.upiId == _this.upiId)&&(identical(other.linkedAccountId, _this.linkedAccountId) || other.linkedAccountId == _this.linkedAccountId)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateMoneyAccountDto;
  return Object.hash(runtimeType,_this.type,_this.name,_this.bankName,_this.accountNumber,_this.ifsc,_this.upiId,_this.linkedAccountId,_this.openingBalance);
}

@override
String toString() {
  final _this = this as CreateMoneyAccountDto;
  return 'CreateMoneyAccountDto(type: ${_this.type}, name: ${_this.name}, bankName: ${_this.bankName}, accountNumber: ${_this.accountNumber}, ifsc: ${_this.ifsc}, upiId: ${_this.upiId}, linkedAccountId: ${_this.linkedAccountId}, openingBalance: ${_this.openingBalance})';
}


}

/// @nodoc
abstract mixin class $CreateMoneyAccountDtoCopyWith<$Res>  {
  factory $CreateMoneyAccountDtoCopyWith(CreateMoneyAccountDto value, $Res Function(CreateMoneyAccountDto) _then) = _$CreateMoneyAccountDtoCopyWithImpl;
@useResult
$Res call({
 CreateMoneyAccountDtoType type, String name, String? bankName, String? accountNumber, String? ifsc, String? upiId, String? linkedAccountId, int? openingBalance
});




}
/// @nodoc
class _$CreateMoneyAccountDtoCopyWithImpl<$Res>
    implements $CreateMoneyAccountDtoCopyWith<$Res> {
  _$CreateMoneyAccountDtoCopyWithImpl(this._self, this._then);

  final CreateMoneyAccountDto _self;
  final $Res Function(CreateMoneyAccountDto) _then;

/// Create a copy of CreateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? bankName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? upiId = freezed,Object? linkedAccountId = freezed,Object? openingBalance = freezed,}) {
  return _then(CreateMoneyAccountDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CreateMoneyAccountDtoType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,linkedAccountId: freezed == linkedAccountId ? _self.linkedAccountId : linkedAccountId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateMoneyAccountDto].
extension CreateMoneyAccountDtoPatterns on CreateMoneyAccountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateMoneyAccountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMoneyAccountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateMoneyAccountDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateMoneyAccountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateMoneyAccountDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateMoneyAccountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateMoneyAccountDtoType type,  String name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  int? openingBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMoneyAccountDto() when $default != null:
return $default(_that.type,_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.openingBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateMoneyAccountDtoType type,  String name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  int? openingBalance)  $default,) {final _that = this;
switch (_that) {
case _CreateMoneyAccountDto():
return $default(_that.type,_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.openingBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateMoneyAccountDtoType type,  String name,  String? bankName,  String? accountNumber,  String? ifsc,  String? upiId,  String? linkedAccountId,  int? openingBalance)?  $default,) {final _that = this;
switch (_that) {
case _CreateMoneyAccountDto() when $default != null:
return $default(_that.type,_that.name,_that.bankName,_that.accountNumber,_that.ifsc,_that.upiId,_that.linkedAccountId,_that.openingBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateMoneyAccountDto implements CreateMoneyAccountDto {
  const _CreateMoneyAccountDto({required this.type, required this.name, this.bankName, this.accountNumber, this.ifsc, this.upiId, this.linkedAccountId, this.openingBalance});
  factory _CreateMoneyAccountDto.fromJson(Map<String, dynamic> json) => _$CreateMoneyAccountDtoFromJson(json);

@override final  CreateMoneyAccountDtoType type;
@override final  String name;
@override final  String? bankName;
@override final  String? accountNumber;
@override final  String? ifsc;
@override final  String? upiId;
@override final  String? linkedAccountId;
/// Amount in paise (₹1 = 100)
@override final  int? openingBalance;

/// Create a copy of CreateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMoneyAccountDtoCopyWith<_CreateMoneyAccountDto> get copyWith => __$CreateMoneyAccountDtoCopyWithImpl<_CreateMoneyAccountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateMoneyAccountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMoneyAccountDto&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.upiId, upiId) || other.upiId == upiId)&&(identical(other.linkedAccountId, linkedAccountId) || other.linkedAccountId == linkedAccountId)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,name,bankName,accountNumber,ifsc,upiId,linkedAccountId,openingBalance);
}

@override
String toString() {
    return 'CreateMoneyAccountDto(type: $type, name: $name, bankName: $bankName, accountNumber: $accountNumber, ifsc: $ifsc, upiId: $upiId, linkedAccountId: $linkedAccountId, openingBalance: $openingBalance)';
}


}

/// @nodoc
abstract mixin class _$CreateMoneyAccountDtoCopyWith<$Res> implements $CreateMoneyAccountDtoCopyWith<$Res> {
  factory _$CreateMoneyAccountDtoCopyWith(_CreateMoneyAccountDto value, $Res Function(_CreateMoneyAccountDto) _then) = __$CreateMoneyAccountDtoCopyWithImpl;
@override @useResult
$Res call({
 CreateMoneyAccountDtoType type, String name, String? bankName, String? accountNumber, String? ifsc, String? upiId, String? linkedAccountId, int? openingBalance
});




}
/// @nodoc
class __$CreateMoneyAccountDtoCopyWithImpl<$Res>
    implements _$CreateMoneyAccountDtoCopyWith<$Res> {
  __$CreateMoneyAccountDtoCopyWithImpl(this._self, this._then);

  final _CreateMoneyAccountDto _self;
  final $Res Function(_CreateMoneyAccountDto) _then;

/// Create a copy of CreateMoneyAccountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? bankName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? upiId = freezed,Object? linkedAccountId = freezed,Object? openingBalance = freezed,}) {
  return _then(_CreateMoneyAccountDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CreateMoneyAccountDtoType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,upiId: freezed == upiId ? _self.upiId : upiId // ignore: cast_nullable_to_non_nullable
as String?,linkedAccountId: freezed == linkedAccountId ? _self.linkedAccountId : linkedAccountId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: freezed == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
