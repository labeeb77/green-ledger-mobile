// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Link2 {

 Report get report; String? get groupBy;
/// Create a copy of Link2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Link2CopyWith<Link2> get copyWith => _$Link2CopyWithImpl<Link2>(this as Link2, _$identity);

  /// Serializes this Link2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Link2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Link2&&(identical(other.report, _this.report) || other.report == _this.report)&&(identical(other.groupBy, _this.groupBy) || other.groupBy == _this.groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Link2;
  return Object.hash(runtimeType,_this.report,_this.groupBy);
}

@override
String toString() {
  final _this = this as Link2;
  return 'Link2(report: ${_this.report}, groupBy: ${_this.groupBy})';
}


}

/// @nodoc
abstract mixin class $Link2CopyWith<$Res>  {
  factory $Link2CopyWith(Link2 value, $Res Function(Link2) _then) = _$Link2CopyWithImpl;
@useResult
$Res call({
 Report report, String? groupBy
});




}
/// @nodoc
class _$Link2CopyWithImpl<$Res>
    implements $Link2CopyWith<$Res> {
  _$Link2CopyWithImpl(this._self, this._then);

  final Link2 _self;
  final $Res Function(Link2) _then;

/// Create a copy of Link2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = null,Object? groupBy = freezed,}) {
  return _then(Link2(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Report,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Link2].
extension Link2Patterns on Link2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Link2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Link2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Link2 value)  $default,){
final _that = this;
switch (_that) {
case _Link2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Link2 value)?  $default,){
final _that = this;
switch (_that) {
case _Link2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Report report,  String? groupBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Link2() when $default != null:
return $default(_that.report,_that.groupBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Report report,  String? groupBy)  $default,) {final _that = this;
switch (_that) {
case _Link2():
return $default(_that.report,_that.groupBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Report report,  String? groupBy)?  $default,) {final _that = this;
switch (_that) {
case _Link2() when $default != null:
return $default(_that.report,_that.groupBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Link2 implements Link2 {
  const _Link2({required this.report, required this.groupBy});
  factory _Link2.fromJson(Map<String, dynamic> json) => _$Link2FromJson(json);

@override final  Report report;
@override final  String? groupBy;

/// Create a copy of Link2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Link2CopyWith<_Link2> get copyWith => __$Link2CopyWithImpl<_Link2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Link2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Link2&&(identical(other.report, report) || other.report == report)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,report,groupBy);
}

@override
String toString() {
    return 'Link2(report: $report, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class _$Link2CopyWith<$Res> implements $Link2CopyWith<$Res> {
  factory _$Link2CopyWith(_Link2 value, $Res Function(_Link2) _then) = __$Link2CopyWithImpl;
@override @useResult
$Res call({
 Report report, String? groupBy
});




}
/// @nodoc
class __$Link2CopyWithImpl<$Res>
    implements _$Link2CopyWith<$Res> {
  __$Link2CopyWithImpl(this._self, this._then);

  final _Link2 _self;
  final $Res Function(_Link2) _then;

/// Create a copy of Link2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = null,Object? groupBy = freezed,}) {
  return _then(_Link2(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Report,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
