// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Items {

 String get id; DateTime get at; Actor get actor; String get action; String get entityType; String? get entityId; String? get summary; dynamic get before; dynamic get after;
/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsCopyWith<Items> get copyWith => _$ItemsCopyWithImpl<Items>(this as Items, _$identity);

  /// Serializes this Items to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Items;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Items&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.at, _this.at) || other.at == _this.at)&&(identical(other.actor, _this.actor) || other.actor == _this.actor)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.entityType, _this.entityType) || other.entityType == _this.entityType)&&(identical(other.entityId, _this.entityId) || other.entityId == _this.entityId)&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&const DeepCollectionEquality().equals(other.before, _this.before)&&const DeepCollectionEquality().equals(other.after, _this.after));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Items;
  return Object.hash(runtimeType,_this.id,_this.at,_this.actor,_this.action,_this.entityType,_this.entityId,_this.summary,const DeepCollectionEquality().hash(_this.before),const DeepCollectionEquality().hash(_this.after));
}

@override
String toString() {
  final _this = this as Items;
  return 'Items(id: ${_this.id}, at: ${_this.at}, actor: ${_this.actor}, action: ${_this.action}, entityType: ${_this.entityType}, entityId: ${_this.entityId}, summary: ${_this.summary}, before: ${_this.before}, after: ${_this.after})';
}


}

/// @nodoc
abstract mixin class $ItemsCopyWith<$Res>  {
  factory $ItemsCopyWith(Items value, $Res Function(Items) _then) = _$ItemsCopyWithImpl;
@useResult
$Res call({
 String id, DateTime at, Actor actor, String action, String entityType, String? entityId, String? summary, dynamic before, dynamic after
});


$ActorCopyWith<$Res> get actor;

}
/// @nodoc
class _$ItemsCopyWithImpl<$Res>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._self, this._then);

  final Items _self;
  final $Res Function(Items) _then;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? at = null,Object? actor = null,Object? action = null,Object? entityType = null,Object? entityId = freezed,Object? summary = freezed,Object? before = freezed,Object? after = freezed,}) {
  return _then(Items(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as Actor,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,before: freezed == before ? _self.before : before // ignore: cast_nullable_to_non_nullable
as dynamic,after: freezed == after ? _self.after : after // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActorCopyWith<$Res> get actor {
  
  return $ActorCopyWith<$Res>(_self.actor, (value) {
    return _then(_self.copyWith(actor: value));
  });
}
}


/// Adds pattern-matching-related methods to [Items].
extension ItemsPatterns on Items {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Items value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Items() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Items value)  $default,){
final _that = this;
switch (_that) {
case _Items():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Items value)?  $default,){
final _that = this;
switch (_that) {
case _Items() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime at,  Actor actor,  String action,  String entityType,  String? entityId,  String? summary,  dynamic before,  dynamic after)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Items() when $default != null:
return $default(_that.id,_that.at,_that.actor,_that.action,_that.entityType,_that.entityId,_that.summary,_that.before,_that.after);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime at,  Actor actor,  String action,  String entityType,  String? entityId,  String? summary,  dynamic before,  dynamic after)  $default,) {final _that = this;
switch (_that) {
case _Items():
return $default(_that.id,_that.at,_that.actor,_that.action,_that.entityType,_that.entityId,_that.summary,_that.before,_that.after);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime at,  Actor actor,  String action,  String entityType,  String? entityId,  String? summary,  dynamic before,  dynamic after)?  $default,) {final _that = this;
switch (_that) {
case _Items() when $default != null:
return $default(_that.id,_that.at,_that.actor,_that.action,_that.entityType,_that.entityId,_that.summary,_that.before,_that.after);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Items implements Items {
  const _Items({required this.id, required this.at, required this.actor, required this.action, required this.entityType, required this.entityId, required this.summary, this.before, this.after});
  factory _Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

@override final  String id;
@override final  DateTime at;
@override final  Actor actor;
@override final  String action;
@override final  String entityType;
@override final  String? entityId;
@override final  String? summary;
@override final  dynamic before;
@override final  dynamic after;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsCopyWith<_Items> get copyWith => __$ItemsCopyWithImpl<_Items>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Items&&(identical(other.id, id) || other.id == id)&&(identical(other.at, at) || other.at == at)&&(identical(other.actor, actor) || other.actor == actor)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.before, before)&&const DeepCollectionEquality().equals(other.after, after));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,at,actor,action,entityType,entityId,summary,const DeepCollectionEquality().hash(before),const DeepCollectionEquality().hash(after));
}

@override
String toString() {
    return 'Items(id: $id, at: $at, actor: $actor, action: $action, entityType: $entityType, entityId: $entityId, summary: $summary, before: $before, after: $after)';
}


}

/// @nodoc
abstract mixin class _$ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$ItemsCopyWith(_Items value, $Res Function(_Items) _then) = __$ItemsCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime at, Actor actor, String action, String entityType, String? entityId, String? summary, dynamic before, dynamic after
});


@override $ActorCopyWith<$Res> get actor;

}
/// @nodoc
class __$ItemsCopyWithImpl<$Res>
    implements _$ItemsCopyWith<$Res> {
  __$ItemsCopyWithImpl(this._self, this._then);

  final _Items _self;
  final $Res Function(_Items) _then;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? at = null,Object? actor = null,Object? action = null,Object? entityType = null,Object? entityId = freezed,Object? summary = freezed,Object? before = freezed,Object? after = freezed,}) {
  return _then(_Items(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as Actor,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,before: freezed == before ? _self.before : before // ignore: cast_nullable_to_non_nullable
as dynamic,after: freezed == after ? _self.after : after // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActorCopyWith<$Res> get actor {
  
  return $ActorCopyWith<$Res>(_self.actor, (value) {
    return _then(_self.copyWith(actor: value));
  });
}
}

// dart format on
