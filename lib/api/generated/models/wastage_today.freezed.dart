// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wastage_today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WastageToday {

 List<ByUnit> get byUnit; int get pendingApproval;
/// Create a copy of WastageToday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WastageTodayCopyWith<WastageToday> get copyWith => _$WastageTodayCopyWithImpl<WastageToday>(this as WastageToday, _$identity);

  /// Serializes this WastageToday to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WastageToday;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WastageToday&&const DeepCollectionEquality().equals(other.byUnit, _this.byUnit)&&(identical(other.pendingApproval, _this.pendingApproval) || other.pendingApproval == _this.pendingApproval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WastageToday;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.byUnit),_this.pendingApproval);
}

@override
String toString() {
  final _this = this as WastageToday;
  return 'WastageToday(byUnit: ${_this.byUnit}, pendingApproval: ${_this.pendingApproval})';
}


}

/// @nodoc
abstract mixin class $WastageTodayCopyWith<$Res>  {
  factory $WastageTodayCopyWith(WastageToday value, $Res Function(WastageToday) _then) = _$WastageTodayCopyWithImpl;
@useResult
$Res call({
 List<ByUnit> byUnit, int pendingApproval
});




}
/// @nodoc
class _$WastageTodayCopyWithImpl<$Res>
    implements $WastageTodayCopyWith<$Res> {
  _$WastageTodayCopyWithImpl(this._self, this._then);

  final WastageToday _self;
  final $Res Function(WastageToday) _then;

/// Create a copy of WastageToday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? byUnit = null,Object? pendingApproval = null,}) {
  return _then(WastageToday(
byUnit: null == byUnit ? _self.byUnit : byUnit // ignore: cast_nullable_to_non_nullable
as List<ByUnit>,pendingApproval: null == pendingApproval ? _self.pendingApproval : pendingApproval // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WastageToday].
extension WastageTodayPatterns on WastageToday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WastageToday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WastageToday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WastageToday value)  $default,){
final _that = this;
switch (_that) {
case _WastageToday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WastageToday value)?  $default,){
final _that = this;
switch (_that) {
case _WastageToday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ByUnit> byUnit,  int pendingApproval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WastageToday() when $default != null:
return $default(_that.byUnit,_that.pendingApproval);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ByUnit> byUnit,  int pendingApproval)  $default,) {final _that = this;
switch (_that) {
case _WastageToday():
return $default(_that.byUnit,_that.pendingApproval);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ByUnit> byUnit,  int pendingApproval)?  $default,) {final _that = this;
switch (_that) {
case _WastageToday() when $default != null:
return $default(_that.byUnit,_that.pendingApproval);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WastageToday implements WastageToday {
  const _WastageToday({required  List<ByUnit> byUnit, required this.pendingApproval}): _byUnit = byUnit;
  factory _WastageToday.fromJson(Map<String, dynamic> json) => _$WastageTodayFromJson(json);

 final  List<ByUnit> _byUnit;
@override List<ByUnit> get byUnit {
  if (_byUnit is EqualUnmodifiableListView) return _byUnit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byUnit);
}

@override final  int pendingApproval;

/// Create a copy of WastageToday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WastageTodayCopyWith<_WastageToday> get copyWith => __$WastageTodayCopyWithImpl<_WastageToday>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WastageTodayToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WastageToday&&const DeepCollectionEquality().equals(other.byUnit, _byUnit)&&(identical(other.pendingApproval, pendingApproval) || other.pendingApproval == pendingApproval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_byUnit),pendingApproval);
}

@override
String toString() {
    return 'WastageToday(byUnit: $byUnit, pendingApproval: $pendingApproval)';
}


}

/// @nodoc
abstract mixin class _$WastageTodayCopyWith<$Res> implements $WastageTodayCopyWith<$Res> {
  factory _$WastageTodayCopyWith(_WastageToday value, $Res Function(_WastageToday) _then) = __$WastageTodayCopyWithImpl;
@override @useResult
$Res call({
 List<ByUnit> byUnit, int pendingApproval
});




}
/// @nodoc
class __$WastageTodayCopyWithImpl<$Res>
    implements _$WastageTodayCopyWith<$Res> {
  __$WastageTodayCopyWithImpl(this._self, this._then);

  final _WastageToday _self;
  final $Res Function(_WastageToday) _then;

/// Create a copy of WastageToday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? byUnit = null,Object? pendingApproval = null,}) {
  return _then(_WastageToday(
byUnit: null == byUnit ? _self._byUnit : byUnit // ignore: cast_nullable_to_non_nullable
as List<ByUnit>,pendingApproval: null == pendingApproval ? _self.pendingApproval : pendingApproval // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
