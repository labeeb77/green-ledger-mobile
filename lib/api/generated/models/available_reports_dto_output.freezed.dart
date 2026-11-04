// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_reports_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvailableReportsDtoOutput {

 Report get report; String get title;
/// Create a copy of AvailableReportsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableReportsDtoOutputCopyWith<AvailableReportsDtoOutput> get copyWith => _$AvailableReportsDtoOutputCopyWithImpl<AvailableReportsDtoOutput>(this as AvailableReportsDtoOutput, _$identity);

  /// Serializes this AvailableReportsDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AvailableReportsDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableReportsDtoOutput&&(identical(other.report, _this.report) || other.report == _this.report)&&(identical(other.title, _this.title) || other.title == _this.title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AvailableReportsDtoOutput;
  return Object.hash(runtimeType,_this.report,_this.title);
}

@override
String toString() {
  final _this = this as AvailableReportsDtoOutput;
  return 'AvailableReportsDtoOutput(report: ${_this.report}, title: ${_this.title})';
}


}

/// @nodoc
abstract mixin class $AvailableReportsDtoOutputCopyWith<$Res>  {
  factory $AvailableReportsDtoOutputCopyWith(AvailableReportsDtoOutput value, $Res Function(AvailableReportsDtoOutput) _then) = _$AvailableReportsDtoOutputCopyWithImpl;
@useResult
$Res call({
 Report report, String title
});




}
/// @nodoc
class _$AvailableReportsDtoOutputCopyWithImpl<$Res>
    implements $AvailableReportsDtoOutputCopyWith<$Res> {
  _$AvailableReportsDtoOutputCopyWithImpl(this._self, this._then);

  final AvailableReportsDtoOutput _self;
  final $Res Function(AvailableReportsDtoOutput) _then;

/// Create a copy of AvailableReportsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = null,Object? title = null,}) {
  return _then(AvailableReportsDtoOutput(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Report,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableReportsDtoOutput].
extension AvailableReportsDtoOutputPatterns on AvailableReportsDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableReportsDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableReportsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableReportsDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _AvailableReportsDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableReportsDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableReportsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Report report,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableReportsDtoOutput() when $default != null:
return $default(_that.report,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Report report,  String title)  $default,) {final _that = this;
switch (_that) {
case _AvailableReportsDtoOutput():
return $default(_that.report,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Report report,  String title)?  $default,) {final _that = this;
switch (_that) {
case _AvailableReportsDtoOutput() when $default != null:
return $default(_that.report,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableReportsDtoOutput implements AvailableReportsDtoOutput {
  const _AvailableReportsDtoOutput({required this.report, required this.title});
  factory _AvailableReportsDtoOutput.fromJson(Map<String, dynamic> json) => _$AvailableReportsDtoOutputFromJson(json);

@override final  Report report;
@override final  String title;

/// Create a copy of AvailableReportsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableReportsDtoOutputCopyWith<_AvailableReportsDtoOutput> get copyWith => __$AvailableReportsDtoOutputCopyWithImpl<_AvailableReportsDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableReportsDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableReportsDtoOutput&&(identical(other.report, report) || other.report == report)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,report,title);
}

@override
String toString() {
    return 'AvailableReportsDtoOutput(report: $report, title: $title)';
}


}

/// @nodoc
abstract mixin class _$AvailableReportsDtoOutputCopyWith<$Res> implements $AvailableReportsDtoOutputCopyWith<$Res> {
  factory _$AvailableReportsDtoOutputCopyWith(_AvailableReportsDtoOutput value, $Res Function(_AvailableReportsDtoOutput) _then) = __$AvailableReportsDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 Report report, String title
});




}
/// @nodoc
class __$AvailableReportsDtoOutputCopyWithImpl<$Res>
    implements _$AvailableReportsDtoOutputCopyWith<$Res> {
  __$AvailableReportsDtoOutputCopyWithImpl(this._self, this._then);

  final _AvailableReportsDtoOutput _self;
  final $Res Function(_AvailableReportsDtoOutput) _then;

/// Create a copy of AvailableReportsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = null,Object? title = null,}) {
  return _then(_AvailableReportsDtoOutput(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Report,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
