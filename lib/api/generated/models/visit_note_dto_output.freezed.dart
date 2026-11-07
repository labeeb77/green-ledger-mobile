// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_note_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitNoteDtoOutput {

 String get id; String get visitDate; VisitNoteDtoOutputOutcome get outcome; String? get promiseDate; String? get note; Customer8 get customer; User6 get user; Receipt2? get receipt; DateTime get createdAt;
/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitNoteDtoOutputCopyWith<VisitNoteDtoOutput> get copyWith => _$VisitNoteDtoOutputCopyWithImpl<VisitNoteDtoOutput>(this as VisitNoteDtoOutput, _$identity);

  /// Serializes this VisitNoteDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VisitNoteDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitNoteDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.visitDate, _this.visitDate) || other.visitDate == _this.visitDate)&&(identical(other.outcome, _this.outcome) || other.outcome == _this.outcome)&&(identical(other.promiseDate, _this.promiseDate) || other.promiseDate == _this.promiseDate)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.customer, _this.customer) || other.customer == _this.customer)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.receipt, _this.receipt) || other.receipt == _this.receipt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VisitNoteDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.visitDate,_this.outcome,_this.promiseDate,_this.note,_this.customer,_this.user,_this.receipt,_this.createdAt);
}

@override
String toString() {
  final _this = this as VisitNoteDtoOutput;
  return 'VisitNoteDtoOutput(id: ${_this.id}, visitDate: ${_this.visitDate}, outcome: ${_this.outcome}, promiseDate: ${_this.promiseDate}, note: ${_this.note}, customer: ${_this.customer}, user: ${_this.user}, receipt: ${_this.receipt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $VisitNoteDtoOutputCopyWith<$Res>  {
  factory $VisitNoteDtoOutputCopyWith(VisitNoteDtoOutput value, $Res Function(VisitNoteDtoOutput) _then) = _$VisitNoteDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String visitDate, VisitNoteDtoOutputOutcome outcome, String? promiseDate, String? note, Customer8 customer, User6 user, Receipt2? receipt, DateTime createdAt
});


$Customer8CopyWith<$Res> get customer;$User6CopyWith<$Res> get user;$Receipt2CopyWith<$Res>? get receipt;

}
/// @nodoc
class _$VisitNoteDtoOutputCopyWithImpl<$Res>
    implements $VisitNoteDtoOutputCopyWith<$Res> {
  _$VisitNoteDtoOutputCopyWithImpl(this._self, this._then);

  final VisitNoteDtoOutput _self;
  final $Res Function(VisitNoteDtoOutput) _then;

/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? visitDate = null,Object? outcome = null,Object? promiseDate = freezed,Object? note = freezed,Object? customer = null,Object? user = null,Object? receipt = freezed,Object? createdAt = null,}) {
  return _then(VisitNoteDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as String,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as VisitNoteDtoOutputOutcome,promiseDate: freezed == promiseDate ? _self.promiseDate : promiseDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer8,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User6,receipt: freezed == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as Receipt2?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer8CopyWith<$Res> get customer {
  
  return $Customer8CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User6CopyWith<$Res> get user {
  
  return $User6CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Receipt2CopyWith<$Res>? get receipt {
    if (_self.receipt == null) {
    return null;
  }

  return $Receipt2CopyWith<$Res>(_self.receipt!, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}
}


/// Adds pattern-matching-related methods to [VisitNoteDtoOutput].
extension VisitNoteDtoOutputPatterns on VisitNoteDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitNoteDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitNoteDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitNoteDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _VisitNoteDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitNoteDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _VisitNoteDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String visitDate,  VisitNoteDtoOutputOutcome outcome,  String? promiseDate,  String? note,  Customer8 customer,  User6 user,  Receipt2? receipt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitNoteDtoOutput() when $default != null:
return $default(_that.id,_that.visitDate,_that.outcome,_that.promiseDate,_that.note,_that.customer,_that.user,_that.receipt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String visitDate,  VisitNoteDtoOutputOutcome outcome,  String? promiseDate,  String? note,  Customer8 customer,  User6 user,  Receipt2? receipt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _VisitNoteDtoOutput():
return $default(_that.id,_that.visitDate,_that.outcome,_that.promiseDate,_that.note,_that.customer,_that.user,_that.receipt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String visitDate,  VisitNoteDtoOutputOutcome outcome,  String? promiseDate,  String? note,  Customer8 customer,  User6 user,  Receipt2? receipt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VisitNoteDtoOutput() when $default != null:
return $default(_that.id,_that.visitDate,_that.outcome,_that.promiseDate,_that.note,_that.customer,_that.user,_that.receipt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitNoteDtoOutput implements VisitNoteDtoOutput {
  const _VisitNoteDtoOutput({required this.id, required this.visitDate, required this.outcome, required this.promiseDate, required this.note, required this.customer, required this.user, required this.receipt, required this.createdAt});
  factory _VisitNoteDtoOutput.fromJson(Map<String, dynamic> json) => _$VisitNoteDtoOutputFromJson(json);

@override final  String id;
@override final  String visitDate;
@override final  VisitNoteDtoOutputOutcome outcome;
@override final  String? promiseDate;
@override final  String? note;
@override final  Customer8 customer;
@override final  User6 user;
@override final  Receipt2? receipt;
@override final  DateTime createdAt;

/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitNoteDtoOutputCopyWith<_VisitNoteDtoOutput> get copyWith => __$VisitNoteDtoOutputCopyWithImpl<_VisitNoteDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitNoteDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitNoteDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.promiseDate, promiseDate) || other.promiseDate == promiseDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.user, user) || other.user == user)&&(identical(other.receipt, receipt) || other.receipt == receipt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,visitDate,outcome,promiseDate,note,customer,user,receipt,createdAt);
}

@override
String toString() {
    return 'VisitNoteDtoOutput(id: $id, visitDate: $visitDate, outcome: $outcome, promiseDate: $promiseDate, note: $note, customer: $customer, user: $user, receipt: $receipt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VisitNoteDtoOutputCopyWith<$Res> implements $VisitNoteDtoOutputCopyWith<$Res> {
  factory _$VisitNoteDtoOutputCopyWith(_VisitNoteDtoOutput value, $Res Function(_VisitNoteDtoOutput) _then) = __$VisitNoteDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String visitDate, VisitNoteDtoOutputOutcome outcome, String? promiseDate, String? note, Customer8 customer, User6 user, Receipt2? receipt, DateTime createdAt
});


@override $Customer8CopyWith<$Res> get customer;@override $User6CopyWith<$Res> get user;@override $Receipt2CopyWith<$Res>? get receipt;

}
/// @nodoc
class __$VisitNoteDtoOutputCopyWithImpl<$Res>
    implements _$VisitNoteDtoOutputCopyWith<$Res> {
  __$VisitNoteDtoOutputCopyWithImpl(this._self, this._then);

  final _VisitNoteDtoOutput _self;
  final $Res Function(_VisitNoteDtoOutput) _then;

/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? visitDate = null,Object? outcome = null,Object? promiseDate = freezed,Object? note = freezed,Object? customer = null,Object? user = null,Object? receipt = freezed,Object? createdAt = null,}) {
  return _then(_VisitNoteDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as String,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as VisitNoteDtoOutputOutcome,promiseDate: freezed == promiseDate ? _self.promiseDate : promiseDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer8,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User6,receipt: freezed == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as Receipt2?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer8CopyWith<$Res> get customer {
  
  return $Customer8CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User6CopyWith<$Res> get user {
  
  return $User6CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of VisitNoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Receipt2CopyWith<$Res>? get receipt {
    if (_self.receipt == null) {
    return null;
  }

  return $Receipt2CopyWith<$Res>(_self.receipt!, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}
}

// dart format on
