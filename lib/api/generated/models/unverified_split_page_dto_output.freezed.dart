// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unverified_split_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnverifiedSplitPageDtoOutput {

 List<UnverifiedSplitDtoOutput> get items; String? get nextCursor;
/// Create a copy of UnverifiedSplitPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnverifiedSplitPageDtoOutputCopyWith<UnverifiedSplitPageDtoOutput> get copyWith => _$UnverifiedSplitPageDtoOutputCopyWithImpl<UnverifiedSplitPageDtoOutput>(this as UnverifiedSplitPageDtoOutput, _$identity);

  /// Serializes this UnverifiedSplitPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UnverifiedSplitPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnverifiedSplitPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UnverifiedSplitPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as UnverifiedSplitPageDtoOutput;
  return 'UnverifiedSplitPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $UnverifiedSplitPageDtoOutputCopyWith<$Res>  {
  factory $UnverifiedSplitPageDtoOutputCopyWith(UnverifiedSplitPageDtoOutput value, $Res Function(UnverifiedSplitPageDtoOutput) _then) = _$UnverifiedSplitPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<UnverifiedSplitDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$UnverifiedSplitPageDtoOutputCopyWithImpl<$Res>
    implements $UnverifiedSplitPageDtoOutputCopyWith<$Res> {
  _$UnverifiedSplitPageDtoOutputCopyWithImpl(this._self, this._then);

  final UnverifiedSplitPageDtoOutput _self;
  final $Res Function(UnverifiedSplitPageDtoOutput) _then;

/// Create a copy of UnverifiedSplitPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(UnverifiedSplitPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UnverifiedSplitDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnverifiedSplitPageDtoOutput].
extension UnverifiedSplitPageDtoOutputPatterns on UnverifiedSplitPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnverifiedSplitPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnverifiedSplitPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnverifiedSplitPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _UnverifiedSplitPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnverifiedSplitPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _UnverifiedSplitPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UnverifiedSplitDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnverifiedSplitPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UnverifiedSplitDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _UnverifiedSplitPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UnverifiedSplitDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _UnverifiedSplitPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnverifiedSplitPageDtoOutput implements UnverifiedSplitPageDtoOutput {
  const _UnverifiedSplitPageDtoOutput({required  List<UnverifiedSplitDtoOutput> items, required this.nextCursor}): _items = items;
  factory _UnverifiedSplitPageDtoOutput.fromJson(Map<String, dynamic> json) => _$UnverifiedSplitPageDtoOutputFromJson(json);

 final  List<UnverifiedSplitDtoOutput> _items;
@override List<UnverifiedSplitDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of UnverifiedSplitPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnverifiedSplitPageDtoOutputCopyWith<_UnverifiedSplitPageDtoOutput> get copyWith => __$UnverifiedSplitPageDtoOutputCopyWithImpl<_UnverifiedSplitPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnverifiedSplitPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnverifiedSplitPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'UnverifiedSplitPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$UnverifiedSplitPageDtoOutputCopyWith<$Res> implements $UnverifiedSplitPageDtoOutputCopyWith<$Res> {
  factory _$UnverifiedSplitPageDtoOutputCopyWith(_UnverifiedSplitPageDtoOutput value, $Res Function(_UnverifiedSplitPageDtoOutput) _then) = __$UnverifiedSplitPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<UnverifiedSplitDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$UnverifiedSplitPageDtoOutputCopyWithImpl<$Res>
    implements _$UnverifiedSplitPageDtoOutputCopyWith<$Res> {
  __$UnverifiedSplitPageDtoOutputCopyWithImpl(this._self, this._then);

  final _UnverifiedSplitPageDtoOutput _self;
  final $Res Function(_UnverifiedSplitPageDtoOutput) _then;

/// Create a copy of UnverifiedSplitPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_UnverifiedSplitPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UnverifiedSplitDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
