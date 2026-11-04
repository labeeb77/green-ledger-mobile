// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines19.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines19 {

 String get lineId; Result get result;
/// Create a copy of Lines19
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Lines19CopyWith<Lines19> get copyWith => _$Lines19CopyWithImpl<Lines19>(this as Lines19, _$identity);

  /// Serializes this Lines19 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines19;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines19&&(identical(other.lineId, _this.lineId) || other.lineId == _this.lineId)&&(identical(other.result, _this.result) || other.result == _this.result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines19;
  return Object.hash(runtimeType,_this.lineId,_this.result);
}

@override
String toString() {
  final _this = this as Lines19;
  return 'Lines19(lineId: ${_this.lineId}, result: ${_this.result})';
}


}

/// @nodoc
abstract mixin class $Lines19CopyWith<$Res>  {
  factory $Lines19CopyWith(Lines19 value, $Res Function(Lines19) _then) = _$Lines19CopyWithImpl;
@useResult
$Res call({
 String lineId, Result result
});




}
/// @nodoc
class _$Lines19CopyWithImpl<$Res>
    implements $Lines19CopyWith<$Res> {
  _$Lines19CopyWithImpl(this._self, this._then);

  final Lines19 _self;
  final $Res Function(Lines19) _then;

/// Create a copy of Lines19
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineId = null,Object? result = null,}) {
  return _then(Lines19(
lineId: null == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Result,
  ));
}

}


/// Adds pattern-matching-related methods to [Lines19].
extension Lines19Patterns on Lines19 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines19 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines19() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines19 value)  $default,){
final _that = this;
switch (_that) {
case _Lines19():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines19 value)?  $default,){
final _that = this;
switch (_that) {
case _Lines19() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String lineId,  Result result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines19() when $default != null:
return $default(_that.lineId,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String lineId,  Result result)  $default,) {final _that = this;
switch (_that) {
case _Lines19():
return $default(_that.lineId,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String lineId,  Result result)?  $default,) {final _that = this;
switch (_that) {
case _Lines19() when $default != null:
return $default(_that.lineId,_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines19 implements Lines19 {
  const _Lines19({required this.lineId, required this.result});
  factory _Lines19.fromJson(Map<String, dynamic> json) => _$Lines19FromJson(json);

@override final  String lineId;
@override final  Result result;

/// Create a copy of Lines19
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Lines19CopyWith<_Lines19> get copyWith => __$Lines19CopyWithImpl<_Lines19>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Lines19ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines19&&(identical(other.lineId, lineId) || other.lineId == lineId)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,lineId,result);
}

@override
String toString() {
    return 'Lines19(lineId: $lineId, result: $result)';
}


}

/// @nodoc
abstract mixin class _$Lines19CopyWith<$Res> implements $Lines19CopyWith<$Res> {
  factory _$Lines19CopyWith(_Lines19 value, $Res Function(_Lines19) _then) = __$Lines19CopyWithImpl;
@override @useResult
$Res call({
 String lineId, Result result
});




}
/// @nodoc
class __$Lines19CopyWithImpl<$Res>
    implements _$Lines19CopyWith<$Res> {
  __$Lines19CopyWithImpl(this._self, this._then);

  final _Lines19 _self;
  final $Res Function(_Lines19) _then;

/// Create a copy of Lines19
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineId = null,Object? result = null,}) {
  return _then(_Lines19(
lineId: null == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Result,
  ));
}


}

// dart format on
