// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Receipt2 {

 String get id; String get number;
/// Create a copy of Receipt2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Receipt2CopyWith<Receipt2> get copyWith => _$Receipt2CopyWithImpl<Receipt2>(this as Receipt2, _$identity);

  /// Serializes this Receipt2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Receipt2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Receipt2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Receipt2;
  return Object.hash(runtimeType,_this.id,_this.number);
}

@override
String toString() {
  final _this = this as Receipt2;
  return 'Receipt2(id: ${_this.id}, number: ${_this.number})';
}


}

/// @nodoc
abstract mixin class $Receipt2CopyWith<$Res>  {
  factory $Receipt2CopyWith(Receipt2 value, $Res Function(Receipt2) _then) = _$Receipt2CopyWithImpl;
@useResult
$Res call({
 String id, String number
});




}
/// @nodoc
class _$Receipt2CopyWithImpl<$Res>
    implements $Receipt2CopyWith<$Res> {
  _$Receipt2CopyWithImpl(this._self, this._then);

  final Receipt2 _self;
  final $Res Function(Receipt2) _then;

/// Create a copy of Receipt2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,}) {
  return _then(Receipt2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Receipt2].
extension Receipt2Patterns on Receipt2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Receipt2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Receipt2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Receipt2 value)  $default,){
final _that = this;
switch (_that) {
case _Receipt2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Receipt2 value)?  $default,){
final _that = this;
switch (_that) {
case _Receipt2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Receipt2() when $default != null:
return $default(_that.id,_that.number);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number)  $default,) {final _that = this;
switch (_that) {
case _Receipt2():
return $default(_that.id,_that.number);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number)?  $default,) {final _that = this;
switch (_that) {
case _Receipt2() when $default != null:
return $default(_that.id,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Receipt2 implements Receipt2 {
  const _Receipt2({required this.id, required this.number});
  factory _Receipt2.fromJson(Map<String, dynamic> json) => _$Receipt2FromJson(json);

@override final  String id;
@override final  String number;

/// Create a copy of Receipt2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Receipt2CopyWith<_Receipt2> get copyWith => __$Receipt2CopyWithImpl<_Receipt2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Receipt2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Receipt2&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number);
}

@override
String toString() {
    return 'Receipt2(id: $id, number: $number)';
}


}

/// @nodoc
abstract mixin class _$Receipt2CopyWith<$Res> implements $Receipt2CopyWith<$Res> {
  factory _$Receipt2CopyWith(_Receipt2 value, $Res Function(_Receipt2) _then) = __$Receipt2CopyWithImpl;
@override @useResult
$Res call({
 String id, String number
});




}
/// @nodoc
class __$Receipt2CopyWithImpl<$Res>
    implements _$Receipt2CopyWith<$Res> {
  __$Receipt2CopyWithImpl(this._self, this._then);

  final _Receipt2 _self;
  final $Res Function(_Receipt2) _then;

/// Create a copy of Receipt2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,}) {
  return _then(_Receipt2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
