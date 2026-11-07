// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'godown_home_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GodownHomeDtoOutput {

 String get date; int get toDispatch; int get arrivalsToday; List<LowStock2> get lowStock; WastageToday get wastageToday; int? get returnsToInspect;
/// Create a copy of GodownHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GodownHomeDtoOutputCopyWith<GodownHomeDtoOutput> get copyWith => _$GodownHomeDtoOutputCopyWithImpl<GodownHomeDtoOutput>(this as GodownHomeDtoOutput, _$identity);

  /// Serializes this GodownHomeDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GodownHomeDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GodownHomeDtoOutput&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.toDispatch, _this.toDispatch) || other.toDispatch == _this.toDispatch)&&(identical(other.arrivalsToday, _this.arrivalsToday) || other.arrivalsToday == _this.arrivalsToday)&&const DeepCollectionEquality().equals(other.lowStock, _this.lowStock)&&(identical(other.wastageToday, _this.wastageToday) || other.wastageToday == _this.wastageToday)&&(identical(other.returnsToInspect, _this.returnsToInspect) || other.returnsToInspect == _this.returnsToInspect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GodownHomeDtoOutput;
  return Object.hash(runtimeType,_this.date,_this.toDispatch,_this.arrivalsToday,const DeepCollectionEquality().hash(_this.lowStock),_this.wastageToday,_this.returnsToInspect);
}

@override
String toString() {
  final _this = this as GodownHomeDtoOutput;
  return 'GodownHomeDtoOutput(date: ${_this.date}, toDispatch: ${_this.toDispatch}, arrivalsToday: ${_this.arrivalsToday}, lowStock: ${_this.lowStock}, wastageToday: ${_this.wastageToday}, returnsToInspect: ${_this.returnsToInspect})';
}


}

/// @nodoc
abstract mixin class $GodownHomeDtoOutputCopyWith<$Res>  {
  factory $GodownHomeDtoOutputCopyWith(GodownHomeDtoOutput value, $Res Function(GodownHomeDtoOutput) _then) = _$GodownHomeDtoOutputCopyWithImpl;
@useResult
$Res call({
 String date, int toDispatch, int arrivalsToday, List<LowStock2> lowStock, WastageToday wastageToday, int? returnsToInspect
});


$WastageTodayCopyWith<$Res> get wastageToday;

}
/// @nodoc
class _$GodownHomeDtoOutputCopyWithImpl<$Res>
    implements $GodownHomeDtoOutputCopyWith<$Res> {
  _$GodownHomeDtoOutputCopyWithImpl(this._self, this._then);

  final GodownHomeDtoOutput _self;
  final $Res Function(GodownHomeDtoOutput) _then;

/// Create a copy of GodownHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? toDispatch = null,Object? arrivalsToday = null,Object? lowStock = null,Object? wastageToday = null,Object? returnsToInspect = freezed,}) {
  return _then(GodownHomeDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,toDispatch: null == toDispatch ? _self.toDispatch : toDispatch // ignore: cast_nullable_to_non_nullable
as int,arrivalsToday: null == arrivalsToday ? _self.arrivalsToday : arrivalsToday // ignore: cast_nullable_to_non_nullable
as int,lowStock: null == lowStock ? _self.lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as List<LowStock2>,wastageToday: null == wastageToday ? _self.wastageToday : wastageToday // ignore: cast_nullable_to_non_nullable
as WastageToday,returnsToInspect: freezed == returnsToInspect ? _self.returnsToInspect : returnsToInspect // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of GodownHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WastageTodayCopyWith<$Res> get wastageToday {
  
  return $WastageTodayCopyWith<$Res>(_self.wastageToday, (value) {
    return _then(_self.copyWith(wastageToday: value));
  });
}
}


/// Adds pattern-matching-related methods to [GodownHomeDtoOutput].
extension GodownHomeDtoOutputPatterns on GodownHomeDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GodownHomeDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GodownHomeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GodownHomeDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _GodownHomeDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GodownHomeDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GodownHomeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  int toDispatch,  int arrivalsToday,  List<LowStock2> lowStock,  WastageToday wastageToday,  int? returnsToInspect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GodownHomeDtoOutput() when $default != null:
return $default(_that.date,_that.toDispatch,_that.arrivalsToday,_that.lowStock,_that.wastageToday,_that.returnsToInspect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  int toDispatch,  int arrivalsToday,  List<LowStock2> lowStock,  WastageToday wastageToday,  int? returnsToInspect)  $default,) {final _that = this;
switch (_that) {
case _GodownHomeDtoOutput():
return $default(_that.date,_that.toDispatch,_that.arrivalsToday,_that.lowStock,_that.wastageToday,_that.returnsToInspect);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  int toDispatch,  int arrivalsToday,  List<LowStock2> lowStock,  WastageToday wastageToday,  int? returnsToInspect)?  $default,) {final _that = this;
switch (_that) {
case _GodownHomeDtoOutput() when $default != null:
return $default(_that.date,_that.toDispatch,_that.arrivalsToday,_that.lowStock,_that.wastageToday,_that.returnsToInspect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GodownHomeDtoOutput implements GodownHomeDtoOutput {
  const _GodownHomeDtoOutput({required this.date, required this.toDispatch, required this.arrivalsToday, required  List<LowStock2> lowStock, required this.wastageToday, required this.returnsToInspect}): _lowStock = lowStock;
  factory _GodownHomeDtoOutput.fromJson(Map<String, dynamic> json) => _$GodownHomeDtoOutputFromJson(json);

@override final  String date;
@override final  int toDispatch;
@override final  int arrivalsToday;
 final  List<LowStock2> _lowStock;
@override List<LowStock2> get lowStock {
  if (_lowStock is EqualUnmodifiableListView) return _lowStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lowStock);
}

@override final  WastageToday wastageToday;
@override final  int? returnsToInspect;

/// Create a copy of GodownHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GodownHomeDtoOutputCopyWith<_GodownHomeDtoOutput> get copyWith => __$GodownHomeDtoOutputCopyWithImpl<_GodownHomeDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GodownHomeDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GodownHomeDtoOutput&&(identical(other.date, date) || other.date == date)&&(identical(other.toDispatch, toDispatch) || other.toDispatch == toDispatch)&&(identical(other.arrivalsToday, arrivalsToday) || other.arrivalsToday == arrivalsToday)&&const DeepCollectionEquality().equals(other.lowStock, _lowStock)&&(identical(other.wastageToday, wastageToday) || other.wastageToday == wastageToday)&&(identical(other.returnsToInspect, returnsToInspect) || other.returnsToInspect == returnsToInspect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,toDispatch,arrivalsToday,const DeepCollectionEquality().hash(_lowStock),wastageToday,returnsToInspect);
}

@override
String toString() {
    return 'GodownHomeDtoOutput(date: $date, toDispatch: $toDispatch, arrivalsToday: $arrivalsToday, lowStock: $lowStock, wastageToday: $wastageToday, returnsToInspect: $returnsToInspect)';
}


}

/// @nodoc
abstract mixin class _$GodownHomeDtoOutputCopyWith<$Res> implements $GodownHomeDtoOutputCopyWith<$Res> {
  factory _$GodownHomeDtoOutputCopyWith(_GodownHomeDtoOutput value, $Res Function(_GodownHomeDtoOutput) _then) = __$GodownHomeDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String date, int toDispatch, int arrivalsToday, List<LowStock2> lowStock, WastageToday wastageToday, int? returnsToInspect
});


@override $WastageTodayCopyWith<$Res> get wastageToday;

}
/// @nodoc
class __$GodownHomeDtoOutputCopyWithImpl<$Res>
    implements _$GodownHomeDtoOutputCopyWith<$Res> {
  __$GodownHomeDtoOutputCopyWithImpl(this._self, this._then);

  final _GodownHomeDtoOutput _self;
  final $Res Function(_GodownHomeDtoOutput) _then;

/// Create a copy of GodownHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? toDispatch = null,Object? arrivalsToday = null,Object? lowStock = null,Object? wastageToday = null,Object? returnsToInspect = freezed,}) {
  return _then(_GodownHomeDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,toDispatch: null == toDispatch ? _self.toDispatch : toDispatch // ignore: cast_nullable_to_non_nullable
as int,arrivalsToday: null == arrivalsToday ? _self.arrivalsToday : arrivalsToday // ignore: cast_nullable_to_non_nullable
as int,lowStock: null == lowStock ? _self._lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as List<LowStock2>,wastageToday: null == wastageToday ? _self.wastageToday : wastageToday // ignore: cast_nullable_to_non_nullable
as WastageToday,returnsToInspect: freezed == returnsToInspect ? _self.returnsToInspect : returnsToInspect // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of GodownHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WastageTodayCopyWith<$Res> get wastageToday {
  
  return $WastageTodayCopyWith<$Res>(_self.wastageToday, (value) {
    return _then(_self.copyWith(wastageToday: value));
  });
}
}

// dart format on
