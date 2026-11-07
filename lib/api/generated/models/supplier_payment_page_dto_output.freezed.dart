// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_payment_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierPaymentPageDtoOutput {

 List<SupplierPaymentDtoOutput> get items; String? get nextCursor;
/// Create a copy of SupplierPaymentPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierPaymentPageDtoOutputCopyWith<SupplierPaymentPageDtoOutput> get copyWith => _$SupplierPaymentPageDtoOutputCopyWithImpl<SupplierPaymentPageDtoOutput>(this as SupplierPaymentPageDtoOutput, _$identity);

  /// Serializes this SupplierPaymentPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupplierPaymentPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierPaymentPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupplierPaymentPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as SupplierPaymentPageDtoOutput;
  return 'SupplierPaymentPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $SupplierPaymentPageDtoOutputCopyWith<$Res>  {
  factory $SupplierPaymentPageDtoOutputCopyWith(SupplierPaymentPageDtoOutput value, $Res Function(SupplierPaymentPageDtoOutput) _then) = _$SupplierPaymentPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<SupplierPaymentDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$SupplierPaymentPageDtoOutputCopyWithImpl<$Res>
    implements $SupplierPaymentPageDtoOutputCopyWith<$Res> {
  _$SupplierPaymentPageDtoOutputCopyWithImpl(this._self, this._then);

  final SupplierPaymentPageDtoOutput _self;
  final $Res Function(SupplierPaymentPageDtoOutput) _then;

/// Create a copy of SupplierPaymentPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(SupplierPaymentPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SupplierPaymentDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupplierPaymentPageDtoOutput].
extension SupplierPaymentPageDtoOutputPatterns on SupplierPaymentPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupplierPaymentPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupplierPaymentPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupplierPaymentPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupplierPaymentPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupplierPaymentPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupplierPaymentPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SupplierPaymentDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupplierPaymentPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SupplierPaymentDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _SupplierPaymentPageDtoOutput():
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SupplierPaymentDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _SupplierPaymentPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupplierPaymentPageDtoOutput implements SupplierPaymentPageDtoOutput {
  const _SupplierPaymentPageDtoOutput({required  List<SupplierPaymentDtoOutput> items, required this.nextCursor}): _items = items;
  factory _SupplierPaymentPageDtoOutput.fromJson(Map<String, dynamic> json) => _$SupplierPaymentPageDtoOutputFromJson(json);

 final  List<SupplierPaymentDtoOutput> _items;
@override List<SupplierPaymentDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of SupplierPaymentPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierPaymentPageDtoOutputCopyWith<_SupplierPaymentPageDtoOutput> get copyWith => __$SupplierPaymentPageDtoOutputCopyWithImpl<_SupplierPaymentPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierPaymentPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierPaymentPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'SupplierPaymentPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$SupplierPaymentPageDtoOutputCopyWith<$Res> implements $SupplierPaymentPageDtoOutputCopyWith<$Res> {
  factory _$SupplierPaymentPageDtoOutputCopyWith(_SupplierPaymentPageDtoOutput value, $Res Function(_SupplierPaymentPageDtoOutput) _then) = __$SupplierPaymentPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<SupplierPaymentDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$SupplierPaymentPageDtoOutputCopyWithImpl<$Res>
    implements _$SupplierPaymentPageDtoOutputCopyWith<$Res> {
  __$SupplierPaymentPageDtoOutputCopyWithImpl(this._self, this._then);

  final _SupplierPaymentPageDtoOutput _self;
  final $Res Function(_SupplierPaymentPageDtoOutput) _then;

/// Create a copy of SupplierPaymentPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_SupplierPaymentPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SupplierPaymentDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
