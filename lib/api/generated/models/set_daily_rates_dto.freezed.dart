// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_daily_rates_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetDailyRatesDto {

 DateTime get date; List<Rates> get rates;
/// Create a copy of SetDailyRatesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetDailyRatesDtoCopyWith<SetDailyRatesDto> get copyWith => _$SetDailyRatesDtoCopyWithImpl<SetDailyRatesDto>(this as SetDailyRatesDto, _$identity);

  /// Serializes this SetDailyRatesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SetDailyRatesDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetDailyRatesDto&&(identical(other.date, _this.date) || other.date == _this.date)&&const DeepCollectionEquality().equals(other.rates, _this.rates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SetDailyRatesDto;
  return Object.hash(runtimeType,_this.date,const DeepCollectionEquality().hash(_this.rates));
}

@override
String toString() {
  final _this = this as SetDailyRatesDto;
  return 'SetDailyRatesDto(date: ${_this.date}, rates: ${_this.rates})';
}


}

/// @nodoc
abstract mixin class $SetDailyRatesDtoCopyWith<$Res>  {
  factory $SetDailyRatesDtoCopyWith(SetDailyRatesDto value, $Res Function(SetDailyRatesDto) _then) = _$SetDailyRatesDtoCopyWithImpl;
@useResult
$Res call({
 DateTime date, List<Rates> rates
});




}
/// @nodoc
class _$SetDailyRatesDtoCopyWithImpl<$Res>
    implements $SetDailyRatesDtoCopyWith<$Res> {
  _$SetDailyRatesDtoCopyWithImpl(this._self, this._then);

  final SetDailyRatesDto _self;
  final $Res Function(SetDailyRatesDto) _then;

/// Create a copy of SetDailyRatesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? rates = null,}) {
  return _then(SetDailyRatesDto(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rates: null == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as List<Rates>,
  ));
}

}


/// Adds pattern-matching-related methods to [SetDailyRatesDto].
extension SetDailyRatesDtoPatterns on SetDailyRatesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetDailyRatesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetDailyRatesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetDailyRatesDto value)  $default,){
final _that = this;
switch (_that) {
case _SetDailyRatesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetDailyRatesDto value)?  $default,){
final _that = this;
switch (_that) {
case _SetDailyRatesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  List<Rates> rates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetDailyRatesDto() when $default != null:
return $default(_that.date,_that.rates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  List<Rates> rates)  $default,) {final _that = this;
switch (_that) {
case _SetDailyRatesDto():
return $default(_that.date,_that.rates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  List<Rates> rates)?  $default,) {final _that = this;
switch (_that) {
case _SetDailyRatesDto() when $default != null:
return $default(_that.date,_that.rates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetDailyRatesDto implements SetDailyRatesDto {
  const _SetDailyRatesDto({required this.date, required  List<Rates> rates}): _rates = rates;
  factory _SetDailyRatesDto.fromJson(Map<String, dynamic> json) => _$SetDailyRatesDtoFromJson(json);

@override final  DateTime date;
 final  List<Rates> _rates;
@override List<Rates> get rates {
  if (_rates is EqualUnmodifiableListView) return _rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rates);
}


/// Create a copy of SetDailyRatesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetDailyRatesDtoCopyWith<_SetDailyRatesDto> get copyWith => __$SetDailyRatesDtoCopyWithImpl<_SetDailyRatesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetDailyRatesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetDailyRatesDto&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.rates, _rates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_rates));
}

@override
String toString() {
    return 'SetDailyRatesDto(date: $date, rates: $rates)';
}


}

/// @nodoc
abstract mixin class _$SetDailyRatesDtoCopyWith<$Res> implements $SetDailyRatesDtoCopyWith<$Res> {
  factory _$SetDailyRatesDtoCopyWith(_SetDailyRatesDto value, $Res Function(_SetDailyRatesDto) _then) = __$SetDailyRatesDtoCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, List<Rates> rates
});




}
/// @nodoc
class __$SetDailyRatesDtoCopyWithImpl<$Res>
    implements _$SetDailyRatesDtoCopyWith<$Res> {
  __$SetDailyRatesDtoCopyWithImpl(this._self, this._then);

  final _SetDailyRatesDto _self;
  final $Res Function(_SetDailyRatesDto) _then;

/// Create a copy of SetDailyRatesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? rates = null,}) {
  return _then(_SetDailyRatesDto(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rates: null == rates ? _self._rates : rates // ignore: cast_nullable_to_non_nullable
as List<Rates>,
  ));
}


}

// dart format on
