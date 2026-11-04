// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overdue_customers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OverdueCustomers {

 String get id; String get name; String? get phone; String? get agent; int get outstanding; int get overdue;
/// Create a copy of OverdueCustomers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverdueCustomersCopyWith<OverdueCustomers> get copyWith => _$OverdueCustomersCopyWithImpl<OverdueCustomers>(this as OverdueCustomers, _$identity);

  /// Serializes this OverdueCustomers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OverdueCustomers;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverdueCustomers&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.agent, _this.agent) || other.agent == _this.agent)&&(identical(other.outstanding, _this.outstanding) || other.outstanding == _this.outstanding)&&(identical(other.overdue, _this.overdue) || other.overdue == _this.overdue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OverdueCustomers;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.agent,_this.outstanding,_this.overdue);
}

@override
String toString() {
  final _this = this as OverdueCustomers;
  return 'OverdueCustomers(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, agent: ${_this.agent}, outstanding: ${_this.outstanding}, overdue: ${_this.overdue})';
}


}

/// @nodoc
abstract mixin class $OverdueCustomersCopyWith<$Res>  {
  factory $OverdueCustomersCopyWith(OverdueCustomers value, $Res Function(OverdueCustomers) _then) = _$OverdueCustomersCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? phone, String? agent, int outstanding, int overdue
});




}
/// @nodoc
class _$OverdueCustomersCopyWithImpl<$Res>
    implements $OverdueCustomersCopyWith<$Res> {
  _$OverdueCustomersCopyWithImpl(this._self, this._then);

  final OverdueCustomers _self;
  final $Res Function(OverdueCustomers) _then;

/// Create a copy of OverdueCustomers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? agent = freezed,Object? outstanding = null,Object? overdue = null,}) {
  return _then(OverdueCustomers(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as String?,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OverdueCustomers].
extension OverdueCustomersPatterns on OverdueCustomers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverdueCustomers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverdueCustomers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverdueCustomers value)  $default,){
final _that = this;
switch (_that) {
case _OverdueCustomers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverdueCustomers value)?  $default,){
final _that = this;
switch (_that) {
case _OverdueCustomers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? agent,  int outstanding,  int overdue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverdueCustomers() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.agent,_that.outstanding,_that.overdue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? agent,  int outstanding,  int overdue)  $default,) {final _that = this;
switch (_that) {
case _OverdueCustomers():
return $default(_that.id,_that.name,_that.phone,_that.agent,_that.outstanding,_that.overdue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? phone,  String? agent,  int outstanding,  int overdue)?  $default,) {final _that = this;
switch (_that) {
case _OverdueCustomers() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.agent,_that.outstanding,_that.overdue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverdueCustomers implements OverdueCustomers {
  const _OverdueCustomers({required this.id, required this.name, required this.phone, required this.agent, required this.outstanding, required this.overdue});
  factory _OverdueCustomers.fromJson(Map<String, dynamic> json) => _$OverdueCustomersFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? phone;
@override final  String? agent;
@override final  int outstanding;
@override final  int overdue;

/// Create a copy of OverdueCustomers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverdueCustomersCopyWith<_OverdueCustomers> get copyWith => __$OverdueCustomersCopyWithImpl<_OverdueCustomers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverdueCustomersToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverdueCustomers&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.overdue, overdue) || other.overdue == overdue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,agent,outstanding,overdue);
}

@override
String toString() {
    return 'OverdueCustomers(id: $id, name: $name, phone: $phone, agent: $agent, outstanding: $outstanding, overdue: $overdue)';
}


}

/// @nodoc
abstract mixin class _$OverdueCustomersCopyWith<$Res> implements $OverdueCustomersCopyWith<$Res> {
  factory _$OverdueCustomersCopyWith(_OverdueCustomers value, $Res Function(_OverdueCustomers) _then) = __$OverdueCustomersCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? phone, String? agent, int outstanding, int overdue
});




}
/// @nodoc
class __$OverdueCustomersCopyWithImpl<$Res>
    implements _$OverdueCustomersCopyWith<$Res> {
  __$OverdueCustomersCopyWithImpl(this._self, this._then);

  final _OverdueCustomers _self;
  final $Res Function(_OverdueCustomers) _then;

/// Create a copy of OverdueCustomers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? agent = freezed,Object? outstanding = null,Object? overdue = null,}) {
  return _then(_OverdueCustomers(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as String?,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
