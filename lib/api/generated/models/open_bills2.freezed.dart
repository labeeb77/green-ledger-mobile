// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_bills2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenBills2 {

 String get id; String get number; DateTime get date; DateTime get dueDate; int get total; int get open;
/// Create a copy of OpenBills2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenBills2CopyWith<OpenBills2> get copyWith => _$OpenBills2CopyWithImpl<OpenBills2>(this as OpenBills2, _$identity);

  /// Serializes this OpenBills2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OpenBills2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenBills2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.open, _this.open) || other.open == _this.open));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OpenBills2;
  return Object.hash(runtimeType,_this.id,_this.number,_this.date,_this.dueDate,_this.total,_this.open);
}

@override
String toString() {
  final _this = this as OpenBills2;
  return 'OpenBills2(id: ${_this.id}, number: ${_this.number}, date: ${_this.date}, dueDate: ${_this.dueDate}, total: ${_this.total}, open: ${_this.open})';
}


}

/// @nodoc
abstract mixin class $OpenBills2CopyWith<$Res>  {
  factory $OpenBills2CopyWith(OpenBills2 value, $Res Function(OpenBills2) _then) = _$OpenBills2CopyWithImpl;
@useResult
$Res call({
 String id, String number, DateTime date, DateTime dueDate, int total, int open
});




}
/// @nodoc
class _$OpenBills2CopyWithImpl<$Res>
    implements $OpenBills2CopyWith<$Res> {
  _$OpenBills2CopyWithImpl(this._self, this._then);

  final OpenBills2 _self;
  final $Res Function(OpenBills2) _then;

/// Create a copy of OpenBills2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? date = null,Object? dueDate = null,Object? total = null,Object? open = null,}) {
  return _then(OpenBills2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenBills2].
extension OpenBills2Patterns on OpenBills2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenBills2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenBills2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenBills2 value)  $default,){
final _that = this;
switch (_that) {
case _OpenBills2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenBills2 value)?  $default,){
final _that = this;
switch (_that) {
case _OpenBills2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  DateTime date,  DateTime dueDate,  int total,  int open)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenBills2() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  DateTime date,  DateTime dueDate,  int total,  int open)  $default,) {final _that = this;
switch (_that) {
case _OpenBills2():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  DateTime date,  DateTime dueDate,  int total,  int open)?  $default,) {final _that = this;
switch (_that) {
case _OpenBills2() when $default != null:
return $default(_that.id,_that.number,_that.date,_that.dueDate,_that.total,_that.open);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenBills2 implements OpenBills2 {
  const _OpenBills2({required this.id, required this.number, required this.date, required this.dueDate, required this.total, required this.open});
  factory _OpenBills2.fromJson(Map<String, dynamic> json) => _$OpenBills2FromJson(json);

@override final  String id;
@override final  String number;
@override final  DateTime date;
@override final  DateTime dueDate;
@override final  int total;
@override final  int open;

/// Create a copy of OpenBills2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenBills2CopyWith<_OpenBills2> get copyWith => __$OpenBills2CopyWithImpl<_OpenBills2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenBills2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenBills2&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.date, date) || other.date == date)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.total, total) || other.total == total)&&(identical(other.open, open) || other.open == open));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,date,dueDate,total,open);
}

@override
String toString() {
    return 'OpenBills2(id: $id, number: $number, date: $date, dueDate: $dueDate, total: $total, open: $open)';
}


}

/// @nodoc
abstract mixin class _$OpenBills2CopyWith<$Res> implements $OpenBills2CopyWith<$Res> {
  factory _$OpenBills2CopyWith(_OpenBills2 value, $Res Function(_OpenBills2) _then) = __$OpenBills2CopyWithImpl;
@override @useResult
$Res call({
 String id, String number, DateTime date, DateTime dueDate, int total, int open
});




}
/// @nodoc
class __$OpenBills2CopyWithImpl<$Res>
    implements _$OpenBills2CopyWith<$Res> {
  __$OpenBills2CopyWithImpl(this._self, this._then);

  final _OpenBills2 _self;
  final $Res Function(_OpenBills2) _then;

/// Create a copy of OpenBills2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? date = null,Object? dueDate = null,Object? total = null,Object? open = null,}) {
  return _then(_OpenBills2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
