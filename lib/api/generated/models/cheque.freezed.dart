// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cheque.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cheque {

 String get id; String get number; String? get bank; String? get chequeDate; Status4 get status;
/// Create a copy of Cheque
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChequeCopyWith<Cheque> get copyWith => _$ChequeCopyWithImpl<Cheque>(this as Cheque, _$identity);

  /// Serializes this Cheque to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Cheque;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cheque&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.bank, _this.bank) || other.bank == _this.bank)&&(identical(other.chequeDate, _this.chequeDate) || other.chequeDate == _this.chequeDate)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Cheque;
  return Object.hash(runtimeType,_this.id,_this.number,_this.bank,_this.chequeDate,_this.status);
}

@override
String toString() {
  final _this = this as Cheque;
  return 'Cheque(id: ${_this.id}, number: ${_this.number}, bank: ${_this.bank}, chequeDate: ${_this.chequeDate}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $ChequeCopyWith<$Res>  {
  factory $ChequeCopyWith(Cheque value, $Res Function(Cheque) _then) = _$ChequeCopyWithImpl;
@useResult
$Res call({
 String id, String number, String? bank, String? chequeDate, Status4 status
});




}
/// @nodoc
class _$ChequeCopyWithImpl<$Res>
    implements $ChequeCopyWith<$Res> {
  _$ChequeCopyWithImpl(this._self, this._then);

  final Cheque _self;
  final $Res Function(Cheque) _then;

/// Create a copy of Cheque
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? bank = freezed,Object? chequeDate = freezed,Object? status = null,}) {
  return _then(Cheque(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,bank: freezed == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String?,chequeDate: freezed == chequeDate ? _self.chequeDate : chequeDate // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status4,
  ));
}

}


/// Adds pattern-matching-related methods to [Cheque].
extension ChequePatterns on Cheque {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cheque value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cheque() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cheque value)  $default,){
final _that = this;
switch (_that) {
case _Cheque():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cheque value)?  $default,){
final _that = this;
switch (_that) {
case _Cheque() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String? bank,  String? chequeDate,  Status4 status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cheque() when $default != null:
return $default(_that.id,_that.number,_that.bank,_that.chequeDate,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String? bank,  String? chequeDate,  Status4 status)  $default,) {final _that = this;
switch (_that) {
case _Cheque():
return $default(_that.id,_that.number,_that.bank,_that.chequeDate,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String? bank,  String? chequeDate,  Status4 status)?  $default,) {final _that = this;
switch (_that) {
case _Cheque() when $default != null:
return $default(_that.id,_that.number,_that.bank,_that.chequeDate,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cheque implements Cheque {
  const _Cheque({required this.id, required this.number, required this.bank, required this.chequeDate, required this.status});
  factory _Cheque.fromJson(Map<String, dynamic> json) => _$ChequeFromJson(json);

@override final  String id;
@override final  String number;
@override final  String? bank;
@override final  String? chequeDate;
@override final  Status4 status;

/// Create a copy of Cheque
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChequeCopyWith<_Cheque> get copyWith => __$ChequeCopyWithImpl<_Cheque>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChequeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cheque&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.chequeDate, chequeDate) || other.chequeDate == chequeDate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,bank,chequeDate,status);
}

@override
String toString() {
    return 'Cheque(id: $id, number: $number, bank: $bank, chequeDate: $chequeDate, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChequeCopyWith<$Res> implements $ChequeCopyWith<$Res> {
  factory _$ChequeCopyWith(_Cheque value, $Res Function(_Cheque) _then) = __$ChequeCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String? bank, String? chequeDate, Status4 status
});




}
/// @nodoc
class __$ChequeCopyWithImpl<$Res>
    implements _$ChequeCopyWith<$Res> {
  __$ChequeCopyWithImpl(this._self, this._then);

  final _Cheque _self;
  final $Res Function(_Cheque) _then;

/// Create a copy of Cheque
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? bank = freezed,Object? chequeDate = freezed,Object? status = null,}) {
  return _then(_Cheque(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,bank: freezed == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String?,chequeDate: freezed == chequeDate ? _self.chequeDate : chequeDate // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status4,
  ));
}


}

// dart format on
