// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bill2 {

 String get id; String? get number;
/// Create a copy of Bill2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Bill2CopyWith<Bill2> get copyWith => _$Bill2CopyWithImpl<Bill2>(this as Bill2, _$identity);

  /// Serializes this Bill2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Bill2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bill2&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Bill2;
  return Object.hash(runtimeType,_this.id,_this.number);
}

@override
String toString() {
  final _this = this as Bill2;
  return 'Bill2(id: ${_this.id}, number: ${_this.number})';
}


}

/// @nodoc
abstract mixin class $Bill2CopyWith<$Res>  {
  factory $Bill2CopyWith(Bill2 value, $Res Function(Bill2) _then) = _$Bill2CopyWithImpl;
@useResult
$Res call({
 String id, String? number
});




}
/// @nodoc
class _$Bill2CopyWithImpl<$Res>
    implements $Bill2CopyWith<$Res> {
  _$Bill2CopyWithImpl(this._self, this._then);

  final Bill2 _self;
  final $Res Function(Bill2) _then;

/// Create a copy of Bill2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = freezed,}) {
  return _then(Bill2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Bill2].
extension Bill2Patterns on Bill2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bill2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bill2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bill2 value)  $default,){
final _that = this;
switch (_that) {
case _Bill2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bill2 value)?  $default,){
final _that = this;
switch (_that) {
case _Bill2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bill2() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? number)  $default,) {final _that = this;
switch (_that) {
case _Bill2():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? number)?  $default,) {final _that = this;
switch (_that) {
case _Bill2() when $default != null:
return $default(_that.id,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bill2 implements Bill2 {
  const _Bill2({required this.id, required this.number});
  factory _Bill2.fromJson(Map<String, dynamic> json) => _$Bill2FromJson(json);

@override final  String id;
@override final  String? number;

/// Create a copy of Bill2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Bill2CopyWith<_Bill2> get copyWith => __$Bill2CopyWithImpl<_Bill2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Bill2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bill2&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number);
}

@override
String toString() {
    return 'Bill2(id: $id, number: $number)';
}


}

/// @nodoc
abstract mixin class _$Bill2CopyWith<$Res> implements $Bill2CopyWith<$Res> {
  factory _$Bill2CopyWith(_Bill2 value, $Res Function(_Bill2) _then) = __$Bill2CopyWithImpl;
@override @useResult
$Res call({
 String id, String? number
});




}
/// @nodoc
class __$Bill2CopyWithImpl<$Res>
    implements _$Bill2CopyWith<$Res> {
  __$Bill2CopyWithImpl(this._self, this._then);

  final _Bill2 _self;
  final $Res Function(_Bill2) _then;

/// Create a copy of Bill2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = freezed,}) {
  return _then(_Bill2(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
