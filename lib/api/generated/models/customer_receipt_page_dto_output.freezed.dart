// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_receipt_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerReceiptPageDtoOutput {

 List<CustomerReceiptDtoOutput> get items; int get total; String? get nextCursor;
/// Create a copy of CustomerReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerReceiptPageDtoOutputCopyWith<CustomerReceiptPageDtoOutput> get copyWith => _$CustomerReceiptPageDtoOutputCopyWithImpl<CustomerReceiptPageDtoOutput>(this as CustomerReceiptPageDtoOutput, _$identity);

  /// Serializes this CustomerReceiptPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CustomerReceiptPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerReceiptPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CustomerReceiptPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.total,_this.nextCursor);
}

@override
String toString() {
  final _this = this as CustomerReceiptPageDtoOutput;
  return 'CustomerReceiptPageDtoOutput(items: ${_this.items}, total: ${_this.total}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $CustomerReceiptPageDtoOutputCopyWith<$Res>  {
  factory $CustomerReceiptPageDtoOutputCopyWith(CustomerReceiptPageDtoOutput value, $Res Function(CustomerReceiptPageDtoOutput) _then) = _$CustomerReceiptPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<CustomerReceiptDtoOutput> items, int total, String? nextCursor
});




}
/// @nodoc
class _$CustomerReceiptPageDtoOutputCopyWithImpl<$Res>
    implements $CustomerReceiptPageDtoOutputCopyWith<$Res> {
  _$CustomerReceiptPageDtoOutputCopyWithImpl(this._self, this._then);

  final CustomerReceiptPageDtoOutput _self;
  final $Res Function(CustomerReceiptPageDtoOutput) _then;

/// Create a copy of CustomerReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,}) {
  return _then(CustomerReceiptPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CustomerReceiptDtoOutput>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerReceiptPageDtoOutput].
extension CustomerReceiptPageDtoOutputPatterns on CustomerReceiptPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerReceiptPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerReceiptPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerReceiptPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _CustomerReceiptPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerReceiptPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerReceiptPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CustomerReceiptDtoOutput> items,  int total,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerReceiptPageDtoOutput() when $default != null:
return $default(_that.items,_that.total,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CustomerReceiptDtoOutput> items,  int total,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _CustomerReceiptPageDtoOutput():
return $default(_that.items,_that.total,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CustomerReceiptDtoOutput> items,  int total,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _CustomerReceiptPageDtoOutput() when $default != null:
return $default(_that.items,_that.total,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerReceiptPageDtoOutput implements CustomerReceiptPageDtoOutput {
  const _CustomerReceiptPageDtoOutput({required  List<CustomerReceiptDtoOutput> items, required this.total, required this.nextCursor}): _items = items;
  factory _CustomerReceiptPageDtoOutput.fromJson(Map<String, dynamic> json) => _$CustomerReceiptPageDtoOutputFromJson(json);

 final  List<CustomerReceiptDtoOutput> _items;
@override List<CustomerReceiptDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override final  String? nextCursor;

/// Create a copy of CustomerReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerReceiptPageDtoOutputCopyWith<_CustomerReceiptPageDtoOutput> get copyWith => __$CustomerReceiptPageDtoOutputCopyWithImpl<_CustomerReceiptPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerReceiptPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerReceiptPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,nextCursor);
}

@override
String toString() {
    return 'CustomerReceiptPageDtoOutput(items: $items, total: $total, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$CustomerReceiptPageDtoOutputCopyWith<$Res> implements $CustomerReceiptPageDtoOutputCopyWith<$Res> {
  factory _$CustomerReceiptPageDtoOutputCopyWith(_CustomerReceiptPageDtoOutput value, $Res Function(_CustomerReceiptPageDtoOutput) _then) = __$CustomerReceiptPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<CustomerReceiptDtoOutput> items, int total, String? nextCursor
});




}
/// @nodoc
class __$CustomerReceiptPageDtoOutputCopyWithImpl<$Res>
    implements _$CustomerReceiptPageDtoOutputCopyWith<$Res> {
  __$CustomerReceiptPageDtoOutputCopyWithImpl(this._self, this._then);

  final _CustomerReceiptPageDtoOutput _self;
  final $Res Function(_CustomerReceiptPageDtoOutput) _then;

/// Create a copy of CustomerReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,}) {
  return _then(_CustomerReceiptPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CustomerReceiptDtoOutput>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
