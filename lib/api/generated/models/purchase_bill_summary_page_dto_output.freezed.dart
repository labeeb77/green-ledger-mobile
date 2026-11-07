// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_bill_summary_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseBillSummaryPageDtoOutput {

 List<PurchaseBillSummaryDtoOutput> get items; String? get nextCursor;
/// Create a copy of PurchaseBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseBillSummaryPageDtoOutputCopyWith<PurchaseBillSummaryPageDtoOutput> get copyWith => _$PurchaseBillSummaryPageDtoOutputCopyWithImpl<PurchaseBillSummaryPageDtoOutput>(this as PurchaseBillSummaryPageDtoOutput, _$identity);

  /// Serializes this PurchaseBillSummaryPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PurchaseBillSummaryPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseBillSummaryPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PurchaseBillSummaryPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as PurchaseBillSummaryPageDtoOutput;
  return 'PurchaseBillSummaryPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $PurchaseBillSummaryPageDtoOutputCopyWith<$Res>  {
  factory $PurchaseBillSummaryPageDtoOutputCopyWith(PurchaseBillSummaryPageDtoOutput value, $Res Function(PurchaseBillSummaryPageDtoOutput) _then) = _$PurchaseBillSummaryPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<PurchaseBillSummaryDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$PurchaseBillSummaryPageDtoOutputCopyWithImpl<$Res>
    implements $PurchaseBillSummaryPageDtoOutputCopyWith<$Res> {
  _$PurchaseBillSummaryPageDtoOutputCopyWithImpl(this._self, this._then);

  final PurchaseBillSummaryPageDtoOutput _self;
  final $Res Function(PurchaseBillSummaryPageDtoOutput) _then;

/// Create a copy of PurchaseBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(PurchaseBillSummaryPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PurchaseBillSummaryDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseBillSummaryPageDtoOutput].
extension PurchaseBillSummaryPageDtoOutputPatterns on PurchaseBillSummaryPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseBillSummaryPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseBillSummaryPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseBillSummaryPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseBillSummaryPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseBillSummaryPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseBillSummaryPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PurchaseBillSummaryDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseBillSummaryPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PurchaseBillSummaryDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _PurchaseBillSummaryPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PurchaseBillSummaryDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseBillSummaryPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseBillSummaryPageDtoOutput implements PurchaseBillSummaryPageDtoOutput {
  const _PurchaseBillSummaryPageDtoOutput({required  List<PurchaseBillSummaryDtoOutput> items, required this.nextCursor}): _items = items;
  factory _PurchaseBillSummaryPageDtoOutput.fromJson(Map<String, dynamic> json) => _$PurchaseBillSummaryPageDtoOutputFromJson(json);

 final  List<PurchaseBillSummaryDtoOutput> _items;
@override List<PurchaseBillSummaryDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of PurchaseBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseBillSummaryPageDtoOutputCopyWith<_PurchaseBillSummaryPageDtoOutput> get copyWith => __$PurchaseBillSummaryPageDtoOutputCopyWithImpl<_PurchaseBillSummaryPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseBillSummaryPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseBillSummaryPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'PurchaseBillSummaryPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$PurchaseBillSummaryPageDtoOutputCopyWith<$Res> implements $PurchaseBillSummaryPageDtoOutputCopyWith<$Res> {
  factory _$PurchaseBillSummaryPageDtoOutputCopyWith(_PurchaseBillSummaryPageDtoOutput value, $Res Function(_PurchaseBillSummaryPageDtoOutput) _then) = __$PurchaseBillSummaryPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<PurchaseBillSummaryDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$PurchaseBillSummaryPageDtoOutputCopyWithImpl<$Res>
    implements _$PurchaseBillSummaryPageDtoOutputCopyWith<$Res> {
  __$PurchaseBillSummaryPageDtoOutputCopyWithImpl(this._self, this._then);

  final _PurchaseBillSummaryPageDtoOutput _self;
  final $Res Function(_PurchaseBillSummaryPageDtoOutput) _then;

/// Create a copy of PurchaseBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_PurchaseBillSummaryPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PurchaseBillSummaryDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
