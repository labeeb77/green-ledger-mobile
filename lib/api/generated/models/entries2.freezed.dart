// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entries2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Entries2 {

 String get id; DateTime get date; Reason2 get reason; String? get reference; String get sourceType; String get sourceId; User4? get user; String get quantity; String? get packCount; String? get packUnit; String get balance;
/// Create a copy of Entries2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Entries2CopyWith<Entries2> get copyWith => _$Entries2CopyWithImpl<Entries2>(this as Entries2, _$identity);

  /// Serializes this Entries2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Entries2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entries2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.balance, _this.balance) || other.balance == _this.balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Entries2;
  return Object.hash(runtimeType,_this.id,_this.date,_this.reason,_this.reference,_this.sourceType,_this.sourceId,_this.user,_this.quantity,_this.packCount,_this.packUnit,_this.balance);
}

@override
String toString() {
  final _this = this as Entries2;
  return 'Entries2(id: ${_this.id}, date: ${_this.date}, reason: ${_this.reason}, reference: ${_this.reference}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, user: ${_this.user}, quantity: ${_this.quantity}, packCount: ${_this.packCount}, packUnit: ${_this.packUnit}, balance: ${_this.balance})';
}


}

/// @nodoc
abstract mixin class $Entries2CopyWith<$Res>  {
  factory $Entries2CopyWith(Entries2 value, $Res Function(Entries2) _then) = _$Entries2CopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, Reason2 reason, String? reference, String sourceType, String sourceId, User4? user, String quantity, String? packCount, String? packUnit, String balance
});


$User4CopyWith<$Res>? get user;

}
/// @nodoc
class _$Entries2CopyWithImpl<$Res>
    implements $Entries2CopyWith<$Res> {
  _$Entries2CopyWithImpl(this._self, this._then);

  final Entries2 _self;
  final $Res Function(Entries2) _then;

/// Create a copy of Entries2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? reason = null,Object? reference = freezed,Object? sourceType = null,Object? sourceId = null,Object? user = freezed,Object? quantity = null,Object? packCount = freezed,Object? packUnit = freezed,Object? balance = null,}) {
  return _then(Entries2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as Reason2,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User4?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Entries2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User4CopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $User4CopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Entries2].
extension Entries2Patterns on Entries2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Entries2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Entries2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Entries2 value)  $default,){
final _that = this;
switch (_that) {
case _Entries2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Entries2 value)?  $default,){
final _that = this;
switch (_that) {
case _Entries2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  Reason2 reason,  String? reference,  String sourceType,  String sourceId,  User4? user,  String quantity,  String? packCount,  String? packUnit,  String balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Entries2() when $default != null:
return $default(_that.id,_that.date,_that.reason,_that.reference,_that.sourceType,_that.sourceId,_that.user,_that.quantity,_that.packCount,_that.packUnit,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  Reason2 reason,  String? reference,  String sourceType,  String sourceId,  User4? user,  String quantity,  String? packCount,  String? packUnit,  String balance)  $default,) {final _that = this;
switch (_that) {
case _Entries2():
return $default(_that.id,_that.date,_that.reason,_that.reference,_that.sourceType,_that.sourceId,_that.user,_that.quantity,_that.packCount,_that.packUnit,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  Reason2 reason,  String? reference,  String sourceType,  String sourceId,  User4? user,  String quantity,  String? packCount,  String? packUnit,  String balance)?  $default,) {final _that = this;
switch (_that) {
case _Entries2() when $default != null:
return $default(_that.id,_that.date,_that.reason,_that.reference,_that.sourceType,_that.sourceId,_that.user,_that.quantity,_that.packCount,_that.packUnit,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Entries2 implements Entries2 {
  const _Entries2({required this.id, required this.date, required this.reason, required this.reference, required this.sourceType, required this.sourceId, required this.user, required this.quantity, required this.packCount, required this.packUnit, required this.balance});
  factory _Entries2.fromJson(Map<String, dynamic> json) => _$Entries2FromJson(json);

@override final  String id;
@override final  DateTime date;
@override final  Reason2 reason;
@override final  String? reference;
@override final  String sourceType;
@override final  String sourceId;
@override final  User4? user;
@override final  String quantity;
@override final  String? packCount;
@override final  String? packUnit;
@override final  String balance;

/// Create a copy of Entries2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Entries2CopyWith<_Entries2> get copyWith => __$Entries2CopyWithImpl<_Entries2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Entries2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Entries2&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.user, user) || other.user == user)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,date,reason,reference,sourceType,sourceId,user,quantity,packCount,packUnit,balance);
}

@override
String toString() {
    return 'Entries2(id: $id, date: $date, reason: $reason, reference: $reference, sourceType: $sourceType, sourceId: $sourceId, user: $user, quantity: $quantity, packCount: $packCount, packUnit: $packUnit, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$Entries2CopyWith<$Res> implements $Entries2CopyWith<$Res> {
  factory _$Entries2CopyWith(_Entries2 value, $Res Function(_Entries2) _then) = __$Entries2CopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, Reason2 reason, String? reference, String sourceType, String sourceId, User4? user, String quantity, String? packCount, String? packUnit, String balance
});


@override $User4CopyWith<$Res>? get user;

}
/// @nodoc
class __$Entries2CopyWithImpl<$Res>
    implements _$Entries2CopyWith<$Res> {
  __$Entries2CopyWithImpl(this._self, this._then);

  final _Entries2 _self;
  final $Res Function(_Entries2) _then;

/// Create a copy of Entries2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? reason = null,Object? reference = freezed,Object? sourceType = null,Object? sourceId = null,Object? user = freezed,Object? quantity = null,Object? packCount = freezed,Object? packUnit = freezed,Object? balance = null,}) {
  return _then(_Entries2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as Reason2,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User4?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Entries2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User4CopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $User4CopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
