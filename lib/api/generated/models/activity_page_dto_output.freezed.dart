// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityPageDtoOutput {

 List<Items> get items; String? get nextCursor;
/// Create a copy of ActivityPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityPageDtoOutputCopyWith<ActivityPageDtoOutput> get copyWith => _$ActivityPageDtoOutputCopyWithImpl<ActivityPageDtoOutput>(this as ActivityPageDtoOutput, _$identity);

  /// Serializes this ActivityPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as ActivityPageDtoOutput;
  return 'ActivityPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $ActivityPageDtoOutputCopyWith<$Res>  {
  factory $ActivityPageDtoOutputCopyWith(ActivityPageDtoOutput value, $Res Function(ActivityPageDtoOutput) _then) = _$ActivityPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<Items> items, String? nextCursor
});




}
/// @nodoc
class _$ActivityPageDtoOutputCopyWithImpl<$Res>
    implements $ActivityPageDtoOutputCopyWith<$Res> {
  _$ActivityPageDtoOutputCopyWithImpl(this._self, this._then);

  final ActivityPageDtoOutput _self;
  final $Res Function(ActivityPageDtoOutput) _then;

/// Create a copy of ActivityPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(ActivityPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Items>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityPageDtoOutput].
extension ActivityPageDtoOutputPatterns on ActivityPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ActivityPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Items> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Items> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ActivityPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Items> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ActivityPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityPageDtoOutput implements ActivityPageDtoOutput {
  const _ActivityPageDtoOutput({required  List<Items> items, required this.nextCursor}): _items = items;
  factory _ActivityPageDtoOutput.fromJson(Map<String, dynamic> json) => _$ActivityPageDtoOutputFromJson(json);

 final  List<Items> _items;
@override List<Items> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ActivityPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityPageDtoOutputCopyWith<_ActivityPageDtoOutput> get copyWith => __$ActivityPageDtoOutputCopyWithImpl<_ActivityPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'ActivityPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ActivityPageDtoOutputCopyWith<$Res> implements $ActivityPageDtoOutputCopyWith<$Res> {
  factory _$ActivityPageDtoOutputCopyWith(_ActivityPageDtoOutput value, $Res Function(_ActivityPageDtoOutput) _then) = __$ActivityPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<Items> items, String? nextCursor
});




}
/// @nodoc
class __$ActivityPageDtoOutputCopyWithImpl<$Res>
    implements _$ActivityPageDtoOutputCopyWith<$Res> {
  __$ActivityPageDtoOutputCopyWithImpl(this._self, this._then);

  final _ActivityPageDtoOutput _self;
  final $Res Function(_ActivityPageDtoOutput) _then;

/// Create a copy of ActivityPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ActivityPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Items>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
