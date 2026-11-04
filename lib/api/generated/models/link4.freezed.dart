// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Link4 {

 Report get report; String? get groupBy;
/// Create a copy of Link4
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Link4CopyWith<Link4> get copyWith => _$Link4CopyWithImpl<Link4>(this as Link4, _$identity);

  /// Serializes this Link4 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Link4;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Link4&&(identical(other.report, _this.report) || other.report == _this.report)&&(identical(other.groupBy, _this.groupBy) || other.groupBy == _this.groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Link4;
  return Object.hash(runtimeType,_this.report,_this.groupBy);
}

@override
String toString() {
  final _this = this as Link4;
  return 'Link4(report: ${_this.report}, groupBy: ${_this.groupBy})';
}


}

/// @nodoc
abstract mixin class $Link4CopyWith<$Res>  {
  factory $Link4CopyWith(Link4 value, $Res Function(Link4) _then) = _$Link4CopyWithImpl;
@useResult
$Res call({
 Report report, String? groupBy
});




}
/// @nodoc
class _$Link4CopyWithImpl<$Res>
    implements $Link4CopyWith<$Res> {
  _$Link4CopyWithImpl(this._self, this._then);

  final Link4 _self;
  final $Res Function(Link4) _then;

/// Create a copy of Link4
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = null,Object? groupBy = freezed,}) {
  return _then(Link4(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Report,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Link4].
extension Link4Patterns on Link4 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Link4 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Link4() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Link4 value)  $default,){
final _that = this;
switch (_that) {
case _Link4():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Link4 value)?  $default,){
final _that = this;
switch (_that) {
case _Link4() when $default != null:
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
case _Link4() when $default != null:
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
case _Link4():
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
case _Link4() when $default != null:
return $default(_that.report,_that.groupBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Link4 implements Link4 {
  const _Link4({required this.report, required this.groupBy});
  factory _Link4.fromJson(Map<String, dynamic> json) => _$Link4FromJson(json);

@override final  Report report;
@override final  String? groupBy;

/// Create a copy of Link4
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Link4CopyWith<_Link4> get copyWith => __$Link4CopyWithImpl<_Link4>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Link4ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Link4&&(identical(other.report, report) || other.report == report)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,report,groupBy);
}

@override
String toString() {
    return 'Link4(report: $report, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class _$Link4CopyWith<$Res> implements $Link4CopyWith<$Res> {
  factory _$Link4CopyWith(_Link4 value, $Res Function(_Link4) _then) = __$Link4CopyWithImpl;
@override @useResult
$Res call({
 Report report, String? groupBy
});




}
/// @nodoc
class __$Link4CopyWithImpl<$Res>
    implements _$Link4CopyWith<$Res> {
  __$Link4CopyWithImpl(this._self, this._then);

  final _Link4 _self;
  final $Res Function(_Link4) _then;

/// Create a copy of Link4
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = null,Object? groupBy = freezed,}) {
  return _then(_Link4(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Report,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
