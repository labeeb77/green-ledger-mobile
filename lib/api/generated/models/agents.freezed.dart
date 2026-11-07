// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Agents {

 String get userId; String get name; Collected get collected; int get visits; int get cashInBag; bool get handoverPending;
/// Create a copy of Agents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentsCopyWith<Agents> get copyWith => _$AgentsCopyWithImpl<Agents>(this as Agents, _$identity);

  /// Serializes this Agents to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Agents;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Agents&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.collected, _this.collected) || other.collected == _this.collected)&&(identical(other.visits, _this.visits) || other.visits == _this.visits)&&(identical(other.cashInBag, _this.cashInBag) || other.cashInBag == _this.cashInBag)&&(identical(other.handoverPending, _this.handoverPending) || other.handoverPending == _this.handoverPending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Agents;
  return Object.hash(runtimeType,_this.userId,_this.name,_this.collected,_this.visits,_this.cashInBag,_this.handoverPending);
}

@override
String toString() {
  final _this = this as Agents;
  return 'Agents(userId: ${_this.userId}, name: ${_this.name}, collected: ${_this.collected}, visits: ${_this.visits}, cashInBag: ${_this.cashInBag}, handoverPending: ${_this.handoverPending})';
}


}

/// @nodoc
abstract mixin class $AgentsCopyWith<$Res>  {
  factory $AgentsCopyWith(Agents value, $Res Function(Agents) _then) = _$AgentsCopyWithImpl;
@useResult
$Res call({
 String userId, String name, Collected collected, int visits, int cashInBag, bool handoverPending
});


$CollectedCopyWith<$Res> get collected;

}
/// @nodoc
class _$AgentsCopyWithImpl<$Res>
    implements $AgentsCopyWith<$Res> {
  _$AgentsCopyWithImpl(this._self, this._then);

  final Agents _self;
  final $Res Function(Agents) _then;

/// Create a copy of Agents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? collected = null,Object? visits = null,Object? cashInBag = null,Object? handoverPending = null,}) {
  return _then(Agents(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,collected: null == collected ? _self.collected : collected // ignore: cast_nullable_to_non_nullable
as Collected,visits: null == visits ? _self.visits : visits // ignore: cast_nullable_to_non_nullable
as int,cashInBag: null == cashInBag ? _self.cashInBag : cashInBag // ignore: cast_nullable_to_non_nullable
as int,handoverPending: null == handoverPending ? _self.handoverPending : handoverPending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Agents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectedCopyWith<$Res> get collected {
  
  return $CollectedCopyWith<$Res>(_self.collected, (value) {
    return _then(_self.copyWith(collected: value));
  });
}
}


/// Adds pattern-matching-related methods to [Agents].
extension AgentsPatterns on Agents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Agents value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Agents() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Agents value)  $default,){
final _that = this;
switch (_that) {
case _Agents():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Agents value)?  $default,){
final _that = this;
switch (_that) {
case _Agents() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String name,  Collected collected,  int visits,  int cashInBag,  bool handoverPending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Agents() when $default != null:
return $default(_that.userId,_that.name,_that.collected,_that.visits,_that.cashInBag,_that.handoverPending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String name,  Collected collected,  int visits,  int cashInBag,  bool handoverPending)  $default,) {final _that = this;
switch (_that) {
case _Agents():
return $default(_that.userId,_that.name,_that.collected,_that.visits,_that.cashInBag,_that.handoverPending);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String name,  Collected collected,  int visits,  int cashInBag,  bool handoverPending)?  $default,) {final _that = this;
switch (_that) {
case _Agents() when $default != null:
return $default(_that.userId,_that.name,_that.collected,_that.visits,_that.cashInBag,_that.handoverPending);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Agents implements Agents {
  const _Agents({required this.userId, required this.name, required this.collected, required this.visits, required this.cashInBag, required this.handoverPending});
  factory _Agents.fromJson(Map<String, dynamic> json) => _$AgentsFromJson(json);

@override final  String userId;
@override final  String name;
@override final  Collected collected;
@override final  int visits;
@override final  int cashInBag;
@override final  bool handoverPending;

/// Create a copy of Agents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentsCopyWith<_Agents> get copyWith => __$AgentsCopyWithImpl<_Agents>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Agents&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.collected, collected) || other.collected == collected)&&(identical(other.visits, visits) || other.visits == visits)&&(identical(other.cashInBag, cashInBag) || other.cashInBag == cashInBag)&&(identical(other.handoverPending, handoverPending) || other.handoverPending == handoverPending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,name,collected,visits,cashInBag,handoverPending);
}

@override
String toString() {
    return 'Agents(userId: $userId, name: $name, collected: $collected, visits: $visits, cashInBag: $cashInBag, handoverPending: $handoverPending)';
}


}

/// @nodoc
abstract mixin class _$AgentsCopyWith<$Res> implements $AgentsCopyWith<$Res> {
  factory _$AgentsCopyWith(_Agents value, $Res Function(_Agents) _then) = __$AgentsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name, Collected collected, int visits, int cashInBag, bool handoverPending
});


@override $CollectedCopyWith<$Res> get collected;

}
/// @nodoc
class __$AgentsCopyWithImpl<$Res>
    implements _$AgentsCopyWith<$Res> {
  __$AgentsCopyWithImpl(this._self, this._then);

  final _Agents _self;
  final $Res Function(_Agents) _then;

/// Create a copy of Agents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? collected = null,Object? visits = null,Object? cashInBag = null,Object? handoverPending = null,}) {
  return _then(_Agents(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,collected: null == collected ? _self.collected : collected // ignore: cast_nullable_to_non_nullable
as Collected,visits: null == visits ? _self.visits : visits // ignore: cast_nullable_to_non_nullable
as int,cashInBag: null == cashInBag ? _self.cashInBag : cashInBag // ignore: cast_nullable_to_non_nullable
as int,handoverPending: null == handoverPending ? _self.handoverPending : handoverPending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Agents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CollectedCopyWith<$Res> get collected {
  
  return $CollectedCopyWith<$Res>(_self.collected, (value) {
    return _then(_self.copyWith(collected: value));
  });
}
}

// dart format on
