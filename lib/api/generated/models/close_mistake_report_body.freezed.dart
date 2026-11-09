// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'close_mistake_report_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloseMistakeReportBody {

 String get note;
/// Create a copy of CloseMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloseMistakeReportBodyCopyWith<CloseMistakeReportBody> get copyWith => _$CloseMistakeReportBodyCopyWithImpl<CloseMistakeReportBody>(this as CloseMistakeReportBody, _$identity);

  /// Serializes this CloseMistakeReportBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CloseMistakeReportBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloseMistakeReportBody&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CloseMistakeReportBody;
  return Object.hash(runtimeType,_this.note);
}

@override
String toString() {
  final _this = this as CloseMistakeReportBody;
  return 'CloseMistakeReportBody(note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $CloseMistakeReportBodyCopyWith<$Res>  {
  factory $CloseMistakeReportBodyCopyWith(CloseMistakeReportBody value, $Res Function(CloseMistakeReportBody) _then) = _$CloseMistakeReportBodyCopyWithImpl;
@useResult
$Res call({
 String note
});




}
/// @nodoc
class _$CloseMistakeReportBodyCopyWithImpl<$Res>
    implements $CloseMistakeReportBodyCopyWith<$Res> {
  _$CloseMistakeReportBodyCopyWithImpl(this._self, this._then);

  final CloseMistakeReportBody _self;
  final $Res Function(CloseMistakeReportBody) _then;

/// Create a copy of CloseMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? note = null,}) {
  return _then(CloseMistakeReportBody(
note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CloseMistakeReportBody].
extension CloseMistakeReportBodyPatterns on CloseMistakeReportBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloseMistakeReportBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloseMistakeReportBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloseMistakeReportBody value)  $default,){
final _that = this;
switch (_that) {
case _CloseMistakeReportBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloseMistakeReportBody value)?  $default,){
final _that = this;
switch (_that) {
case _CloseMistakeReportBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloseMistakeReportBody() when $default != null:
return $default(_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String note)  $default,) {final _that = this;
switch (_that) {
case _CloseMistakeReportBody():
return $default(_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String note)?  $default,) {final _that = this;
switch (_that) {
case _CloseMistakeReportBody() when $default != null:
return $default(_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CloseMistakeReportBody implements CloseMistakeReportBody {
  const _CloseMistakeReportBody({required this.note});
  factory _CloseMistakeReportBody.fromJson(Map<String, dynamic> json) => _$CloseMistakeReportBodyFromJson(json);

@override final  String note;

/// Create a copy of CloseMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloseMistakeReportBodyCopyWith<_CloseMistakeReportBody> get copyWith => __$CloseMistakeReportBodyCopyWithImpl<_CloseMistakeReportBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloseMistakeReportBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloseMistakeReportBody&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,note);
}

@override
String toString() {
    return 'CloseMistakeReportBody(note: $note)';
}


}

/// @nodoc
abstract mixin class _$CloseMistakeReportBodyCopyWith<$Res> implements $CloseMistakeReportBodyCopyWith<$Res> {
  factory _$CloseMistakeReportBodyCopyWith(_CloseMistakeReportBody value, $Res Function(_CloseMistakeReportBody) _then) = __$CloseMistakeReportBodyCopyWithImpl;
@override @useResult
$Res call({
 String note
});




}
/// @nodoc
class __$CloseMistakeReportBodyCopyWithImpl<$Res>
    implements _$CloseMistakeReportBodyCopyWith<$Res> {
  __$CloseMistakeReportBodyCopyWithImpl(this._self, this._then);

  final _CloseMistakeReportBody _self;
  final $Res Function(_CloseMistakeReportBody) _then;

/// Create a copy of CloseMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? note = null,}) {
  return _then(_CloseMistakeReportBody(
note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
