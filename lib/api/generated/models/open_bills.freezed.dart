// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_bills.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenBills {

 String get id; String get number; String get date; String get dueDate; int get total; int get open;
/// Create a copy of OpenBills
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenBillsCopyWith<OpenBills> get copyWith => _$OpenBillsCopyWithImpl<OpenBills>(this as OpenBills, _$identity);

  /// Serializes this OpenBills to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OpenBills;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenBills&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.open, _this.open) || other.open == _this.open));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OpenBills;
  return Object.hash(runtimeType,_this.id,_this.number,_this.date,_this.dueDate,_this.total,_this.open);
}

@override
String toString() {
  final _this = this as OpenBills;
  return 'OpenBills(id: ${_this.id}, number: ${_this.number}, date: ${_this.date}, dueDate: ${_this.dueDate}, total: ${_this.total}, open: ${_this.open})';
}


}

/// @nodoc
abstract mixin class $OpenBillsCopyWith<$Res>  {
  factory $OpenBillsCopyWith(OpenBills value, $Res Function(OpenBills) _then) = _$OpenBillsCopyWithImpl;
@useResult
$Res call({
 String id, String number, String date, String dueDate, int total, int open
});




}
/// @nodoc
class _$OpenBillsCopyWithImpl<$Res>
    implements $OpenBillsCopyWith<$Res> {
  _$OpenBillsCopyWithImpl(this._self, this._then);

  final OpenBills _self;
  final $Res Function(OpenBills) _then;

/// Create a copy of OpenBills
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? date = null,Object? dueDate = null,Object? total = null,Object? open = null,}) {
  return _then(OpenBills(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenBills].
extension OpenBillsPatterns on OpenBills {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenBills value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenBills() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenBills value)  $default,){
final _that = this;
switch (_that) {
case _OpenBills():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenBills value)?  $default,){
final _that = this;
switch (_that) {
case _OpenBills() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String date,  String dueDate,  int total,  int open)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenBills() when $default != null:
return $default(_that.id,_that.number,_that.date,_that.dueDate,_that.total,_that.open);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String date,  String dueDate,  int total,  int open)  $default,) {final _that = this;
switch (_that) {
case _OpenBills():
return $default(_that.id,_that.number,_that.date,_that.dueDate,_that.total,_that.open);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String date,  String dueDate,  int total,  int open)?  $default,) {final _that = this;
switch (_that) {
case _OpenBills() when $default != null:
return $default(_that.id,_that.number,_that.date,_that.dueDate,_that.total,_that.open);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenBills implements OpenBills {
  const _OpenBills({required this.id, required this.number, required this.date, required this.dueDate, required this.total, required this.open});
  factory _OpenBills.fromJson(Map<String, dynamic> json) => _$OpenBillsFromJson(json);

@override final  String id;
@override final  String number;
@override final  String date;
@override final  String dueDate;
@override final  int total;
@override final  int open;

/// Create a copy of OpenBills
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenBillsCopyWith<_OpenBills> get copyWith => __$OpenBillsCopyWithImpl<_OpenBills>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenBillsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenBills&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.date, date) || other.date == date)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.total, total) || other.total == total)&&(identical(other.open, open) || other.open == open));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,date,dueDate,total,open);
}

@override
String toString() {
    return 'OpenBills(id: $id, number: $number, date: $date, dueDate: $dueDate, total: $total, open: $open)';
}


}

/// @nodoc
abstract mixin class _$OpenBillsCopyWith<$Res> implements $OpenBillsCopyWith<$Res> {
  factory _$OpenBillsCopyWith(_OpenBills value, $Res Function(_OpenBills) _then) = __$OpenBillsCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String date, String dueDate, int total, int open
});




}
/// @nodoc
class __$OpenBillsCopyWithImpl<$Res>
    implements _$OpenBillsCopyWith<$Res> {
  __$OpenBillsCopyWithImpl(this._self, this._then);

  final _OpenBills _self;
  final $Res Function(_OpenBills) _then;

/// Create a copy of OpenBills
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? date = null,Object? dueDate = null,Object? total = null,Object? open = null,}) {
  return _then(_OpenBills(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
