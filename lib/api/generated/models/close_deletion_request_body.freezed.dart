// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'close_deletion_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloseDeletionRequestBody {

 CloseDeletionRequestBodyStatus get status; String? get note;
/// Create a copy of CloseDeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloseDeletionRequestBodyCopyWith<CloseDeletionRequestBody> get copyWith => _$CloseDeletionRequestBodyCopyWithImpl<CloseDeletionRequestBody>(this as CloseDeletionRequestBody, _$identity);

  /// Serializes this CloseDeletionRequestBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CloseDeletionRequestBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloseDeletionRequestBody&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CloseDeletionRequestBody;
  return Object.hash(runtimeType,_this.status,_this.note);
}

@override
String toString() {
  final _this = this as CloseDeletionRequestBody;
  return 'CloseDeletionRequestBody(status: ${_this.status}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $CloseDeletionRequestBodyCopyWith<$Res>  {
  factory $CloseDeletionRequestBodyCopyWith(CloseDeletionRequestBody value, $Res Function(CloseDeletionRequestBody) _then) = _$CloseDeletionRequestBodyCopyWithImpl;
@useResult
$Res call({
 CloseDeletionRequestBodyStatus status, String? note
});




}
/// @nodoc
class _$CloseDeletionRequestBodyCopyWithImpl<$Res>
    implements $CloseDeletionRequestBodyCopyWith<$Res> {
  _$CloseDeletionRequestBodyCopyWithImpl(this._self, this._then);

  final CloseDeletionRequestBody _self;
  final $Res Function(CloseDeletionRequestBody) _then;

/// Create a copy of CloseDeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? note = freezed,}) {
  return _then(CloseDeletionRequestBody(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CloseDeletionRequestBodyStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CloseDeletionRequestBody].
extension CloseDeletionRequestBodyPatterns on CloseDeletionRequestBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloseDeletionRequestBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloseDeletionRequestBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloseDeletionRequestBody value)  $default,){
final _that = this;
switch (_that) {
case _CloseDeletionRequestBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloseDeletionRequestBody value)?  $default,){
final _that = this;
switch (_that) {
case _CloseDeletionRequestBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CloseDeletionRequestBodyStatus status,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloseDeletionRequestBody() when $default != null:
return $default(_that.status,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CloseDeletionRequestBodyStatus status,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CloseDeletionRequestBody():
return $default(_that.status,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CloseDeletionRequestBodyStatus status,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CloseDeletionRequestBody() when $default != null:
return $default(_that.status,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CloseDeletionRequestBody implements CloseDeletionRequestBody {
  const _CloseDeletionRequestBody({required this.status, this.note});
  factory _CloseDeletionRequestBody.fromJson(Map<String, dynamic> json) => _$CloseDeletionRequestBodyFromJson(json);

@override final  CloseDeletionRequestBodyStatus status;
@override final  String? note;

/// Create a copy of CloseDeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloseDeletionRequestBodyCopyWith<_CloseDeletionRequestBody> get copyWith => __$CloseDeletionRequestBodyCopyWithImpl<_CloseDeletionRequestBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloseDeletionRequestBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloseDeletionRequestBody&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,note);
}

@override
String toString() {
    return 'CloseDeletionRequestBody(status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CloseDeletionRequestBodyCopyWith<$Res> implements $CloseDeletionRequestBodyCopyWith<$Res> {
  factory _$CloseDeletionRequestBodyCopyWith(_CloseDeletionRequestBody value, $Res Function(_CloseDeletionRequestBody) _then) = __$CloseDeletionRequestBodyCopyWithImpl;
@override @useResult
$Res call({
 CloseDeletionRequestBodyStatus status, String? note
});




}
/// @nodoc
class __$CloseDeletionRequestBodyCopyWithImpl<$Res>
    implements _$CloseDeletionRequestBodyCopyWith<$Res> {
  __$CloseDeletionRequestBodyCopyWithImpl(this._self, this._then);

  final _CloseDeletionRequestBody _self;
  final $Res Function(_CloseDeletionRequestBody) _then;

/// Create a copy of CloseDeletionRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? note = freezed,}) {
  return _then(_CloseDeletionRequestBody(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CloseDeletionRequestBodyStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
