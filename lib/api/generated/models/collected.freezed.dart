// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collected.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Collected {

 int get total; ByMethod3 get byMethod;
/// Create a copy of Collected
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectedCopyWith<Collected> get copyWith => _$CollectedCopyWithImpl<Collected>(this as Collected, _$identity);

  /// Serializes this Collected to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Collected;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Collected&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.byMethod, _this.byMethod) || other.byMethod == _this.byMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Collected;
  return Object.hash(runtimeType,_this.total,_this.byMethod);
}

@override
String toString() {
  final _this = this as Collected;
  return 'Collected(total: ${_this.total}, byMethod: ${_this.byMethod})';
}


}

/// @nodoc
abstract mixin class $CollectedCopyWith<$Res>  {
  factory $CollectedCopyWith(Collected value, $Res Function(Collected) _then) = _$CollectedCopyWithImpl;
@useResult
$Res call({
 int total, ByMethod3 byMethod
});


$ByMethod3CopyWith<$Res> get byMethod;

}
/// @nodoc
class _$CollectedCopyWithImpl<$Res>
    implements $CollectedCopyWith<$Res> {
  _$CollectedCopyWithImpl(this._self, this._then);

  final Collected _self;
  final $Res Function(Collected) _then;

/// Create a copy of Collected
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? byMethod = null,}) {
  return _then(Collected(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byMethod: null == byMethod ? _self.byMethod : byMethod // ignore: cast_nullable_to_non_nullable
as ByMethod3,
  ));
}
/// Create a copy of Collected
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ByMethod3CopyWith<$Res> get byMethod {
  
  return $ByMethod3CopyWith<$Res>(_self.byMethod, (value) {
    return _then(_self.copyWith(byMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [Collected].
extension CollectedPatterns on Collected {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Collected value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Collected() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Collected value)  $default,){
final _that = this;
switch (_that) {
case _Collected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Collected value)?  $default,){
final _that = this;
switch (_that) {
case _Collected() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  ByMethod3 byMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Collected() when $default != null:
return $default(_that.total,_that.byMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  ByMethod3 byMethod)  $default,) {final _that = this;
switch (_that) {
case _Collected():
return $default(_that.total,_that.byMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  ByMethod3 byMethod)?  $default,) {final _that = this;
switch (_that) {
case _Collected() when $default != null:
return $default(_that.total,_that.byMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Collected implements Collected {
  const _Collected({required this.total, required this.byMethod});
  factory _Collected.fromJson(Map<String, dynamic> json) => _$CollectedFromJson(json);

@override final  int total;
@override final  ByMethod3 byMethod;

/// Create a copy of Collected
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectedCopyWith<_Collected> get copyWith => __$CollectedCopyWithImpl<_Collected>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectedToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Collected&&(identical(other.total, total) || other.total == total)&&(identical(other.byMethod, byMethod) || other.byMethod == byMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,byMethod);
}

@override
String toString() {
    return 'Collected(total: $total, byMethod: $byMethod)';
}


}

/// @nodoc
abstract mixin class _$CollectedCopyWith<$Res> implements $CollectedCopyWith<$Res> {
  factory _$CollectedCopyWith(_Collected value, $Res Function(_Collected) _then) = __$CollectedCopyWithImpl;
@override @useResult
$Res call({
 int total, ByMethod3 byMethod
});


@override $ByMethod3CopyWith<$Res> get byMethod;

}
/// @nodoc
class __$CollectedCopyWithImpl<$Res>
    implements _$CollectedCopyWith<$Res> {
  __$CollectedCopyWithImpl(this._self, this._then);

  final _Collected _self;
  final $Res Function(_Collected) _then;

/// Create a copy of Collected
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? byMethod = null,}) {
  return _then(_Collected(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byMethod: null == byMethod ? _self.byMethod : byMethod // ignore: cast_nullable_to_non_nullable
as ByMethod3,
  ));
}

/// Create a copy of Collected
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ByMethod3CopyWith<$Res> get byMethod {
  
  return $ByMethod3CopyWith<$Res>(_self.byMethod, (value) {
    return _then(_self.copyWith(byMethod: value));
  });
}
}

// dart format on
