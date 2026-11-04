// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationListDtoOutput {

 int get unread; List<Items3> get items;
/// Create a copy of NotificationListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationListDtoOutputCopyWith<NotificationListDtoOutput> get copyWith => _$NotificationListDtoOutputCopyWithImpl<NotificationListDtoOutput>(this as NotificationListDtoOutput, _$identity);

  /// Serializes this NotificationListDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationListDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationListDtoOutput&&(identical(other.unread, _this.unread) || other.unread == _this.unread)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationListDtoOutput;
  return Object.hash(runtimeType,_this.unread,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as NotificationListDtoOutput;
  return 'NotificationListDtoOutput(unread: ${_this.unread}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $NotificationListDtoOutputCopyWith<$Res>  {
  factory $NotificationListDtoOutputCopyWith(NotificationListDtoOutput value, $Res Function(NotificationListDtoOutput) _then) = _$NotificationListDtoOutputCopyWithImpl;
@useResult
$Res call({
 int unread, List<Items3> items
});




}
/// @nodoc
class _$NotificationListDtoOutputCopyWithImpl<$Res>
    implements $NotificationListDtoOutputCopyWith<$Res> {
  _$NotificationListDtoOutputCopyWithImpl(this._self, this._then);

  final NotificationListDtoOutput _self;
  final $Res Function(NotificationListDtoOutput) _then;

/// Create a copy of NotificationListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unread = null,Object? items = null,}) {
  return _then(NotificationListDtoOutput(
unread: null == unread ? _self.unread : unread // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Items3>,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationListDtoOutput].
extension NotificationListDtoOutputPatterns on NotificationListDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationListDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationListDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationListDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _NotificationListDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationListDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationListDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int unread,  List<Items3> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationListDtoOutput() when $default != null:
return $default(_that.unread,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int unread,  List<Items3> items)  $default,) {final _that = this;
switch (_that) {
case _NotificationListDtoOutput():
return $default(_that.unread,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int unread,  List<Items3> items)?  $default,) {final _that = this;
switch (_that) {
case _NotificationListDtoOutput() when $default != null:
return $default(_that.unread,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationListDtoOutput implements NotificationListDtoOutput {
  const _NotificationListDtoOutput({required this.unread, required  List<Items3> items}): _items = items;
  factory _NotificationListDtoOutput.fromJson(Map<String, dynamic> json) => _$NotificationListDtoOutputFromJson(json);

@override final  int unread;
 final  List<Items3> _items;
@override List<Items3> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of NotificationListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationListDtoOutputCopyWith<_NotificationListDtoOutput> get copyWith => __$NotificationListDtoOutputCopyWithImpl<_NotificationListDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationListDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationListDtoOutput&&(identical(other.unread, unread) || other.unread == unread)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,unread,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'NotificationListDtoOutput(unread: $unread, items: $items)';
}


}

/// @nodoc
abstract mixin class _$NotificationListDtoOutputCopyWith<$Res> implements $NotificationListDtoOutputCopyWith<$Res> {
  factory _$NotificationListDtoOutputCopyWith(_NotificationListDtoOutput value, $Res Function(_NotificationListDtoOutput) _then) = __$NotificationListDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 int unread, List<Items3> items
});




}
/// @nodoc
class __$NotificationListDtoOutputCopyWithImpl<$Res>
    implements _$NotificationListDtoOutputCopyWith<$Res> {
  __$NotificationListDtoOutputCopyWithImpl(this._self, this._then);

  final _NotificationListDtoOutput _self;
  final $Res Function(_NotificationListDtoOutput) _then;

/// Create a copy of NotificationListDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unread = null,Object? items = null,}) {
  return _then(_NotificationListDtoOutput(
unread: null == unread ? _self.unread : unread // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Items3>,
  ));
}


}

// dart format on
