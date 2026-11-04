// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_result_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportResultDtoOutput {

 ReportResultDtoOutputReport get report; String get title; String get subtitle; List<Columns> get columns; List<Map<String, dynamic>> get rows; Map<String, dynamic>? get totals;
/// Create a copy of ReportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportResultDtoOutputCopyWith<ReportResultDtoOutput> get copyWith => _$ReportResultDtoOutputCopyWithImpl<ReportResultDtoOutput>(this as ReportResultDtoOutput, _$identity);

  /// Serializes this ReportResultDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportResultDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportResultDtoOutput&&(identical(other.report, _this.report) || other.report == _this.report)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&const DeepCollectionEquality().equals(other.columns, _this.columns)&&const DeepCollectionEquality().equals(other.rows, _this.rows)&&const DeepCollectionEquality().equals(other.totals, _this.totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportResultDtoOutput;
  return Object.hash(runtimeType,_this.report,_this.title,_this.subtitle,const DeepCollectionEquality().hash(_this.columns),const DeepCollectionEquality().hash(_this.rows),const DeepCollectionEquality().hash(_this.totals));
}

@override
String toString() {
  final _this = this as ReportResultDtoOutput;
  return 'ReportResultDtoOutput(report: ${_this.report}, title: ${_this.title}, subtitle: ${_this.subtitle}, columns: ${_this.columns}, rows: ${_this.rows}, totals: ${_this.totals})';
}


}

/// @nodoc
abstract mixin class $ReportResultDtoOutputCopyWith<$Res>  {
  factory $ReportResultDtoOutputCopyWith(ReportResultDtoOutput value, $Res Function(ReportResultDtoOutput) _then) = _$ReportResultDtoOutputCopyWithImpl;
@useResult
$Res call({
 ReportResultDtoOutputReport report, String title, String subtitle, List<Columns> columns, List<Map<String, dynamic>> rows, Map<String, dynamic>? totals
});




}
/// @nodoc
class _$ReportResultDtoOutputCopyWithImpl<$Res>
    implements $ReportResultDtoOutputCopyWith<$Res> {
  _$ReportResultDtoOutputCopyWithImpl(this._self, this._then);

  final ReportResultDtoOutput _self;
  final $Res Function(ReportResultDtoOutput) _then;

/// Create a copy of ReportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = null,Object? title = null,Object? subtitle = null,Object? columns = null,Object? rows = null,Object? totals = freezed,}) {
  return _then(ReportResultDtoOutput(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportResultDtoOutputReport,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,columns: null == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<Columns>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,totals: freezed == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportResultDtoOutput].
extension ReportResultDtoOutputPatterns on ReportResultDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportResultDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportResultDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ReportResultDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportResultDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ReportResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportResultDtoOutputReport report,  String title,  String subtitle,  List<Columns> columns,  List<Map<String, dynamic>> rows,  Map<String, dynamic>? totals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportResultDtoOutput() when $default != null:
return $default(_that.report,_that.title,_that.subtitle,_that.columns,_that.rows,_that.totals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportResultDtoOutputReport report,  String title,  String subtitle,  List<Columns> columns,  List<Map<String, dynamic>> rows,  Map<String, dynamic>? totals)  $default,) {final _that = this;
switch (_that) {
case _ReportResultDtoOutput():
return $default(_that.report,_that.title,_that.subtitle,_that.columns,_that.rows,_that.totals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportResultDtoOutputReport report,  String title,  String subtitle,  List<Columns> columns,  List<Map<String, dynamic>> rows,  Map<String, dynamic>? totals)?  $default,) {final _that = this;
switch (_that) {
case _ReportResultDtoOutput() when $default != null:
return $default(_that.report,_that.title,_that.subtitle,_that.columns,_that.rows,_that.totals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportResultDtoOutput implements ReportResultDtoOutput {
  const _ReportResultDtoOutput({required this.report, required this.title, required this.subtitle, required  List<Columns> columns, required  List<Map<String, dynamic>> rows, required  Map<String, dynamic>? totals}): _columns = columns,_rows = rows,_totals = totals;
  factory _ReportResultDtoOutput.fromJson(Map<String, dynamic> json) => _$ReportResultDtoOutputFromJson(json);

@override final  ReportResultDtoOutputReport report;
@override final  String title;
@override final  String subtitle;
 final  List<Columns> _columns;
@override List<Columns> get columns {
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_columns);
}

 final  List<Map<String, dynamic>> _rows;
@override List<Map<String, dynamic>> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}

 final  Map<String, dynamic>? _totals;
@override Map<String, dynamic>? get totals {
  final value = _totals;
  if (value == null) return null;
  if (_totals is EqualUnmodifiableMapView) return _totals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ReportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportResultDtoOutputCopyWith<_ReportResultDtoOutput> get copyWith => __$ReportResultDtoOutputCopyWithImpl<_ReportResultDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportResultDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportResultDtoOutput&&(identical(other.report, report) || other.report == report)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&const DeepCollectionEquality().equals(other.columns, _columns)&&const DeepCollectionEquality().equals(other.rows, _rows)&&const DeepCollectionEquality().equals(other.totals, _totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,report,title,subtitle,const DeepCollectionEquality().hash(_columns),const DeepCollectionEquality().hash(_rows),const DeepCollectionEquality().hash(_totals));
}

@override
String toString() {
    return 'ReportResultDtoOutput(report: $report, title: $title, subtitle: $subtitle, columns: $columns, rows: $rows, totals: $totals)';
}


}

/// @nodoc
abstract mixin class _$ReportResultDtoOutputCopyWith<$Res> implements $ReportResultDtoOutputCopyWith<$Res> {
  factory _$ReportResultDtoOutputCopyWith(_ReportResultDtoOutput value, $Res Function(_ReportResultDtoOutput) _then) = __$ReportResultDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 ReportResultDtoOutputReport report, String title, String subtitle, List<Columns> columns, List<Map<String, dynamic>> rows, Map<String, dynamic>? totals
});




}
/// @nodoc
class __$ReportResultDtoOutputCopyWithImpl<$Res>
    implements _$ReportResultDtoOutputCopyWith<$Res> {
  __$ReportResultDtoOutputCopyWithImpl(this._self, this._then);

  final _ReportResultDtoOutput _self;
  final $Res Function(_ReportResultDtoOutput) _then;

/// Create a copy of ReportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = null,Object? title = null,Object? subtitle = null,Object? columns = null,Object? rows = null,Object? totals = freezed,}) {
  return _then(_ReportResultDtoOutput(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportResultDtoOutputReport,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,columns: null == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<Columns>,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,totals: freezed == totals ? _self._totals : totals // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
