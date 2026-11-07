// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Documents {

 String get id; Type4 get type; String get number; String get date; String get party;
/// Create a copy of Documents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsCopyWith<Documents> get copyWith => _$DocumentsCopyWithImpl<Documents>(this as Documents, _$identity);

  /// Serializes this Documents to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Documents;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Documents&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.party, _this.party) || other.party == _this.party));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Documents;
  return Object.hash(runtimeType,_this.id,_this.type,_this.number,_this.date,_this.party);
}

@override
String toString() {
  final _this = this as Documents;
  return 'Documents(id: ${_this.id}, type: ${_this.type}, number: ${_this.number}, date: ${_this.date}, party: ${_this.party})';
}


}

/// @nodoc
abstract mixin class $DocumentsCopyWith<$Res>  {
  factory $DocumentsCopyWith(Documents value, $Res Function(Documents) _then) = _$DocumentsCopyWithImpl;
@useResult
$Res call({
 String id, Type4 type, String number, String date, String party
});




}
/// @nodoc
class _$DocumentsCopyWithImpl<$Res>
    implements $DocumentsCopyWith<$Res> {
  _$DocumentsCopyWithImpl(this._self, this._then);

  final Documents _self;
  final $Res Function(Documents) _then;

/// Create a copy of Documents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? number = null,Object? date = null,Object? party = null,}) {
  return _then(Documents(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type4,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,party: null == party ? _self.party : party // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Documents].
extension DocumentsPatterns on Documents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Documents value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Documents() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Documents value)  $default,){
final _that = this;
switch (_that) {
case _Documents():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Documents value)?  $default,){
final _that = this;
switch (_that) {
case _Documents() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Type4 type,  String number,  String date,  String party)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Documents() when $default != null:
return $default(_that.id,_that.type,_that.number,_that.date,_that.party);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Type4 type,  String number,  String date,  String party)  $default,) {final _that = this;
switch (_that) {
case _Documents():
return $default(_that.id,_that.type,_that.number,_that.date,_that.party);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Type4 type,  String number,  String date,  String party)?  $default,) {final _that = this;
switch (_that) {
case _Documents() when $default != null:
return $default(_that.id,_that.type,_that.number,_that.date,_that.party);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Documents implements Documents {
  const _Documents({required this.id, required this.type, required this.number, required this.date, required this.party});
  factory _Documents.fromJson(Map<String, dynamic> json) => _$DocumentsFromJson(json);

@override final  String id;
@override final  Type4 type;
@override final  String number;
@override final  String date;
@override final  String party;

/// Create a copy of Documents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentsCopyWith<_Documents> get copyWith => __$DocumentsCopyWithImpl<_Documents>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Documents&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.number, number) || other.number == number)&&(identical(other.date, date) || other.date == date)&&(identical(other.party, party) || other.party == party));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,number,date,party);
}

@override
String toString() {
    return 'Documents(id: $id, type: $type, number: $number, date: $date, party: $party)';
}


}

/// @nodoc
abstract mixin class _$DocumentsCopyWith<$Res> implements $DocumentsCopyWith<$Res> {
  factory _$DocumentsCopyWith(_Documents value, $Res Function(_Documents) _then) = __$DocumentsCopyWithImpl;
@override @useResult
$Res call({
 String id, Type4 type, String number, String date, String party
});




}
/// @nodoc
class __$DocumentsCopyWithImpl<$Res>
    implements _$DocumentsCopyWith<$Res> {
  __$DocumentsCopyWithImpl(this._self, this._then);

  final _Documents _self;
  final $Res Function(_Documents) _then;

/// Create a copy of Documents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? number = null,Object? date = null,Object? party = null,}) {
  return _then(_Documents(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type4,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,party: null == party ? _self.party : party // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
