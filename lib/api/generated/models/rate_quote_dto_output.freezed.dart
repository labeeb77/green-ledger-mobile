// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_quote_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateQuoteDtoOutput {

 int? get rate; RateQuoteDtoOutputSource get source; int? get dailyRate; String? get dailyRateDate; int? get minimumRate; bool get belowMinimum; RateQuoteDtoOutputRatePer get ratePer; LastRate? get lastRate;
/// Create a copy of RateQuoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateQuoteDtoOutputCopyWith<RateQuoteDtoOutput> get copyWith => _$RateQuoteDtoOutputCopyWithImpl<RateQuoteDtoOutput>(this as RateQuoteDtoOutput, _$identity);

  /// Serializes this RateQuoteDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RateQuoteDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateQuoteDtoOutput&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.dailyRate, _this.dailyRate) || other.dailyRate == _this.dailyRate)&&(identical(other.dailyRateDate, _this.dailyRateDate) || other.dailyRateDate == _this.dailyRateDate)&&(identical(other.minimumRate, _this.minimumRate) || other.minimumRate == _this.minimumRate)&&(identical(other.belowMinimum, _this.belowMinimum) || other.belowMinimum == _this.belowMinimum)&&(identical(other.ratePer, _this.ratePer) || other.ratePer == _this.ratePer)&&(identical(other.lastRate, _this.lastRate) || other.lastRate == _this.lastRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RateQuoteDtoOutput;
  return Object.hash(runtimeType,_this.rate,_this.source,_this.dailyRate,_this.dailyRateDate,_this.minimumRate,_this.belowMinimum,_this.ratePer,_this.lastRate);
}

@override
String toString() {
  final _this = this as RateQuoteDtoOutput;
  return 'RateQuoteDtoOutput(rate: ${_this.rate}, source: ${_this.source}, dailyRate: ${_this.dailyRate}, dailyRateDate: ${_this.dailyRateDate}, minimumRate: ${_this.minimumRate}, belowMinimum: ${_this.belowMinimum}, ratePer: ${_this.ratePer}, lastRate: ${_this.lastRate})';
}


}

/// @nodoc
abstract mixin class $RateQuoteDtoOutputCopyWith<$Res>  {
  factory $RateQuoteDtoOutputCopyWith(RateQuoteDtoOutput value, $Res Function(RateQuoteDtoOutput) _then) = _$RateQuoteDtoOutputCopyWithImpl;
@useResult
$Res call({
 int? rate, RateQuoteDtoOutputSource source, int? dailyRate, String? dailyRateDate, int? minimumRate, bool belowMinimum, RateQuoteDtoOutputRatePer ratePer, LastRate? lastRate
});


$LastRateCopyWith<$Res>? get lastRate;

}
/// @nodoc
class _$RateQuoteDtoOutputCopyWithImpl<$Res>
    implements $RateQuoteDtoOutputCopyWith<$Res> {
  _$RateQuoteDtoOutputCopyWithImpl(this._self, this._then);

  final RateQuoteDtoOutput _self;
  final $Res Function(RateQuoteDtoOutput) _then;

/// Create a copy of RateQuoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rate = freezed,Object? source = null,Object? dailyRate = freezed,Object? dailyRateDate = freezed,Object? minimumRate = freezed,Object? belowMinimum = null,Object? ratePer = null,Object? lastRate = freezed,}) {
  return _then(RateQuoteDtoOutput(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as RateQuoteDtoOutputSource,dailyRate: freezed == dailyRate ? _self.dailyRate : dailyRate // ignore: cast_nullable_to_non_nullable
as int?,dailyRateDate: freezed == dailyRateDate ? _self.dailyRateDate : dailyRateDate // ignore: cast_nullable_to_non_nullable
as String?,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,belowMinimum: null == belowMinimum ? _self.belowMinimum : belowMinimum // ignore: cast_nullable_to_non_nullable
as bool,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RateQuoteDtoOutputRatePer,lastRate: freezed == lastRate ? _self.lastRate : lastRate // ignore: cast_nullable_to_non_nullable
as LastRate?,
  ));
}
/// Create a copy of RateQuoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastRateCopyWith<$Res>? get lastRate {
    if (_self.lastRate == null) {
    return null;
  }

  return $LastRateCopyWith<$Res>(_self.lastRate!, (value) {
    return _then(_self.copyWith(lastRate: value));
  });
}
}


/// Adds pattern-matching-related methods to [RateQuoteDtoOutput].
extension RateQuoteDtoOutputPatterns on RateQuoteDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateQuoteDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateQuoteDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateQuoteDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _RateQuoteDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateQuoteDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _RateQuoteDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? rate,  RateQuoteDtoOutputSource source,  int? dailyRate,  String? dailyRateDate,  int? minimumRate,  bool belowMinimum,  RateQuoteDtoOutputRatePer ratePer,  LastRate? lastRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateQuoteDtoOutput() when $default != null:
return $default(_that.rate,_that.source,_that.dailyRate,_that.dailyRateDate,_that.minimumRate,_that.belowMinimum,_that.ratePer,_that.lastRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? rate,  RateQuoteDtoOutputSource source,  int? dailyRate,  String? dailyRateDate,  int? minimumRate,  bool belowMinimum,  RateQuoteDtoOutputRatePer ratePer,  LastRate? lastRate)  $default,) {final _that = this;
switch (_that) {
case _RateQuoteDtoOutput():
return $default(_that.rate,_that.source,_that.dailyRate,_that.dailyRateDate,_that.minimumRate,_that.belowMinimum,_that.ratePer,_that.lastRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? rate,  RateQuoteDtoOutputSource source,  int? dailyRate,  String? dailyRateDate,  int? minimumRate,  bool belowMinimum,  RateQuoteDtoOutputRatePer ratePer,  LastRate? lastRate)?  $default,) {final _that = this;
switch (_that) {
case _RateQuoteDtoOutput() when $default != null:
return $default(_that.rate,_that.source,_that.dailyRate,_that.dailyRateDate,_that.minimumRate,_that.belowMinimum,_that.ratePer,_that.lastRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RateQuoteDtoOutput implements RateQuoteDtoOutput {
  const _RateQuoteDtoOutput({required this.rate, required this.source, required this.dailyRate, required this.dailyRateDate, required this.minimumRate, required this.belowMinimum, required this.ratePer, required this.lastRate});
  factory _RateQuoteDtoOutput.fromJson(Map<String, dynamic> json) => _$RateQuoteDtoOutputFromJson(json);

@override final  int? rate;
@override final  RateQuoteDtoOutputSource source;
@override final  int? dailyRate;
@override final  String? dailyRateDate;
@override final  int? minimumRate;
@override final  bool belowMinimum;
@override final  RateQuoteDtoOutputRatePer ratePer;
@override final  LastRate? lastRate;

/// Create a copy of RateQuoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateQuoteDtoOutputCopyWith<_RateQuoteDtoOutput> get copyWith => __$RateQuoteDtoOutputCopyWithImpl<_RateQuoteDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RateQuoteDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateQuoteDtoOutput&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.source, source) || other.source == source)&&(identical(other.dailyRate, dailyRate) || other.dailyRate == dailyRate)&&(identical(other.dailyRateDate, dailyRateDate) || other.dailyRateDate == dailyRateDate)&&(identical(other.minimumRate, minimumRate) || other.minimumRate == minimumRate)&&(identical(other.belowMinimum, belowMinimum) || other.belowMinimum == belowMinimum)&&(identical(other.ratePer, ratePer) || other.ratePer == ratePer)&&(identical(other.lastRate, lastRate) || other.lastRate == lastRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rate,source,dailyRate,dailyRateDate,minimumRate,belowMinimum,ratePer,lastRate);
}

@override
String toString() {
    return 'RateQuoteDtoOutput(rate: $rate, source: $source, dailyRate: $dailyRate, dailyRateDate: $dailyRateDate, minimumRate: $minimumRate, belowMinimum: $belowMinimum, ratePer: $ratePer, lastRate: $lastRate)';
}


}

/// @nodoc
abstract mixin class _$RateQuoteDtoOutputCopyWith<$Res> implements $RateQuoteDtoOutputCopyWith<$Res> {
  factory _$RateQuoteDtoOutputCopyWith(_RateQuoteDtoOutput value, $Res Function(_RateQuoteDtoOutput) _then) = __$RateQuoteDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 int? rate, RateQuoteDtoOutputSource source, int? dailyRate, String? dailyRateDate, int? minimumRate, bool belowMinimum, RateQuoteDtoOutputRatePer ratePer, LastRate? lastRate
});


@override $LastRateCopyWith<$Res>? get lastRate;

}
/// @nodoc
class __$RateQuoteDtoOutputCopyWithImpl<$Res>
    implements _$RateQuoteDtoOutputCopyWith<$Res> {
  __$RateQuoteDtoOutputCopyWithImpl(this._self, this._then);

  final _RateQuoteDtoOutput _self;
  final $Res Function(_RateQuoteDtoOutput) _then;

/// Create a copy of RateQuoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? source = null,Object? dailyRate = freezed,Object? dailyRateDate = freezed,Object? minimumRate = freezed,Object? belowMinimum = null,Object? ratePer = null,Object? lastRate = freezed,}) {
  return _then(_RateQuoteDtoOutput(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as RateQuoteDtoOutputSource,dailyRate: freezed == dailyRate ? _self.dailyRate : dailyRate // ignore: cast_nullable_to_non_nullable
as int?,dailyRateDate: freezed == dailyRateDate ? _self.dailyRateDate : dailyRateDate // ignore: cast_nullable_to_non_nullable
as String?,minimumRate: freezed == minimumRate ? _self.minimumRate : minimumRate // ignore: cast_nullable_to_non_nullable
as int?,belowMinimum: null == belowMinimum ? _self.belowMinimum : belowMinimum // ignore: cast_nullable_to_non_nullable
as bool,ratePer: null == ratePer ? _self.ratePer : ratePer // ignore: cast_nullable_to_non_nullable
as RateQuoteDtoOutputRatePer,lastRate: freezed == lastRate ? _self.lastRate : lastRate // ignore: cast_nullable_to_non_nullable
as LastRate?,
  ));
}

/// Create a copy of RateQuoteDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastRateCopyWith<$Res>? get lastRate {
    if (_self.lastRate == null) {
    return null;
  }

  return $LastRateCopyWith<$Res>(_self.lastRate!, (value) {
    return _then(_self.copyWith(lastRate: value));
  });
}
}

// dart format on
