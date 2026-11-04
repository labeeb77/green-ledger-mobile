// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Entries {

 String get id; DateTime get date; String get kind; String get description; String? get reference; String get sourceType; String get sourceId; int get amount; String? get dueDate; int get balance;
/// Create a copy of Entries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntriesCopyWith<Entries> get copyWith => _$EntriesCopyWithImpl<Entries>(this as Entries, _$identity);

  /// Serializes this Entries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Entries;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entries&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.reference, _this.reference) || other.reference == _this.reference)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.balance, _this.balance) || other.balance == _this.balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Entries;
  return Object.hash(runtimeType,_this.id,_this.date,_this.kind,_this.description,_this.reference,_this.sourceType,_this.sourceId,_this.amount,_this.dueDate,_this.balance);
}

@override
String toString() {
  final _this = this as Entries;
  return 'Entries(id: ${_this.id}, date: ${_this.date}, kind: ${_this.kind}, description: ${_this.description}, reference: ${_this.reference}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, amount: ${_this.amount}, dueDate: ${_this.dueDate}, balance: ${_this.balance})';
}


}

/// @nodoc
abstract mixin class $EntriesCopyWith<$Res>  {
  factory $EntriesCopyWith(Entries value, $Res Function(Entries) _then) = _$EntriesCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, String kind, String description, String? reference, String sourceType, String sourceId, int amount, String? dueDate, int balance
});




}
/// @nodoc
class _$EntriesCopyWithImpl<$Res>
    implements $EntriesCopyWith<$Res> {
  _$EntriesCopyWithImpl(this._self, this._then);

  final Entries _self;
  final $Res Function(Entries) _then;

/// Create a copy of Entries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? kind = null,Object? description = null,Object? reference = freezed,Object? sourceType = null,Object? sourceId = null,Object? amount = null,Object? dueDate = freezed,Object? balance = null,}) {
  return _then(Entries(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Entries].
extension EntriesPatterns on Entries {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Entries value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Entries() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Entries value)  $default,){
final _that = this;
switch (_that) {
case _Entries():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Entries value)?  $default,){
final _that = this;
switch (_that) {
case _Entries() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  String kind,  String description,  String? reference,  String sourceType,  String sourceId,  int amount,  String? dueDate,  int balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Entries() when $default != null:
return $default(_that.id,_that.date,_that.kind,_that.description,_that.reference,_that.sourceType,_that.sourceId,_that.amount,_that.dueDate,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  String kind,  String description,  String? reference,  String sourceType,  String sourceId,  int amount,  String? dueDate,  int balance)  $default,) {final _that = this;
switch (_that) {
case _Entries():
return $default(_that.id,_that.date,_that.kind,_that.description,_that.reference,_that.sourceType,_that.sourceId,_that.amount,_that.dueDate,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  String kind,  String description,  String? reference,  String sourceType,  String sourceId,  int amount,  String? dueDate,  int balance)?  $default,) {final _that = this;
switch (_that) {
case _Entries() when $default != null:
return $default(_that.id,_that.date,_that.kind,_that.description,_that.reference,_that.sourceType,_that.sourceId,_that.amount,_that.dueDate,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Entries implements Entries {
  const _Entries({required this.id, required this.date, required this.kind, required this.description, required this.reference, required this.sourceType, required this.sourceId, required this.amount, required this.dueDate, required this.balance});
  factory _Entries.fromJson(Map<String, dynamic> json) => _$EntriesFromJson(json);

@override final  String id;
@override final  DateTime date;
@override final  String kind;
@override final  String description;
@override final  String? reference;
@override final  String sourceType;
@override final  String sourceId;
@override final  int amount;
@override final  String? dueDate;
@override final  int balance;

/// Create a copy of Entries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntriesCopyWith<_Entries> get copyWith => __$EntriesCopyWithImpl<_Entries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntriesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Entries&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.description, description) || other.description == description)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,date,kind,description,reference,sourceType,sourceId,amount,dueDate,balance);
}

@override
String toString() {
    return 'Entries(id: $id, date: $date, kind: $kind, description: $description, reference: $reference, sourceType: $sourceType, sourceId: $sourceId, amount: $amount, dueDate: $dueDate, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$EntriesCopyWith<$Res> implements $EntriesCopyWith<$Res> {
  factory _$EntriesCopyWith(_Entries value, $Res Function(_Entries) _then) = __$EntriesCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime date, String kind, String description, String? reference, String sourceType, String sourceId, int amount, String? dueDate, int balance
});




}
/// @nodoc
class __$EntriesCopyWithImpl<$Res>
    implements _$EntriesCopyWith<$Res> {
  __$EntriesCopyWithImpl(this._self, this._then);

  final _Entries _self;
  final $Res Function(_Entries) _then;

/// Create a copy of Entries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? kind = null,Object? description = null,Object? reference = freezed,Object? sourceType = null,Object? sourceId = null,Object? amount = null,Object? dueDate = freezed,Object? balance = null,}) {
  return _then(_Entries(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
