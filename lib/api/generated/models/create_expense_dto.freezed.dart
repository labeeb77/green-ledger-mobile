// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExpenseDto {

 String get categoryId; String get accountId; int get amount; String? get expenseDate; String? get reference; String? get notes;
/// Create a copy of CreateExpenseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateExpenseDtoCopyWith<CreateExpenseDto> get copyWith => _$CreateExpenseDtoCopyWithImpl<CreateExpenseDto>(this as CreateExpenseDto, _$identity);

  /// Serializes this CreateExpenseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateExpenseDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateExpenseDto&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.expenseDate, _this.expenseDate) || other.expenseDate == _this.expenseDate)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.notes, _this.notes) || other.notes == _this.notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateExpenseDto;
  return Object.hash(runtimeType,_this.categoryId,_this.accountId,_this.amount,_this.expenseDate,_this.reference,_this.notes);
}

@override
String toString() {
  final _this = this as CreateExpenseDto;
  return 'CreateExpenseDto(categoryId: ${_this.categoryId}, accountId: ${_this.accountId}, amount: ${_this.amount}, expenseDate: ${_this.expenseDate}, reference: ${_this.reference}, notes: ${_this.notes})';
}


}

/// @nodoc
abstract mixin class $CreateExpenseDtoCopyWith<$Res>  {
  factory $CreateExpenseDtoCopyWith(CreateExpenseDto value, $Res Function(CreateExpenseDto) _then) = _$CreateExpenseDtoCopyWithImpl;
@useResult
$Res call({
 String categoryId, String accountId, int amount, String? expenseDate, String? reference, String? notes
});




}
/// @nodoc
class _$CreateExpenseDtoCopyWithImpl<$Res>
    implements $CreateExpenseDtoCopyWith<$Res> {
  _$CreateExpenseDtoCopyWithImpl(this._self, this._then);

  final CreateExpenseDto _self;
  final $Res Function(CreateExpenseDto) _then;

/// Create a copy of CreateExpenseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? accountId = null,Object? amount = null,Object? expenseDate = freezed,Object? reference = freezed,Object? notes = freezed,}) {
  return _then(CreateExpenseDto(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,expenseDate: freezed == expenseDate ? _self.expenseDate : expenseDate // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateExpenseDto].
extension CreateExpenseDtoPatterns on CreateExpenseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateExpenseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateExpenseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateExpenseDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateExpenseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categoryId,  String accountId,  int amount,  String? expenseDate,  String? reference,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateExpenseDto() when $default != null:
return $default(_that.categoryId,_that.accountId,_that.amount,_that.expenseDate,_that.reference,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categoryId,  String accountId,  int amount,  String? expenseDate,  String? reference,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseDto():
return $default(_that.categoryId,_that.accountId,_that.amount,_that.expenseDate,_that.reference,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categoryId,  String accountId,  int amount,  String? expenseDate,  String? reference,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseDto() when $default != null:
return $default(_that.categoryId,_that.accountId,_that.amount,_that.expenseDate,_that.reference,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateExpenseDto implements CreateExpenseDto {
  const _CreateExpenseDto({required this.categoryId, required this.accountId, required this.amount, this.expenseDate, this.reference, this.notes});
  factory _CreateExpenseDto.fromJson(Map<String, dynamic> json) => _$CreateExpenseDtoFromJson(json);

@override final  String categoryId;
@override final  String accountId;
@override final  int amount;
@override final  String? expenseDate;
@override final  String? reference;
@override final  String? notes;

/// Create a copy of CreateExpenseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateExpenseDtoCopyWith<_CreateExpenseDto> get copyWith => __$CreateExpenseDtoCopyWithImpl<_CreateExpenseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateExpenseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateExpenseDto&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expenseDate, expenseDate) || other.expenseDate == expenseDate)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,accountId,amount,expenseDate,reference,notes);
}

@override
String toString() {
    return 'CreateExpenseDto(categoryId: $categoryId, accountId: $accountId, amount: $amount, expenseDate: $expenseDate, reference: $reference, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateExpenseDtoCopyWith<$Res> implements $CreateExpenseDtoCopyWith<$Res> {
  factory _$CreateExpenseDtoCopyWith(_CreateExpenseDto value, $Res Function(_CreateExpenseDto) _then) = __$CreateExpenseDtoCopyWithImpl;
@override @useResult
$Res call({
 String categoryId, String accountId, int amount, String? expenseDate, String? reference, String? notes
});




}
/// @nodoc
class __$CreateExpenseDtoCopyWithImpl<$Res>
    implements _$CreateExpenseDtoCopyWith<$Res> {
  __$CreateExpenseDtoCopyWithImpl(this._self, this._then);

  final _CreateExpenseDto _self;
  final $Res Function(_CreateExpenseDto) _then;

/// Create a copy of CreateExpenseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? accountId = null,Object? amount = null,Object? expenseDate = freezed,Object? reference = freezed,Object? notes = freezed,}) {
  return _then(_CreateExpenseDto(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,expenseDate: freezed == expenseDate ? _self.expenseDate : expenseDate // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
