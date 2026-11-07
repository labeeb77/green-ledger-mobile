// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_receipt_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoodsReceiptPageDtoOutput {

 List<GoodsReceiptDtoOutput> get items; String? get nextCursor;
/// Create a copy of GoodsReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsReceiptPageDtoOutputCopyWith<GoodsReceiptPageDtoOutput> get copyWith => _$GoodsReceiptPageDtoOutputCopyWithImpl<GoodsReceiptPageDtoOutput>(this as GoodsReceiptPageDtoOutput, _$identity);

  /// Serializes this GoodsReceiptPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GoodsReceiptPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodsReceiptPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GoodsReceiptPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as GoodsReceiptPageDtoOutput;
  return 'GoodsReceiptPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $GoodsReceiptPageDtoOutputCopyWith<$Res>  {
  factory $GoodsReceiptPageDtoOutputCopyWith(GoodsReceiptPageDtoOutput value, $Res Function(GoodsReceiptPageDtoOutput) _then) = _$GoodsReceiptPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<GoodsReceiptDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$GoodsReceiptPageDtoOutputCopyWithImpl<$Res>
    implements $GoodsReceiptPageDtoOutputCopyWith<$Res> {
  _$GoodsReceiptPageDtoOutputCopyWithImpl(this._self, this._then);

  final GoodsReceiptPageDtoOutput _self;
  final $Res Function(GoodsReceiptPageDtoOutput) _then;

/// Create a copy of GoodsReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(GoodsReceiptPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GoodsReceiptDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoodsReceiptPageDtoOutput].
extension GoodsReceiptPageDtoOutputPatterns on GoodsReceiptPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodsReceiptPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodsReceiptPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodsReceiptPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _GoodsReceiptPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodsReceiptPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GoodsReceiptPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GoodsReceiptDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodsReceiptPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GoodsReceiptDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _GoodsReceiptPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GoodsReceiptDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _GoodsReceiptPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoodsReceiptPageDtoOutput implements GoodsReceiptPageDtoOutput {
  const _GoodsReceiptPageDtoOutput({required  List<GoodsReceiptDtoOutput> items, required this.nextCursor}): _items = items;
  factory _GoodsReceiptPageDtoOutput.fromJson(Map<String, dynamic> json) => _$GoodsReceiptPageDtoOutputFromJson(json);

 final  List<GoodsReceiptDtoOutput> _items;
@override List<GoodsReceiptDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of GoodsReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodsReceiptPageDtoOutputCopyWith<_GoodsReceiptPageDtoOutput> get copyWith => __$GoodsReceiptPageDtoOutputCopyWithImpl<_GoodsReceiptPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoodsReceiptPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodsReceiptPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'GoodsReceiptPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$GoodsReceiptPageDtoOutputCopyWith<$Res> implements $GoodsReceiptPageDtoOutputCopyWith<$Res> {
  factory _$GoodsReceiptPageDtoOutputCopyWith(_GoodsReceiptPageDtoOutput value, $Res Function(_GoodsReceiptPageDtoOutput) _then) = __$GoodsReceiptPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<GoodsReceiptDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$GoodsReceiptPageDtoOutputCopyWithImpl<$Res>
    implements _$GoodsReceiptPageDtoOutputCopyWith<$Res> {
  __$GoodsReceiptPageDtoOutputCopyWithImpl(this._self, this._then);

  final _GoodsReceiptPageDtoOutput _self;
  final $Res Function(_GoodsReceiptPageDtoOutput) _then;

/// Create a copy of GoodsReceiptPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_GoodsReceiptPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GoodsReceiptDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
