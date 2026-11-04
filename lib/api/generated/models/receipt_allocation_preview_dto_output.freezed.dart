// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_allocation_preview_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReceiptAllocationPreviewDtoOutput {

 List<OpenBills2> get openBills; List<Allocations7> get allocations; int get advance; int get existingAdvance;
/// Create a copy of ReceiptAllocationPreviewDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptAllocationPreviewDtoOutputCopyWith<ReceiptAllocationPreviewDtoOutput> get copyWith => _$ReceiptAllocationPreviewDtoOutputCopyWithImpl<ReceiptAllocationPreviewDtoOutput>(this as ReceiptAllocationPreviewDtoOutput, _$identity);

  /// Serializes this ReceiptAllocationPreviewDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReceiptAllocationPreviewDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptAllocationPreviewDtoOutput&&const DeepCollectionEquality().equals(other.openBills, _this.openBills)&&const DeepCollectionEquality().equals(other.allocations, _this.allocations)&&(identical(other.advance, _this.advance) || other.advance == _this.advance)&&(identical(other.existingAdvance, _this.existingAdvance) || other.existingAdvance == _this.existingAdvance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReceiptAllocationPreviewDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.openBills),const DeepCollectionEquality().hash(_this.allocations),_this.advance,_this.existingAdvance);
}

@override
String toString() {
  final _this = this as ReceiptAllocationPreviewDtoOutput;
  return 'ReceiptAllocationPreviewDtoOutput(openBills: ${_this.openBills}, allocations: ${_this.allocations}, advance: ${_this.advance}, existingAdvance: ${_this.existingAdvance})';
}


}

/// @nodoc
abstract mixin class $ReceiptAllocationPreviewDtoOutputCopyWith<$Res>  {
  factory $ReceiptAllocationPreviewDtoOutputCopyWith(ReceiptAllocationPreviewDtoOutput value, $Res Function(ReceiptAllocationPreviewDtoOutput) _then) = _$ReceiptAllocationPreviewDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<OpenBills2> openBills, List<Allocations7> allocations, int advance, int existingAdvance
});




}
/// @nodoc
class _$ReceiptAllocationPreviewDtoOutputCopyWithImpl<$Res>
    implements $ReceiptAllocationPreviewDtoOutputCopyWith<$Res> {
  _$ReceiptAllocationPreviewDtoOutputCopyWithImpl(this._self, this._then);

  final ReceiptAllocationPreviewDtoOutput _self;
  final $Res Function(ReceiptAllocationPreviewDtoOutput) _then;

/// Create a copy of ReceiptAllocationPreviewDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openBills = null,Object? allocations = null,Object? advance = null,Object? existingAdvance = null,}) {
  return _then(ReceiptAllocationPreviewDtoOutput(
openBills: null == openBills ? _self.openBills : openBills // ignore: cast_nullable_to_non_nullable
as List<OpenBills2>,allocations: null == allocations ? _self.allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations7>,advance: null == advance ? _self.advance : advance // ignore: cast_nullable_to_non_nullable
as int,existingAdvance: null == existingAdvance ? _self.existingAdvance : existingAdvance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceiptAllocationPreviewDtoOutput].
extension ReceiptAllocationPreviewDtoOutputPatterns on ReceiptAllocationPreviewDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptAllocationPreviewDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptAllocationPreviewDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptAllocationPreviewDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptAllocationPreviewDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptAllocationPreviewDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptAllocationPreviewDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OpenBills2> openBills,  List<Allocations7> allocations,  int advance,  int existingAdvance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptAllocationPreviewDtoOutput() when $default != null:
return $default(_that.openBills,_that.allocations,_that.advance,_that.existingAdvance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OpenBills2> openBills,  List<Allocations7> allocations,  int advance,  int existingAdvance)  $default,) {final _that = this;
switch (_that) {
case _ReceiptAllocationPreviewDtoOutput():
return $default(_that.openBills,_that.allocations,_that.advance,_that.existingAdvance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OpenBills2> openBills,  List<Allocations7> allocations,  int advance,  int existingAdvance)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptAllocationPreviewDtoOutput() when $default != null:
return $default(_that.openBills,_that.allocations,_that.advance,_that.existingAdvance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptAllocationPreviewDtoOutput implements ReceiptAllocationPreviewDtoOutput {
  const _ReceiptAllocationPreviewDtoOutput({required  List<OpenBills2> openBills, required  List<Allocations7> allocations, required this.advance, required this.existingAdvance}): _openBills = openBills,_allocations = allocations;
  factory _ReceiptAllocationPreviewDtoOutput.fromJson(Map<String, dynamic> json) => _$ReceiptAllocationPreviewDtoOutputFromJson(json);

 final  List<OpenBills2> _openBills;
@override List<OpenBills2> get openBills {
  if (_openBills is EqualUnmodifiableListView) return _openBills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openBills);
}

 final  List<Allocations7> _allocations;
@override List<Allocations7> get allocations {
  if (_allocations is EqualUnmodifiableListView) return _allocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allocations);
}

@override final  int advance;
@override final  int existingAdvance;

/// Create a copy of ReceiptAllocationPreviewDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptAllocationPreviewDtoOutputCopyWith<_ReceiptAllocationPreviewDtoOutput> get copyWith => __$ReceiptAllocationPreviewDtoOutputCopyWithImpl<_ReceiptAllocationPreviewDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptAllocationPreviewDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptAllocationPreviewDtoOutput&&const DeepCollectionEquality().equals(other.openBills, _openBills)&&const DeepCollectionEquality().equals(other.allocations, _allocations)&&(identical(other.advance, advance) || other.advance == advance)&&(identical(other.existingAdvance, existingAdvance) || other.existingAdvance == existingAdvance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_openBills),const DeepCollectionEquality().hash(_allocations),advance,existingAdvance);
}

@override
String toString() {
    return 'ReceiptAllocationPreviewDtoOutput(openBills: $openBills, allocations: $allocations, advance: $advance, existingAdvance: $existingAdvance)';
}


}

/// @nodoc
abstract mixin class _$ReceiptAllocationPreviewDtoOutputCopyWith<$Res> implements $ReceiptAllocationPreviewDtoOutputCopyWith<$Res> {
  factory _$ReceiptAllocationPreviewDtoOutputCopyWith(_ReceiptAllocationPreviewDtoOutput value, $Res Function(_ReceiptAllocationPreviewDtoOutput) _then) = __$ReceiptAllocationPreviewDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<OpenBills2> openBills, List<Allocations7> allocations, int advance, int existingAdvance
});




}
/// @nodoc
class __$ReceiptAllocationPreviewDtoOutputCopyWithImpl<$Res>
    implements _$ReceiptAllocationPreviewDtoOutputCopyWith<$Res> {
  __$ReceiptAllocationPreviewDtoOutputCopyWithImpl(this._self, this._then);

  final _ReceiptAllocationPreviewDtoOutput _self;
  final $Res Function(_ReceiptAllocationPreviewDtoOutput) _then;

/// Create a copy of ReceiptAllocationPreviewDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openBills = null,Object? allocations = null,Object? advance = null,Object? existingAdvance = null,}) {
  return _then(_ReceiptAllocationPreviewDtoOutput(
openBills: null == openBills ? _self._openBills : openBills // ignore: cast_nullable_to_non_nullable
as List<OpenBills2>,allocations: null == allocations ? _self._allocations : allocations // ignore: cast_nullable_to_non_nullable
as List<Allocations7>,advance: null == advance ? _self.advance : advance // ignore: cast_nullable_to_non_nullable
as int,existingAdvance: null == existingAdvance ? _self.existingAdvance : existingAdvance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
