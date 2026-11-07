// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'by_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ByUnit {

 Unit get unit; String get quantity;
/// Create a copy of ByUnit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ByUnitCopyWith<ByUnit> get copyWith => _$ByUnitCopyWithImpl<ByUnit>(this as ByUnit, _$identity);

  /// Serializes this ByUnit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ByUnit;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ByUnit&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ByUnit;
  return Object.hash(runtimeType,_this.unit,_this.quantity);
}

@override
String toString() {
  final _this = this as ByUnit;
  return 'ByUnit(unit: ${_this.unit}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $ByUnitCopyWith<$Res>  {
  factory $ByUnitCopyWith(ByUnit value, $Res Function(ByUnit) _then) = _$ByUnitCopyWithImpl;
@useResult
$Res call({
 Unit unit, String quantity
});




}
/// @nodoc
class _$ByUnitCopyWithImpl<$Res>
    implements $ByUnitCopyWith<$Res> {
  _$ByUnitCopyWithImpl(this._self, this._then);

  final ByUnit _self;
  final $Res Function(ByUnit) _then;

/// Create a copy of ByUnit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unit = null,Object? quantity = null,}) {
  return _then(ByUnit(
unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ByUnit].
extension ByUnitPatterns on ByUnit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ByUnit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ByUnit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ByUnit value)  $default,){
final _that = this;
switch (_that) {
case _ByUnit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ByUnit value)?  $default,){
final _that = this;
switch (_that) {
case _ByUnit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Unit unit,  String quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ByUnit() when $default != null:
return $default(_that.unit,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Unit unit,  String quantity)  $default,) {final _that = this;
switch (_that) {
case _ByUnit():
return $default(_that.unit,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Unit unit,  String quantity)?  $default,) {final _that = this;
switch (_that) {
case _ByUnit() when $default != null:
return $default(_that.unit,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ByUnit implements ByUnit {
  const _ByUnit({required this.unit, required this.quantity});
  factory _ByUnit.fromJson(Map<String, dynamic> json) => _$ByUnitFromJson(json);

@override final  Unit unit;
@override final  String quantity;

/// Create a copy of ByUnit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ByUnitCopyWith<_ByUnit> get copyWith => __$ByUnitCopyWithImpl<_ByUnit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ByUnitToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ByUnit&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,unit,quantity);
}

@override
String toString() {
    return 'ByUnit(unit: $unit, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ByUnitCopyWith<$Res> implements $ByUnitCopyWith<$Res> {
  factory _$ByUnitCopyWith(_ByUnit value, $Res Function(_ByUnit) _then) = __$ByUnitCopyWithImpl;
@override @useResult
$Res call({
 Unit unit, String quantity
});




}
/// @nodoc
class __$ByUnitCopyWithImpl<$Res>
    implements _$ByUnitCopyWith<$Res> {
  __$ByUnitCopyWithImpl(this._self, this._then);

  final _ByUnit _self;
  final $Res Function(_ByUnit) _then;

/// Create a copy of ByUnit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unit = null,Object? quantity = null,}) {
  return _then(_ByUnit(
unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
