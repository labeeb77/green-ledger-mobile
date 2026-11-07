// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agents_today_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentsTodayDtoOutput {

 String get date; List<Agents> get agents;
/// Create a copy of AgentsTodayDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentsTodayDtoOutputCopyWith<AgentsTodayDtoOutput> get copyWith => _$AgentsTodayDtoOutputCopyWithImpl<AgentsTodayDtoOutput>(this as AgentsTodayDtoOutput, _$identity);

  /// Serializes this AgentsTodayDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AgentsTodayDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentsTodayDtoOutput&&(identical(other.date, _this.date) || other.date == _this.date)&&const DeepCollectionEquality().equals(other.agents, _this.agents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AgentsTodayDtoOutput;
  return Object.hash(runtimeType,_this.date,const DeepCollectionEquality().hash(_this.agents));
}

@override
String toString() {
  final _this = this as AgentsTodayDtoOutput;
  return 'AgentsTodayDtoOutput(date: ${_this.date}, agents: ${_this.agents})';
}


}

/// @nodoc
abstract mixin class $AgentsTodayDtoOutputCopyWith<$Res>  {
  factory $AgentsTodayDtoOutputCopyWith(AgentsTodayDtoOutput value, $Res Function(AgentsTodayDtoOutput) _then) = _$AgentsTodayDtoOutputCopyWithImpl;
@useResult
$Res call({
 String date, List<Agents> agents
});




}
/// @nodoc
class _$AgentsTodayDtoOutputCopyWithImpl<$Res>
    implements $AgentsTodayDtoOutputCopyWith<$Res> {
  _$AgentsTodayDtoOutputCopyWithImpl(this._self, this._then);

  final AgentsTodayDtoOutput _self;
  final $Res Function(AgentsTodayDtoOutput) _then;

/// Create a copy of AgentsTodayDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? agents = null,}) {
  return _then(AgentsTodayDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,agents: null == agents ? _self.agents : agents // ignore: cast_nullable_to_non_nullable
as List<Agents>,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentsTodayDtoOutput].
extension AgentsTodayDtoOutputPatterns on AgentsTodayDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentsTodayDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentsTodayDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentsTodayDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _AgentsTodayDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentsTodayDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _AgentsTodayDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  List<Agents> agents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentsTodayDtoOutput() when $default != null:
return $default(_that.date,_that.agents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  List<Agents> agents)  $default,) {final _that = this;
switch (_that) {
case _AgentsTodayDtoOutput():
return $default(_that.date,_that.agents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  List<Agents> agents)?  $default,) {final _that = this;
switch (_that) {
case _AgentsTodayDtoOutput() when $default != null:
return $default(_that.date,_that.agents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentsTodayDtoOutput implements AgentsTodayDtoOutput {
  const _AgentsTodayDtoOutput({required this.date, required  List<Agents> agents}): _agents = agents;
  factory _AgentsTodayDtoOutput.fromJson(Map<String, dynamic> json) => _$AgentsTodayDtoOutputFromJson(json);

@override final  String date;
 final  List<Agents> _agents;
@override List<Agents> get agents {
  if (_agents is EqualUnmodifiableListView) return _agents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_agents);
}


/// Create a copy of AgentsTodayDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentsTodayDtoOutputCopyWith<_AgentsTodayDtoOutput> get copyWith => __$AgentsTodayDtoOutputCopyWithImpl<_AgentsTodayDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentsTodayDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentsTodayDtoOutput&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.agents, _agents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_agents));
}

@override
String toString() {
    return 'AgentsTodayDtoOutput(date: $date, agents: $agents)';
}


}

/// @nodoc
abstract mixin class _$AgentsTodayDtoOutputCopyWith<$Res> implements $AgentsTodayDtoOutputCopyWith<$Res> {
  factory _$AgentsTodayDtoOutputCopyWith(_AgentsTodayDtoOutput value, $Res Function(_AgentsTodayDtoOutput) _then) = __$AgentsTodayDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String date, List<Agents> agents
});




}
/// @nodoc
class __$AgentsTodayDtoOutputCopyWithImpl<$Res>
    implements _$AgentsTodayDtoOutputCopyWith<$Res> {
  __$AgentsTodayDtoOutputCopyWithImpl(this._self, this._then);

  final _AgentsTodayDtoOutput _self;
  final $Res Function(_AgentsTodayDtoOutput) _then;

/// Create a copy of AgentsTodayDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? agents = null,}) {
  return _then(_AgentsTodayDtoOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,agents: null == agents ? _self._agents : agents // ignore: cast_nullable_to_non_nullable
as List<Agents>,
  ));
}


}

// dart format on
