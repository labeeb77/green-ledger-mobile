// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_report_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlatformReportDtoOutput {

 Businesses get businesses; int get trialsEnding7; int get renewalsDue7; int get renewalsDue30; List<DueSoon> get dueSoon; PaymentsThisMonth get paymentsThisMonth;
/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlatformReportDtoOutputCopyWith<PlatformReportDtoOutput> get copyWith => _$PlatformReportDtoOutputCopyWithImpl<PlatformReportDtoOutput>(this as PlatformReportDtoOutput, _$identity);

  /// Serializes this PlatformReportDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PlatformReportDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlatformReportDtoOutput&&(identical(other.businesses, _this.businesses) || other.businesses == _this.businesses)&&(identical(other.trialsEnding7, _this.trialsEnding7) || other.trialsEnding7 == _this.trialsEnding7)&&(identical(other.renewalsDue7, _this.renewalsDue7) || other.renewalsDue7 == _this.renewalsDue7)&&(identical(other.renewalsDue30, _this.renewalsDue30) || other.renewalsDue30 == _this.renewalsDue30)&&const DeepCollectionEquality().equals(other.dueSoon, _this.dueSoon)&&(identical(other.paymentsThisMonth, _this.paymentsThisMonth) || other.paymentsThisMonth == _this.paymentsThisMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PlatformReportDtoOutput;
  return Object.hash(runtimeType,_this.businesses,_this.trialsEnding7,_this.renewalsDue7,_this.renewalsDue30,const DeepCollectionEquality().hash(_this.dueSoon),_this.paymentsThisMonth);
}

@override
String toString() {
  final _this = this as PlatformReportDtoOutput;
  return 'PlatformReportDtoOutput(businesses: ${_this.businesses}, trialsEnding7: ${_this.trialsEnding7}, renewalsDue7: ${_this.renewalsDue7}, renewalsDue30: ${_this.renewalsDue30}, dueSoon: ${_this.dueSoon}, paymentsThisMonth: ${_this.paymentsThisMonth})';
}


}

/// @nodoc
abstract mixin class $PlatformReportDtoOutputCopyWith<$Res>  {
  factory $PlatformReportDtoOutputCopyWith(PlatformReportDtoOutput value, $Res Function(PlatformReportDtoOutput) _then) = _$PlatformReportDtoOutputCopyWithImpl;
@useResult
$Res call({
 Businesses businesses, int trialsEnding7, int renewalsDue7, int renewalsDue30, List<DueSoon> dueSoon, PaymentsThisMonth paymentsThisMonth
});


$BusinessesCopyWith<$Res> get businesses;$PaymentsThisMonthCopyWith<$Res> get paymentsThisMonth;

}
/// @nodoc
class _$PlatformReportDtoOutputCopyWithImpl<$Res>
    implements $PlatformReportDtoOutputCopyWith<$Res> {
  _$PlatformReportDtoOutputCopyWithImpl(this._self, this._then);

  final PlatformReportDtoOutput _self;
  final $Res Function(PlatformReportDtoOutput) _then;

/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businesses = null,Object? trialsEnding7 = null,Object? renewalsDue7 = null,Object? renewalsDue30 = null,Object? dueSoon = null,Object? paymentsThisMonth = null,}) {
  return _then(PlatformReportDtoOutput(
businesses: null == businesses ? _self.businesses : businesses // ignore: cast_nullable_to_non_nullable
as Businesses,trialsEnding7: null == trialsEnding7 ? _self.trialsEnding7 : trialsEnding7 // ignore: cast_nullable_to_non_nullable
as int,renewalsDue7: null == renewalsDue7 ? _self.renewalsDue7 : renewalsDue7 // ignore: cast_nullable_to_non_nullable
as int,renewalsDue30: null == renewalsDue30 ? _self.renewalsDue30 : renewalsDue30 // ignore: cast_nullable_to_non_nullable
as int,dueSoon: null == dueSoon ? _self.dueSoon : dueSoon // ignore: cast_nullable_to_non_nullable
as List<DueSoon>,paymentsThisMonth: null == paymentsThisMonth ? _self.paymentsThisMonth : paymentsThisMonth // ignore: cast_nullable_to_non_nullable
as PaymentsThisMonth,
  ));
}
/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessesCopyWith<$Res> get businesses {
  
  return $BusinessesCopyWith<$Res>(_self.businesses, (value) {
    return _then(_self.copyWith(businesses: value));
  });
}/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentsThisMonthCopyWith<$Res> get paymentsThisMonth {
  
  return $PaymentsThisMonthCopyWith<$Res>(_self.paymentsThisMonth, (value) {
    return _then(_self.copyWith(paymentsThisMonth: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlatformReportDtoOutput].
extension PlatformReportDtoOutputPatterns on PlatformReportDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlatformReportDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlatformReportDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlatformReportDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _PlatformReportDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlatformReportDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _PlatformReportDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Businesses businesses,  int trialsEnding7,  int renewalsDue7,  int renewalsDue30,  List<DueSoon> dueSoon,  PaymentsThisMonth paymentsThisMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlatformReportDtoOutput() when $default != null:
return $default(_that.businesses,_that.trialsEnding7,_that.renewalsDue7,_that.renewalsDue30,_that.dueSoon,_that.paymentsThisMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Businesses businesses,  int trialsEnding7,  int renewalsDue7,  int renewalsDue30,  List<DueSoon> dueSoon,  PaymentsThisMonth paymentsThisMonth)  $default,) {final _that = this;
switch (_that) {
case _PlatformReportDtoOutput():
return $default(_that.businesses,_that.trialsEnding7,_that.renewalsDue7,_that.renewalsDue30,_that.dueSoon,_that.paymentsThisMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Businesses businesses,  int trialsEnding7,  int renewalsDue7,  int renewalsDue30,  List<DueSoon> dueSoon,  PaymentsThisMonth paymentsThisMonth)?  $default,) {final _that = this;
switch (_that) {
case _PlatformReportDtoOutput() when $default != null:
return $default(_that.businesses,_that.trialsEnding7,_that.renewalsDue7,_that.renewalsDue30,_that.dueSoon,_that.paymentsThisMonth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlatformReportDtoOutput implements PlatformReportDtoOutput {
  const _PlatformReportDtoOutput({required this.businesses, required this.trialsEnding7, required this.renewalsDue7, required this.renewalsDue30, required  List<DueSoon> dueSoon, required this.paymentsThisMonth}): _dueSoon = dueSoon;
  factory _PlatformReportDtoOutput.fromJson(Map<String, dynamic> json) => _$PlatformReportDtoOutputFromJson(json);

@override final  Businesses businesses;
@override final  int trialsEnding7;
@override final  int renewalsDue7;
@override final  int renewalsDue30;
 final  List<DueSoon> _dueSoon;
@override List<DueSoon> get dueSoon {
  if (_dueSoon is EqualUnmodifiableListView) return _dueSoon;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dueSoon);
}

@override final  PaymentsThisMonth paymentsThisMonth;

/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlatformReportDtoOutputCopyWith<_PlatformReportDtoOutput> get copyWith => __$PlatformReportDtoOutputCopyWithImpl<_PlatformReportDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlatformReportDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlatformReportDtoOutput&&(identical(other.businesses, businesses) || other.businesses == businesses)&&(identical(other.trialsEnding7, trialsEnding7) || other.trialsEnding7 == trialsEnding7)&&(identical(other.renewalsDue7, renewalsDue7) || other.renewalsDue7 == renewalsDue7)&&(identical(other.renewalsDue30, renewalsDue30) || other.renewalsDue30 == renewalsDue30)&&const DeepCollectionEquality().equals(other.dueSoon, _dueSoon)&&(identical(other.paymentsThisMonth, paymentsThisMonth) || other.paymentsThisMonth == paymentsThisMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,businesses,trialsEnding7,renewalsDue7,renewalsDue30,const DeepCollectionEquality().hash(_dueSoon),paymentsThisMonth);
}

@override
String toString() {
    return 'PlatformReportDtoOutput(businesses: $businesses, trialsEnding7: $trialsEnding7, renewalsDue7: $renewalsDue7, renewalsDue30: $renewalsDue30, dueSoon: $dueSoon, paymentsThisMonth: $paymentsThisMonth)';
}


}

/// @nodoc
abstract mixin class _$PlatformReportDtoOutputCopyWith<$Res> implements $PlatformReportDtoOutputCopyWith<$Res> {
  factory _$PlatformReportDtoOutputCopyWith(_PlatformReportDtoOutput value, $Res Function(_PlatformReportDtoOutput) _then) = __$PlatformReportDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 Businesses businesses, int trialsEnding7, int renewalsDue7, int renewalsDue30, List<DueSoon> dueSoon, PaymentsThisMonth paymentsThisMonth
});


@override $BusinessesCopyWith<$Res> get businesses;@override $PaymentsThisMonthCopyWith<$Res> get paymentsThisMonth;

}
/// @nodoc
class __$PlatformReportDtoOutputCopyWithImpl<$Res>
    implements _$PlatformReportDtoOutputCopyWith<$Res> {
  __$PlatformReportDtoOutputCopyWithImpl(this._self, this._then);

  final _PlatformReportDtoOutput _self;
  final $Res Function(_PlatformReportDtoOutput) _then;

/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businesses = null,Object? trialsEnding7 = null,Object? renewalsDue7 = null,Object? renewalsDue30 = null,Object? dueSoon = null,Object? paymentsThisMonth = null,}) {
  return _then(_PlatformReportDtoOutput(
businesses: null == businesses ? _self.businesses : businesses // ignore: cast_nullable_to_non_nullable
as Businesses,trialsEnding7: null == trialsEnding7 ? _self.trialsEnding7 : trialsEnding7 // ignore: cast_nullable_to_non_nullable
as int,renewalsDue7: null == renewalsDue7 ? _self.renewalsDue7 : renewalsDue7 // ignore: cast_nullable_to_non_nullable
as int,renewalsDue30: null == renewalsDue30 ? _self.renewalsDue30 : renewalsDue30 // ignore: cast_nullable_to_non_nullable
as int,dueSoon: null == dueSoon ? _self._dueSoon : dueSoon // ignore: cast_nullable_to_non_nullable
as List<DueSoon>,paymentsThisMonth: null == paymentsThisMonth ? _self.paymentsThisMonth : paymentsThisMonth // ignore: cast_nullable_to_non_nullable
as PaymentsThisMonth,
  ));
}

/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessesCopyWith<$Res> get businesses {
  
  return $BusinessesCopyWith<$Res>(_self.businesses, (value) {
    return _then(_self.copyWith(businesses: value));
  });
}/// Create a copy of PlatformReportDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentsThisMonthCopyWith<$Res> get paymentsThisMonth {
  
  return $PaymentsThisMonthCopyWith<$Res>(_self.paymentsThisMonth, (value) {
    return _then(_self.copyWith(paymentsThisMonth: value));
  });
}
}

// dart format on
