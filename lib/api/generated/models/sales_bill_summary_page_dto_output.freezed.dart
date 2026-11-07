// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_bill_summary_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesBillSummaryPageDtoOutput {

 List<SalesBillSummaryDtoOutput> get items; int get total; String? get nextCursor;
/// Create a copy of SalesBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesBillSummaryPageDtoOutputCopyWith<SalesBillSummaryPageDtoOutput> get copyWith => _$SalesBillSummaryPageDtoOutputCopyWithImpl<SalesBillSummaryPageDtoOutput>(this as SalesBillSummaryPageDtoOutput, _$identity);

  /// Serializes this SalesBillSummaryPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalesBillSummaryPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalesBillSummaryPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.total,_this.nextCursor);
}

@override
String toString() {
  final _this = this as SalesBillSummaryPageDtoOutput;
  return 'SalesBillSummaryPageDtoOutput(items: ${_this.items}, total: ${_this.total}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $SalesBillSummaryPageDtoOutputCopyWith<$Res>  {
  factory $SalesBillSummaryPageDtoOutputCopyWith(SalesBillSummaryPageDtoOutput value, $Res Function(SalesBillSummaryPageDtoOutput) _then) = _$SalesBillSummaryPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<SalesBillSummaryDtoOutput> items, int total, String? nextCursor
});




}
/// @nodoc
class _$SalesBillSummaryPageDtoOutputCopyWithImpl<$Res>
    implements $SalesBillSummaryPageDtoOutputCopyWith<$Res> {
  _$SalesBillSummaryPageDtoOutputCopyWithImpl(this._self, this._then);

  final SalesBillSummaryPageDtoOutput _self;
  final $Res Function(SalesBillSummaryPageDtoOutput) _then;

/// Create a copy of SalesBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,}) {
  return _then(SalesBillSummaryPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SalesBillSummaryDtoOutput>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesBillSummaryPageDtoOutput].
extension SalesBillSummaryPageDtoOutputPatterns on SalesBillSummaryPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesBillSummaryPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesBillSummaryPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesBillSummaryPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SalesBillSummaryPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesBillSummaryPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SalesBillSummaryPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SalesBillSummaryDtoOutput> items,  int total,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesBillSummaryPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SalesBillSummaryDtoOutput> items,  int total,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _SalesBillSummaryPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SalesBillSummaryDtoOutput> items,  int total,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _SalesBillSummaryPageDtoOutput() when $default != null:
return $default(_that.items,_that.total,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesBillSummaryPageDtoOutput implements SalesBillSummaryPageDtoOutput {
  const _SalesBillSummaryPageDtoOutput({required  List<SalesBillSummaryDtoOutput> items, required this.total, required this.nextCursor}): _items = items;
  factory _SalesBillSummaryPageDtoOutput.fromJson(Map<String, dynamic> json) => _$SalesBillSummaryPageDtoOutputFromJson(json);

 final  List<SalesBillSummaryDtoOutput> _items;
@override List<SalesBillSummaryDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override final  String? nextCursor;

/// Create a copy of SalesBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesBillSummaryPageDtoOutputCopyWith<_SalesBillSummaryPageDtoOutput> get copyWith => __$SalesBillSummaryPageDtoOutputCopyWithImpl<_SalesBillSummaryPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesBillSummaryPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesBillSummaryPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,nextCursor);
}

@override
String toString() {
    return 'SalesBillSummaryPageDtoOutput(items: $items, total: $total, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$SalesBillSummaryPageDtoOutputCopyWith<$Res> implements $SalesBillSummaryPageDtoOutputCopyWith<$Res> {
  factory _$SalesBillSummaryPageDtoOutputCopyWith(_SalesBillSummaryPageDtoOutput value, $Res Function(_SalesBillSummaryPageDtoOutput) _then) = __$SalesBillSummaryPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<SalesBillSummaryDtoOutput> items, int total, String? nextCursor
});




}
/// @nodoc
class __$SalesBillSummaryPageDtoOutputCopyWithImpl<$Res>
    implements _$SalesBillSummaryPageDtoOutputCopyWith<$Res> {
  __$SalesBillSummaryPageDtoOutputCopyWithImpl(this._self, this._then);

  final _SalesBillSummaryPageDtoOutput _self;
  final $Res Function(_SalesBillSummaryPageDtoOutput) _then;

/// Create a copy of SalesBillSummaryPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? nextCursor = freezed,}) {
  return _then(_SalesBillSummaryPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SalesBillSummaryDtoOutput>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
