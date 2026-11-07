// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_return_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierReturnPageDtoOutput {

 List<SupplierReturnDtoOutput> get items; String? get nextCursor;
/// Create a copy of SupplierReturnPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierReturnPageDtoOutputCopyWith<SupplierReturnPageDtoOutput> get copyWith => _$SupplierReturnPageDtoOutputCopyWithImpl<SupplierReturnPageDtoOutput>(this as SupplierReturnPageDtoOutput, _$identity);

  /// Serializes this SupplierReturnPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupplierReturnPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierReturnPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupplierReturnPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as SupplierReturnPageDtoOutput;
  return 'SupplierReturnPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $SupplierReturnPageDtoOutputCopyWith<$Res>  {
  factory $SupplierReturnPageDtoOutputCopyWith(SupplierReturnPageDtoOutput value, $Res Function(SupplierReturnPageDtoOutput) _then) = _$SupplierReturnPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<SupplierReturnDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$SupplierReturnPageDtoOutputCopyWithImpl<$Res>
    implements $SupplierReturnPageDtoOutputCopyWith<$Res> {
  _$SupplierReturnPageDtoOutputCopyWithImpl(this._self, this._then);

  final SupplierReturnPageDtoOutput _self;
  final $Res Function(SupplierReturnPageDtoOutput) _then;

/// Create a copy of SupplierReturnPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(SupplierReturnPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SupplierReturnDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupplierReturnPageDtoOutput].
extension SupplierReturnPageDtoOutputPatterns on SupplierReturnPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupplierReturnPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupplierReturnPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupplierReturnPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupplierReturnPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupplierReturnPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupplierReturnPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SupplierReturnDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupplierReturnPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SupplierReturnDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _SupplierReturnPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SupplierReturnDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _SupplierReturnPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupplierReturnPageDtoOutput implements SupplierReturnPageDtoOutput {
  const _SupplierReturnPageDtoOutput({required  List<SupplierReturnDtoOutput> items, required this.nextCursor}): _items = items;
  factory _SupplierReturnPageDtoOutput.fromJson(Map<String, dynamic> json) => _$SupplierReturnPageDtoOutputFromJson(json);

 final  List<SupplierReturnDtoOutput> _items;
@override List<SupplierReturnDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of SupplierReturnPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierReturnPageDtoOutputCopyWith<_SupplierReturnPageDtoOutput> get copyWith => __$SupplierReturnPageDtoOutputCopyWithImpl<_SupplierReturnPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierReturnPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierReturnPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'SupplierReturnPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$SupplierReturnPageDtoOutputCopyWith<$Res> implements $SupplierReturnPageDtoOutputCopyWith<$Res> {
  factory _$SupplierReturnPageDtoOutputCopyWith(_SupplierReturnPageDtoOutput value, $Res Function(_SupplierReturnPageDtoOutput) _then) = __$SupplierReturnPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<SupplierReturnDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$SupplierReturnPageDtoOutputCopyWithImpl<$Res>
    implements _$SupplierReturnPageDtoOutputCopyWith<$Res> {
  __$SupplierReturnPageDtoOutputCopyWithImpl(this._self, this._then);

  final _SupplierReturnPageDtoOutput _self;
  final $Res Function(_SupplierReturnPageDtoOutput) _then;

/// Create a copy of SupplierReturnPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_SupplierReturnPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SupplierReturnDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
