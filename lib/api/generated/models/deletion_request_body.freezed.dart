// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deletion_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeletionRequestBody {

 String? get reason;
/// Create a copy of DeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletionRequestBodyCopyWith<DeletionRequestBody> get copyWith => _$DeletionRequestBodyCopyWithImpl<DeletionRequestBody>(this as DeletionRequestBody, _$identity);

  /// Serializes this DeletionRequestBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeletionRequestBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletionRequestBody&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeletionRequestBody;
  return Object.hash(runtimeType,_this.reason);
}

@override
String toString() {
  final _this = this as DeletionRequestBody;
  return 'DeletionRequestBody(reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $DeletionRequestBodyCopyWith<$Res>  {
  factory $DeletionRequestBodyCopyWith(DeletionRequestBody value, $Res Function(DeletionRequestBody) _then) = _$DeletionRequestBodyCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class _$DeletionRequestBodyCopyWithImpl<$Res>
    implements $DeletionRequestBodyCopyWith<$Res> {
  _$DeletionRequestBodyCopyWithImpl(this._self, this._then);

  final DeletionRequestBody _self;
  final $Res Function(DeletionRequestBody) _then;

/// Create a copy of DeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = freezed,}) {
  return _then(DeletionRequestBody(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeletionRequestBody].
extension DeletionRequestBodyPatterns on DeletionRequestBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeletionRequestBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeletionRequestBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeletionRequestBody value)  $default,){
final _that = this;
switch (_that) {
case _DeletionRequestBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeletionRequestBody value)?  $default,){
final _that = this;
switch (_that) {
case _DeletionRequestBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeletionRequestBody() when $default != null:
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? reason)  $default,) {final _that = this;
switch (_that) {
case _DeletionRequestBody():
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? reason)?  $default,) {final _that = this;
switch (_that) {
case _DeletionRequestBody() when $default != null:
return $default(_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeletionRequestBody implements DeletionRequestBody {
  const _DeletionRequestBody({this.reason});
  factory _DeletionRequestBody.fromJson(Map<String, dynamic> json) => _$DeletionRequestBodyFromJson(json);

@override final  String? reason;

/// Create a copy of DeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletionRequestBodyCopyWith<_DeletionRequestBody> get copyWith => __$DeletionRequestBodyCopyWithImpl<_DeletionRequestBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeletionRequestBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletionRequestBody&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reason);
}

@override
String toString() {
    return 'DeletionRequestBody(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$DeletionRequestBodyCopyWith<$Res> implements $DeletionRequestBodyCopyWith<$Res> {
  factory _$DeletionRequestBodyCopyWith(_DeletionRequestBody value, $Res Function(_DeletionRequestBody) _then) = __$DeletionRequestBodyCopyWithImpl;
@override @useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$DeletionRequestBodyCopyWithImpl<$Res>
    implements _$DeletionRequestBodyCopyWith<$Res> {
  __$DeletionRequestBodyCopyWithImpl(this._self, this._then);

  final _DeletionRequestBody _self;
  final $Res Function(_DeletionRequestBody) _then;

/// Create a copy of DeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_DeletionRequestBody(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
