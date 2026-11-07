// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_page_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApprovalPageDtoOutput {

 List<ApprovalDtoOutput> get items; String? get nextCursor;
/// Create a copy of ApprovalPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApprovalPageDtoOutputCopyWith<ApprovalPageDtoOutput> get copyWith => _$ApprovalPageDtoOutputCopyWithImpl<ApprovalPageDtoOutput>(this as ApprovalPageDtoOutput, _$identity);

  /// Serializes this ApprovalPageDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApprovalPageDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApprovalPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApprovalPageDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor);
}

@override
String toString() {
  final _this = this as ApprovalPageDtoOutput;
  return 'ApprovalPageDtoOutput(items: ${_this.items}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $ApprovalPageDtoOutputCopyWith<$Res>  {
  factory $ApprovalPageDtoOutputCopyWith(ApprovalPageDtoOutput value, $Res Function(ApprovalPageDtoOutput) _then) = _$ApprovalPageDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<ApprovalDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class _$ApprovalPageDtoOutputCopyWithImpl<$Res>
    implements $ApprovalPageDtoOutputCopyWith<$Res> {
  _$ApprovalPageDtoOutputCopyWithImpl(this._self, this._then);

  final ApprovalPageDtoOutput _self;
  final $Res Function(ApprovalPageDtoOutput) _then;

/// Create a copy of ApprovalPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(ApprovalPageDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ApprovalDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApprovalPageDtoOutput].
extension ApprovalPageDtoOutputPatterns on ApprovalPageDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApprovalPageDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApprovalPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApprovalPageDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ApprovalPageDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApprovalPageDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ApprovalPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ApprovalDtoOutput> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApprovalPageDtoOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ApprovalDtoOutput> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ApprovalPageDtoOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ApprovalDtoOutput> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ApprovalPageDtoOutput() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApprovalPageDtoOutput implements ApprovalPageDtoOutput {
  const _ApprovalPageDtoOutput({required  List<ApprovalDtoOutput> items, required this.nextCursor}): _items = items;
  factory _ApprovalPageDtoOutput.fromJson(Map<String, dynamic> json) => _$ApprovalPageDtoOutputFromJson(json);

 final  List<ApprovalDtoOutput> _items;
@override List<ApprovalDtoOutput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ApprovalPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApprovalPageDtoOutputCopyWith<_ApprovalPageDtoOutput> get copyWith => __$ApprovalPageDtoOutputCopyWithImpl<_ApprovalPageDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApprovalPageDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApprovalPageDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);
}

@override
String toString() {
    return 'ApprovalPageDtoOutput(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ApprovalPageDtoOutputCopyWith<$Res> implements $ApprovalPageDtoOutputCopyWith<$Res> {
  factory _$ApprovalPageDtoOutputCopyWith(_ApprovalPageDtoOutput value, $Res Function(_ApprovalPageDtoOutput) _then) = __$ApprovalPageDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<ApprovalDtoOutput> items, String? nextCursor
});




}
/// @nodoc
class __$ApprovalPageDtoOutputCopyWithImpl<$Res>
    implements _$ApprovalPageDtoOutputCopyWith<$Res> {
  __$ApprovalPageDtoOutputCopyWithImpl(this._self, this._then);

  final _ApprovalPageDtoOutput _self;
  final $Res Function(_ApprovalPageDtoOutput) _then;

/// Create a copy of ApprovalPageDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ApprovalPageDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ApprovalDtoOutput>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
