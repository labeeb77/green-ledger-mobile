// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_rates_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyRatesDtoOutput {

 String get date; List<Rows> get rows;
/// Create a copy of DailyRatesDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyRatesDtoOutputCopyWith<DailyRatesDtoOutput> get copyWith => _$DailyRatesDtoOutputCopyWithImpl<DailyRatesDtoOutput>(this as DailyRatesDtoOutput, _$identity);

  /// Serializes this DailyRatesDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DailyRatesDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyRatesDtoOutput&&(identical(other.date, _this.date) || other.date == _this.date)&&const DeepCollectionEquality().equals(other.rows, _this.rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DailyRatesDtoOutput;
  return Object.hash(runtimeType,_this.date,const DeepCollectionEquality().hash(_this.rows));
}

@override
String toString() {
  final _this = this as DailyRatesDtoOutput;
  return 'DailyRatesDtoOutput(date: ${_this.date}, rows: ${_this.rows})';
}


}

/// @nodoc
abstract mixin class $DailyRatesDtoOutputCopyWith<$Res>  {
  factory $DailyRatesDtoOutputCopyWith(DailyRatesDtoOutput value, $Res Function(DailyRatesDtoOutput) _then) = _$DailyRatesDtoOutputCopyWithImpl;
@useResult
$Res call({
 String date, List<Rows> rows
});




}
/// @nodoc
class _$DailyRatesDtoOutputCopyWithImpl<$Res>
    implements $DailyRatesDtoOutputCopyWith<$Res> {
  _$DailyRatesDtoOutputCopyWithImpl(this._self, this._then);

  final DailyRatesDtoOutput _self;
  final $Res Function(DailyRatesDtoOutput) _then;

/// Create a copy of DailyRatesDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? rows = null,}) {
  return _then(DailyRatesDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<Rows>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyRatesDtoOutput].
extension DailyRatesDtoOutputPatterns on DailyRatesDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyRatesDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyRatesDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyRatesDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _DailyRatesDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyRatesDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _DailyRatesDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  List<Rows> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyRatesDtoOutput() when $default != null:
return $default(_that.date,_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  List<Rows> rows)  $default,) {final _that = this;
switch (_that) {
case _DailyRatesDtoOutput():
return $default(_that.date,_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  List<Rows> rows)?  $default,) {final _that = this;
switch (_that) {
case _DailyRatesDtoOutput() when $default != null:
return $default(_that.date,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyRatesDtoOutput implements DailyRatesDtoOutput {
  const _DailyRatesDtoOutput({required this.date, required  List<Rows> rows}): _rows = rows;
  factory _DailyRatesDtoOutput.fromJson(Map<String, dynamic> json) => _$DailyRatesDtoOutputFromJson(json);

@override final  String date;
 final  List<Rows> _rows;
@override List<Rows> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of DailyRatesDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyRatesDtoOutputCopyWith<_DailyRatesDtoOutput> get copyWith => __$DailyRatesDtoOutputCopyWithImpl<_DailyRatesDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyRatesDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyRatesDtoOutput&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_rows));
}

@override
String toString() {
    return 'DailyRatesDtoOutput(date: $date, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$DailyRatesDtoOutputCopyWith<$Res> implements $DailyRatesDtoOutputCopyWith<$Res> {
  factory _$DailyRatesDtoOutputCopyWith(_DailyRatesDtoOutput value, $Res Function(_DailyRatesDtoOutput) _then) = __$DailyRatesDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String date, List<Rows> rows
});




}
/// @nodoc
class __$DailyRatesDtoOutputCopyWithImpl<$Res>
    implements _$DailyRatesDtoOutputCopyWith<$Res> {
  __$DailyRatesDtoOutputCopyWithImpl(this._self, this._then);

  final _DailyRatesDtoOutput _self;
  final $Res Function(_DailyRatesDtoOutput) _then;

/// Create a copy of DailyRatesDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? rows = null,}) {
  return _then(_DailyRatesDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<Rows>,
  ));
}


}

// dart format on
