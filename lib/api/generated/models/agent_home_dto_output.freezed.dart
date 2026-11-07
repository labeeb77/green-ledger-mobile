// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_home_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentHomeDtoOutput {

 String get date; int get dueOnMyShops; CollectedToday get collectedToday; int get cashToHandOver; bool get handoverPending; List<DueToday> get dueToday;
/// Create a copy of AgentHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentHomeDtoOutputCopyWith<AgentHomeDtoOutput> get copyWith => _$AgentHomeDtoOutputCopyWithImpl<AgentHomeDtoOutput>(this as AgentHomeDtoOutput, _$identity);

  /// Serializes this AgentHomeDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AgentHomeDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentHomeDtoOutput&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.dueOnMyShops, _this.dueOnMyShops) || other.dueOnMyShops == _this.dueOnMyShops)&&(identical(other.collectedToday, _this.collectedToday) || other.collectedToday == _this.collectedToday)&&(identical(other.cashToHandOver, _this.cashToHandOver) || other.cashToHandOver == _this.cashToHandOver)&&(identical(other.handoverPending, _this.handoverPending) || other.handoverPending == _this.handoverPending)&&const DeepCollectionEquality().equals(other.dueToday, _this.dueToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AgentHomeDtoOutput;
  return Object.hash(runtimeType,_this.date,_this.dueOnMyShops,_this.collectedToday,_this.cashToHandOver,_this.handoverPending,const DeepCollectionEquality().hash(_this.dueToday));
}

@override
String toString() {
  final _this = this as AgentHomeDtoOutput;
  return 'AgentHomeDtoOutput(date: ${_this.date}, dueOnMyShops: ${_this.dueOnMyShops}, collectedToday: ${_this.collectedToday}, cashToHandOver: ${_this.cashToHandOver}, handoverPending: ${_this.handoverPending}, dueToday: ${_this.dueToday})';
}


}

/// @nodoc
abstract mixin class $AgentHomeDtoOutputCopyWith<$Res>  {
  factory $AgentHomeDtoOutputCopyWith(AgentHomeDtoOutput value, $Res Function(AgentHomeDtoOutput) _then) = _$AgentHomeDtoOutputCopyWithImpl;
@useResult
$Res call({
 String date, int dueOnMyShops, CollectedToday collectedToday, int cashToHandOver, bool handoverPending, List<DueToday> dueToday
});


$CollectedTodayCopyWith<$Res> get collectedToday;

}
/// @nodoc
class _$AgentHomeDtoOutputCopyWithImpl<$Res>
    implements $AgentHomeDtoOutputCopyWith<$Res> {
  _$AgentHomeDtoOutputCopyWithImpl(this._self, this._then);

  final AgentHomeDtoOutput _self;
  final $Res Function(AgentHomeDtoOutput) _then;

/// Create a copy of AgentHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? dueOnMyShops = null,Object? collectedToday = null,Object? cashToHandOver = null,Object? handoverPending = null,Object? dueToday = null,}) {
  return _then(AgentHomeDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dueOnMyShops: null == dueOnMyShops ? _self.dueOnMyShops : dueOnMyShops // ignore: cast_nullable_to_non_nullable
as int,collectedToday: null == collectedToday ? _self.collectedToday : collectedToday // ignore: cast_nullable_to_non_nullable
as CollectedToday,cashToHandOver: null == cashToHandOver ? _self.cashToHandOver : cashToHandOver // ignore: cast_nullable_to_non_nullable
as int,handoverPending: null == handoverPending ? _self.handoverPending : handoverPending // ignore: cast_nullable_to_non_nullable
as bool,dueToday: null == dueToday ? _self.dueToday : dueToday // ignore: cast_nullable_to_non_nullable
as List<DueToday>,
  ));
}
/// Create a copy of AgentHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectedTodayCopyWith<$Res> get collectedToday {
  
  return $CollectedTodayCopyWith<$Res>(_self.collectedToday, (value) {
    return _then(_self.copyWith(collectedToday: value));
  });
}
}


/// Adds pattern-matching-related methods to [AgentHomeDtoOutput].
extension AgentHomeDtoOutputPatterns on AgentHomeDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentHomeDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentHomeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentHomeDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _AgentHomeDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentHomeDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _AgentHomeDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  int dueOnMyShops,  CollectedToday collectedToday,  int cashToHandOver,  bool handoverPending,  List<DueToday> dueToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentHomeDtoOutput() when $default != null:
return $default(_that.date,_that.dueOnMyShops,_that.collectedToday,_that.cashToHandOver,_that.handoverPending,_that.dueToday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  int dueOnMyShops,  CollectedToday collectedToday,  int cashToHandOver,  bool handoverPending,  List<DueToday> dueToday)  $default,) {final _that = this;
switch (_that) {
case _AgentHomeDtoOutput():
return $default(_that.date,_that.dueOnMyShops,_that.collectedToday,_that.cashToHandOver,_that.handoverPending,_that.dueToday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  int dueOnMyShops,  CollectedToday collectedToday,  int cashToHandOver,  bool handoverPending,  List<DueToday> dueToday)?  $default,) {final _that = this;
switch (_that) {
case _AgentHomeDtoOutput() when $default != null:
return $default(_that.date,_that.dueOnMyShops,_that.collectedToday,_that.cashToHandOver,_that.handoverPending,_that.dueToday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentHomeDtoOutput implements AgentHomeDtoOutput {
  const _AgentHomeDtoOutput({required this.date, required this.dueOnMyShops, required this.collectedToday, required this.cashToHandOver, required this.handoverPending, required  List<DueToday> dueToday}): _dueToday = dueToday;
  factory _AgentHomeDtoOutput.fromJson(Map<String, dynamic> json) => _$AgentHomeDtoOutputFromJson(json);

@override final  String date;
@override final  int dueOnMyShops;
@override final  CollectedToday collectedToday;
@override final  int cashToHandOver;
@override final  bool handoverPending;
 final  List<DueToday> _dueToday;
@override List<DueToday> get dueToday {
  if (_dueToday is EqualUnmodifiableListView) return _dueToday;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dueToday);
}


/// Create a copy of AgentHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentHomeDtoOutputCopyWith<_AgentHomeDtoOutput> get copyWith => __$AgentHomeDtoOutputCopyWithImpl<_AgentHomeDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentHomeDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentHomeDtoOutput&&(identical(other.date, date) || other.date == date)&&(identical(other.dueOnMyShops, dueOnMyShops) || other.dueOnMyShops == dueOnMyShops)&&(identical(other.collectedToday, collectedToday) || other.collectedToday == collectedToday)&&(identical(other.cashToHandOver, cashToHandOver) || other.cashToHandOver == cashToHandOver)&&(identical(other.handoverPending, handoverPending) || other.handoverPending == handoverPending)&&const DeepCollectionEquality().equals(other.dueToday, _dueToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,dueOnMyShops,collectedToday,cashToHandOver,handoverPending,const DeepCollectionEquality().hash(_dueToday));
}

@override
String toString() {
    return 'AgentHomeDtoOutput(date: $date, dueOnMyShops: $dueOnMyShops, collectedToday: $collectedToday, cashToHandOver: $cashToHandOver, handoverPending: $handoverPending, dueToday: $dueToday)';
}


}

/// @nodoc
abstract mixin class _$AgentHomeDtoOutputCopyWith<$Res> implements $AgentHomeDtoOutputCopyWith<$Res> {
  factory _$AgentHomeDtoOutputCopyWith(_AgentHomeDtoOutput value, $Res Function(_AgentHomeDtoOutput) _then) = __$AgentHomeDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String date, int dueOnMyShops, CollectedToday collectedToday, int cashToHandOver, bool handoverPending, List<DueToday> dueToday
});


@override $CollectedTodayCopyWith<$Res> get collectedToday;

}
/// @nodoc
class __$AgentHomeDtoOutputCopyWithImpl<$Res>
    implements _$AgentHomeDtoOutputCopyWith<$Res> {
  __$AgentHomeDtoOutputCopyWithImpl(this._self, this._then);

  final _AgentHomeDtoOutput _self;
  final $Res Function(_AgentHomeDtoOutput) _then;

/// Create a copy of AgentHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? dueOnMyShops = null,Object? collectedToday = null,Object? cashToHandOver = null,Object? handoverPending = null,Object? dueToday = null,}) {
  return _then(_AgentHomeDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dueOnMyShops: null == dueOnMyShops ? _self.dueOnMyShops : dueOnMyShops // ignore: cast_nullable_to_non_nullable
as int,collectedToday: null == collectedToday ? _self.collectedToday : collectedToday // ignore: cast_nullable_to_non_nullable
as CollectedToday,cashToHandOver: null == cashToHandOver ? _self.cashToHandOver : cashToHandOver // ignore: cast_nullable_to_non_nullable
as int,handoverPending: null == handoverPending ? _self.handoverPending : handoverPending // ignore: cast_nullable_to_non_nullable
as bool,dueToday: null == dueToday ? _self._dueToday : dueToday // ignore: cast_nullable_to_non_nullable
as List<DueToday>,
  ));
}

/// Create a copy of AgentHomeDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectedTodayCopyWith<$Res> get collectedToday {
  
  return $CollectedTodayCopyWith<$Res>(_self.collectedToday, (value) {
    return _then(_self.copyWith(collectedToday: value));
  });
}
}

// dart format on
