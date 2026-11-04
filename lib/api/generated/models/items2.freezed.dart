// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Items2 {

 String get id; String get number; DateTime get expenseDate; Category get category; Account4 get account; int get amount; String? get reference; String? get notes; Status3 get status; CreatedBy7? get createdBy; DateTime get createdAt; String? get cancelReason;
/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Items2CopyWith<Items2> get copyWith => _$Items2CopyWithImpl<Items2>(this as Items2, _$identity);

  /// Serializes this Items2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Items2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Items2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.expenseDate, _this.expenseDate) || other.expenseDate == _this.expenseDate)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Items2;
  return Object.hash(runtimeType,_this.id,_this.number,_this.expenseDate,_this.category,_this.account,_this.amount,_this.reference,_this.notes,_this.status,_this.createdBy,_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as Items2;
  return 'Items2(id: ${_this.id}, number: ${_this.number}, expenseDate: ${_this.expenseDate}, category: ${_this.category}, account: ${_this.account}, amount: ${_this.amount}, reference: ${_this.reference}, notes: ${_this.notes}, status: ${_this.status}, createdBy: ${_this.createdBy}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $Items2CopyWith<$Res>  {
  factory $Items2CopyWith(Items2 value, $Res Function(Items2) _then) = _$Items2CopyWithImpl;
@useResult
$Res call({
 String id, String number, DateTime expenseDate, Category category, Account4 account, int amount, String? reference, String? notes, Status3 status, CreatedBy7? createdBy, DateTime createdAt, String? cancelReason
});


$CategoryCopyWith<$Res> get category;$Account4CopyWith<$Res> get account;$CreatedBy7CopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$Items2CopyWithImpl<$Res>
    implements $Items2CopyWith<$Res> {
  _$Items2CopyWithImpl(this._self, this._then);

  final Items2 _self;
  final $Res Function(Items2) _then;

/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? expenseDate = null,Object? category = null,Object? account = null,Object? amount = null,Object? reference = freezed,Object? notes = freezed,Object? status = null,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(Items2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,expenseDate: null == expenseDate ? _self.expenseDate : expenseDate // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account4,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status3,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy7?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Account4CopyWith<$Res> get account {
  
  return $Account4CopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy7CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy7CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Items2].
extension Items2Patterns on Items2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Items2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Items2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Items2 value)  $default,){
final _that = this;
switch (_that) {
case _Items2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Items2 value)?  $default,){
final _that = this;
switch (_that) {
case _Items2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  DateTime expenseDate,  Category category,  Account4 account,  int amount,  String? reference,  String? notes,  Status3 status,  CreatedBy7? createdBy,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Items2() when $default != null:
return $default(_that.id,_that.number,_that.expenseDate,_that.category,_that.account,_that.amount,_that.reference,_that.notes,_that.status,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  DateTime expenseDate,  Category category,  Account4 account,  int amount,  String? reference,  String? notes,  Status3 status,  CreatedBy7? createdBy,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _Items2():
return $default(_that.id,_that.number,_that.expenseDate,_that.category,_that.account,_that.amount,_that.reference,_that.notes,_that.status,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  DateTime expenseDate,  Category category,  Account4 account,  int amount,  String? reference,  String? notes,  Status3 status,  CreatedBy7? createdBy,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _Items2() when $default != null:
return $default(_that.id,_that.number,_that.expenseDate,_that.category,_that.account,_that.amount,_that.reference,_that.notes,_that.status,_that.createdBy,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Items2 implements Items2 {
  const _Items2({required this.id, required this.number, required this.expenseDate, required this.category, required this.account, required this.amount, required this.reference, required this.notes, required this.status, required this.createdBy, required this.createdAt, required this.cancelReason});
  factory _Items2.fromJson(Map<String, dynamic> json) => _$Items2FromJson(json);

@override final  String id;
@override final  String number;
@override final  DateTime expenseDate;
@override final  Category category;
@override final  Account4 account;
@override final  int amount;
@override final  String? reference;
@override final  String? notes;
@override final  Status3 status;
@override final  CreatedBy7? createdBy;
@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Items2CopyWith<_Items2> get copyWith => __$Items2CopyWithImpl<_Items2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Items2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Items2&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.expenseDate, expenseDate) || other.expenseDate == expenseDate)&&(identical(other.category, category) || other.category == category)&&(identical(other.account, account) || other.account == account)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,expenseDate,category,account,amount,reference,notes,status,createdBy,createdAt,cancelReason);
}

@override
String toString() {
    return 'Items2(id: $id, number: $number, expenseDate: $expenseDate, category: $category, account: $account, amount: $amount, reference: $reference, notes: $notes, status: $status, createdBy: $createdBy, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$Items2CopyWith<$Res> implements $Items2CopyWith<$Res> {
  factory _$Items2CopyWith(_Items2 value, $Res Function(_Items2) _then) = __$Items2CopyWithImpl;
@override @useResult
$Res call({
 String id, String number, DateTime expenseDate, Category category, Account4 account, int amount, String? reference, String? notes, Status3 status, CreatedBy7? createdBy, DateTime createdAt, String? cancelReason
});


@override $CategoryCopyWith<$Res> get category;@override $Account4CopyWith<$Res> get account;@override $CreatedBy7CopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$Items2CopyWithImpl<$Res>
    implements _$Items2CopyWith<$Res> {
  __$Items2CopyWithImpl(this._self, this._then);

  final _Items2 _self;
  final $Res Function(_Items2) _then;

/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? expenseDate = null,Object? category = null,Object? account = null,Object? amount = null,Object? reference = freezed,Object? notes = freezed,Object? status = null,Object? createdBy = freezed,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_Items2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,expenseDate: null == expenseDate ? _self.expenseDate : expenseDate // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account4,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status3,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy7?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Account4CopyWith<$Res> get account {
  
  return $Account4CopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of Items2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy7CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy7CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
