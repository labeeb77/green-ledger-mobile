// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverPageDtoOutput {

 List<HandoverDtoOutput> get items; String? get nextCursor;
/// Create a copy of HandoverPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverPageDtoOutputCopyWith<HandoverPageDtoOutput> get copyWith => _$HandoverPageDtoOutputCopyWithImpl<HandoverPageDtoOutput>(this as HandoverPageDtoOutput, _$identity);

  /// Serializes this HandoverPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HandoverPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HandoverPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as HandoverPageDtoOutput;
  return 'HandoverPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $HandoverPageDtoOutputCopyWith<$Res>  {
  factory $HandoverPageDtoOutputCopyWith(HandoverPageDtoOutput value, $Res Function(HandoverPageDtoOutput) _then) = _$HandoverPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<HandoverDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$HandoverPageDtoOutputCopyWithImpl<$Res>
    implements $HandoverPageDtoOutputCopyWith<$Res> {
  _$HandoverPageDtoOutputCopyWithImpl(this._self, this._then);

  final HandoverPageDtoOutput _self;
  final $Res Function(HandoverPageDtoOutput) _then;

/// Create a copy of HandoverPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(HandoverPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<HandoverDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HandoverPageDtoOutput].
extension HandoverPageDtoOutputPatterns on HandoverPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _HandoverPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HandoverDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HandoverDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _HandoverPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HandoverDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _HandoverPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverPageDtoOutput implements HandoverPageDtoOutput {
  const _HandoverPageDtoOutput({required  List<HandoverDtoOutput> items, required this.nextCursor}): _items = items;
  factory _HandoverPageDtoOutput.fromJson(Map<String, dynamic> json) => _$HandoverPageDtoOutputFromJson(json);

 final  List<HandoverDtoOutput> _items;
@override List<HandoverDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of HandoverPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverPageDtoOutputCopyWith<_HandoverPageDtoOutput> get copyWith => __$HandoverPageDtoOutputCopyWithImpl<_HandoverPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'HandoverPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$HandoverPageDtoOutputCopyWith<$Res> implements $HandoverPageDtoOutputCopyWith<$Res> {
  factory _$HandoverPageDtoOutputCopyWith(_HandoverPageDtoOutput value, $Res Function(_HandoverPageDtoOutput) _then) = __$HandoverPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<HandoverDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$HandoverPageDtoOutputCopyWithImpl<$Res>
    implements _$HandoverPageDtoOutputCopyWith<$Res> {
  __$HandoverPageDtoOutputCopyWithImpl(this._self, this._then);

  final _HandoverPageDtoOutput _self;
  final $Res Function(_HandoverPageDtoOutput) _then;

/// Create a copy of HandoverPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_HandoverPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<HandoverDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
