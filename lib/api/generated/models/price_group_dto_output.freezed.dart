// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_group_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceGroupDtoOutput {

 String get id; String get name; PriceGroupDtoOutputAdjustmentType get adjustmentType; int get value; bool get active;
/// Create a copy of PriceGroupDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceGroupDtoOutputCopyWith<PriceGroupDtoOutput> get copyWith => _$PriceGroupDtoOutputCopyWithImpl<PriceGroupDtoOutput>(this as PriceGroupDtoOutput, _$identity);

  /// Serializes this PriceGroupDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PriceGroupDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceGroupDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.adjustmentType, _this.adjustmentType) || other.adjustmentType == _this.adjustmentType)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PriceGroupDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.name,_this.adjustmentType,_this.value,_this.active);
}

@override
String toString() {
  final _this = this as PriceGroupDtoOutput;
  return 'PriceGroupDtoOutput(id: ${_this.id}, name: ${_this.name}, adjustmentType: ${_this.adjustmentType}, value: ${_this.value}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $PriceGroupDtoOutputCopyWith<$Res>  {
  factory $PriceGroupDtoOutputCopyWith(PriceGroupDtoOutput value, $Res Function(PriceGroupDtoOutput) _then) = _$PriceGroupDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String name, PriceGroupDtoOutputAdjustmentType adjustmentType, int value, bool active
});




}
/// @nodoc
class _$PriceGroupDtoOutputCopyWithImpl<$Res>
    implements $PriceGroupDtoOutputCopyWith<$Res> {
  _$PriceGroupDtoOutputCopyWithImpl(this._self, this._then);

  final PriceGroupDtoOutput _self;
  final $Res Function(PriceGroupDtoOutput) _then;

/// Create a copy of PriceGroupDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? adjustmentType = null,Object? value = null,Object? active = null,}) {
  return _then(PriceGroupDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,adjustmentType: null == adjustmentType ? _self.adjustmentType : adjustmentType // ignore: cast_nullable_to_non_nullable
as PriceGroupDtoOutputAdjustmentType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceGroupDtoOutput].
extension PriceGroupDtoOutputPatterns on PriceGroupDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceGroupDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceGroupDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceGroupDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _PriceGroupDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceGroupDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _PriceGroupDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  PriceGroupDtoOutputAdjustmentType adjustmentType,  int value,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceGroupDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.adjustmentType,_that.value,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  PriceGroupDtoOutputAdjustmentType adjustmentType,  int value,  bool active)  $default,) {final _that = this;
switch (_that) {
case _PriceGroupDtoOutput():
return $default(_that.id,_that.name,_that.adjustmentType,_that.value,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  PriceGroupDtoOutputAdjustmentType adjustmentType,  int value,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _PriceGroupDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.adjustmentType,_that.value,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceGroupDtoOutput implements PriceGroupDtoOutput {
  const _PriceGroupDtoOutput({required this.id, required this.name, required this.adjustmentType, required this.value, required this.active});
  factory _PriceGroupDtoOutput.fromJson(Map<String, dynamic> json) => _$PriceGroupDtoOutputFromJson(json);

@override final  String id;
@override final  String name;
@override final  PriceGroupDtoOutputAdjustmentType adjustmentType;
@override final  int value;
@override final  bool active;

/// Create a copy of PriceGroupDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceGroupDtoOutputCopyWith<_PriceGroupDtoOutput> get copyWith => __$PriceGroupDtoOutputCopyWithImpl<_PriceGroupDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceGroupDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceGroupDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.adjustmentType, adjustmentType) || other.adjustmentType == adjustmentType)&&(identical(other.value, value) || other.value == value)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,adjustmentType,value,active);
}

@override
String toString() {
    return 'PriceGroupDtoOutput(id: $id, name: $name, adjustmentType: $adjustmentType, value: $value, active: $active)';
}


}

/// @nodoc
abstract mixin class _$PriceGroupDtoOutputCopyWith<$Res> implements $PriceGroupDtoOutputCopyWith<$Res> {
  factory _$PriceGroupDtoOutputCopyWith(_PriceGroupDtoOutput value, $Res Function(_PriceGroupDtoOutput) _then) = __$PriceGroupDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PriceGroupDtoOutputAdjustmentType adjustmentType, int value, bool active
});




}
/// @nodoc
class __$PriceGroupDtoOutputCopyWithImpl<$Res>
    implements _$PriceGroupDtoOutputCopyWith<$Res> {
  __$PriceGroupDtoOutputCopyWithImpl(this._self, this._then);

  final _PriceGroupDtoOutput _self;
  final $Res Function(_PriceGroupDtoOutput) _then;

/// Create a copy of PriceGroupDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? adjustmentType = null,Object? value = null,Object? active = null,}) {
  return _then(_PriceGroupDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,adjustmentType: null == adjustmentType ? _self.adjustmentType : adjustmentType // ignore: cast_nullable_to_non_nullable
as PriceGroupDtoOutputAdjustmentType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
