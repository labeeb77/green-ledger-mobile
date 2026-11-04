// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rows.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Rows {

 String get productId; String get productName; String? get packUnitId; String get unitLabel; int? get rate; Previous? get previous;
/// Create a copy of Rows
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RowsCopyWith<Rows> get copyWith => _$RowsCopyWithImpl<Rows>(this as Rows, _$identity);

  /// Serializes this Rows to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Rows;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rows&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.productName, _this.productName) || other.productName == _this.productName)&&(identical(other.packUnitId, _this.packUnitId) || other.packUnitId == _this.packUnitId)&&(identical(other.unitLabel, _this.unitLabel) || other.unitLabel == _this.unitLabel)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.previous, _this.previous) || other.previous == _this.previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Rows;
  return Object.hash(runtimeType,_this.productId,_this.productName,_this.packUnitId,_this.unitLabel,_this.rate,_this.previous);
}

@override
String toString() {
  final _this = this as Rows;
  return 'Rows(productId: ${_this.productId}, productName: ${_this.productName}, packUnitId: ${_this.packUnitId}, unitLabel: ${_this.unitLabel}, rate: ${_this.rate}, previous: ${_this.previous})';
}


}

/// @nodoc
abstract mixin class $RowsCopyWith<$Res>  {
  factory $RowsCopyWith(Rows value, $Res Function(Rows) _then) = _$RowsCopyWithImpl;
@useResult
$Res call({
 String productId, String productName, String? packUnitId, String unitLabel, int? rate, Previous? previous
});


$PreviousCopyWith<$Res>? get previous;

}
/// @nodoc
class _$RowsCopyWithImpl<$Res>
    implements $RowsCopyWith<$Res> {
  _$RowsCopyWithImpl(this._self, this._then);

  final Rows _self;
  final $Res Function(Rows) _then;

/// Create a copy of Rows
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productName = null,Object? packUnitId = freezed,Object? unitLabel = null,Object? rate = freezed,Object? previous = freezed,}) {
  return _then(Rows(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,unitLabel: null == unitLabel ? _self.unitLabel : unitLabel // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as Previous?,
  ));
}
/// Create a copy of Rows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreviousCopyWith<$Res>? get previous {
    if (_self.previous == null) {
    return null;
  }

  return $PreviousCopyWith<$Res>(_self.previous!, (value) {
    return _then(_self.copyWith(previous: value));
  });
}
}


/// Adds pattern-matching-related methods to [Rows].
extension RowsPatterns on Rows {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rows value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rows() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rows value)  $default,){
final _that = this;
switch (_that) {
case _Rows():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rows value)?  $default,){
final _that = this;
switch (_that) {
case _Rows() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String productName,  String? packUnitId,  String unitLabel,  int? rate,  Previous? previous)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rows() when $default != null:
return $default(_that.productId,_that.productName,_that.packUnitId,_that.unitLabel,_that.rate,_that.previous);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String productName,  String? packUnitId,  String unitLabel,  int? rate,  Previous? previous)  $default,) {final _that = this;
switch (_that) {
case _Rows():
return $default(_that.productId,_that.productName,_that.packUnitId,_that.unitLabel,_that.rate,_that.previous);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String productName,  String? packUnitId,  String unitLabel,  int? rate,  Previous? previous)?  $default,) {final _that = this;
switch (_that) {
case _Rows() when $default != null:
return $default(_that.productId,_that.productName,_that.packUnitId,_that.unitLabel,_that.rate,_that.previous);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rows implements Rows {
  const _Rows({required this.productId, required this.productName, required this.packUnitId, required this.unitLabel, required this.rate, required this.previous});
  factory _Rows.fromJson(Map<String, dynamic> json) => _$RowsFromJson(json);

@override final  String productId;
@override final  String productName;
@override final  String? packUnitId;
@override final  String unitLabel;
@override final  int? rate;
@override final  Previous? previous;

/// Create a copy of Rows
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RowsCopyWith<_Rows> get copyWith => __$RowsCopyWithImpl<_Rows>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RowsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rows&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&(identical(other.unitLabel, unitLabel) || other.unitLabel == unitLabel)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,productName,packUnitId,unitLabel,rate,previous);
}

@override
String toString() {
    return 'Rows(productId: $productId, productName: $productName, packUnitId: $packUnitId, unitLabel: $unitLabel, rate: $rate, previous: $previous)';
}


}

/// @nodoc
abstract mixin class _$RowsCopyWith<$Res> implements $RowsCopyWith<$Res> {
  factory _$RowsCopyWith(_Rows value, $Res Function(_Rows) _then) = __$RowsCopyWithImpl;
@override @useResult
$Res call({
 String productId, String productName, String? packUnitId, String unitLabel, int? rate, Previous? previous
});


@override $PreviousCopyWith<$Res>? get previous;

}
/// @nodoc
class __$RowsCopyWithImpl<$Res>
    implements _$RowsCopyWith<$Res> {
  __$RowsCopyWithImpl(this._self, this._then);

  final _Rows _self;
  final $Res Function(_Rows) _then;

/// Create a copy of Rows
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productName = null,Object? packUnitId = freezed,Object? unitLabel = null,Object? rate = freezed,Object? previous = freezed,}) {
  return _then(_Rows(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,packUnitId: freezed == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String?,unitLabel: null == unitLabel ? _self.unitLabel : unitLabel // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as Previous?,
  ));
}

/// Create a copy of Rows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreviousCopyWith<$Res>? get previous {
    if (_self.previous == null) {
    return null;
  }

  return $PreviousCopyWith<$Res>(_self.previous!, (value) {
    return _then(_self.copyWith(previous: value));
  });
}
}

// dart format on
