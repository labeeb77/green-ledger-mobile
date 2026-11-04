// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_list_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseListDtoOutput {

 List<Items2> get items; int get total;
/// Create a copy of ExpenseListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseListDtoOutputCopyWith<ExpenseListDtoOutput> get copyWith => _$ExpenseListDtoOutputCopyWithImpl<ExpenseListDtoOutput>(this as ExpenseListDtoOutput, _$identity);

  /// Serializes this ExpenseListDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExpenseListDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseListDtoOutput&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExpenseListDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.total);
}

@override
String toString() {
  final _this = this as ExpenseListDtoOutput;
  return 'ExpenseListDtoOutput(items: ${_this.items}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $ExpenseListDtoOutputCopyWith<$Res>  {
  factory $ExpenseListDtoOutputCopyWith(ExpenseListDtoOutput value, $Res Function(ExpenseListDtoOutput) _then) = _$ExpenseListDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<Items2> items, int total
});




}
/// @nodoc
class _$ExpenseListDtoOutputCopyWithImpl<$Res>
    implements $ExpenseListDtoOutputCopyWith<$Res> {
  _$ExpenseListDtoOutputCopyWithImpl(this._self, this._then);

  final ExpenseListDtoOutput _self;
  final $Res Function(ExpenseListDtoOutput) _then;

/// Create a copy of ExpenseListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,}) {
  return _then(ExpenseListDtoOutput(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Items2>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpenseListDtoOutput].
extension ExpenseListDtoOutputPatterns on ExpenseListDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseListDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseListDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseListDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseListDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseListDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseListDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Items2> items,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseListDtoOutput() when $default != null:
return $default(_that.items,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Items2> items,  int total)  $default,) {final _that = this;
switch (_that) {
case _ExpenseListDtoOutput():
return $default(_that.items,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Items2> items,  int total)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseListDtoOutput() when $default != null:
return $default(_that.items,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpenseListDtoOutput implements ExpenseListDtoOutput {
  const _ExpenseListDtoOutput({required  List<Items2> items, required this.total}): _items = items;
  factory _ExpenseListDtoOutput.fromJson(Map<String, dynamic> json) => _$ExpenseListDtoOutputFromJson(json);

 final  List<Items2> _items;
@override List<Items2> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;

/// Create a copy of ExpenseListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseListDtoOutputCopyWith<_ExpenseListDtoOutput> get copyWith => __$ExpenseListDtoOutputCopyWithImpl<_ExpenseListDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseListDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseListDtoOutput&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total);
}

@override
String toString() {
    return 'ExpenseListDtoOutput(items: $items, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ExpenseListDtoOutputCopyWith<$Res> implements $ExpenseListDtoOutputCopyWith<$Res> {
  factory _$ExpenseListDtoOutputCopyWith(_ExpenseListDtoOutput value, $Res Function(_ExpenseListDtoOutput) _then) = __$ExpenseListDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<Items2> items, int total
});




}
/// @nodoc
class __$ExpenseListDtoOutputCopyWithImpl<$Res>
    implements _$ExpenseListDtoOutputCopyWith<$Res> {
  __$ExpenseListDtoOutputCopyWithImpl(this._self, this._then);

  final _ExpenseListDtoOutput _self;
  final $Res Function(_ExpenseListDtoOutput) _then;

/// Create a copy of ExpenseListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,}) {
  return _then(_ExpenseListDtoOutput(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Items2>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
