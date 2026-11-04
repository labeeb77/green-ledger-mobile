// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_category_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoryDtoOutput {

 String get id; String get name; bool get allowedForGodown; bool get allowedForAgent; bool get active;
/// Create a copy of ExpenseCategoryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseCategoryDtoOutputCopyWith<ExpenseCategoryDtoOutput> get copyWith => _$ExpenseCategoryDtoOutputCopyWithImpl<ExpenseCategoryDtoOutput>(this as ExpenseCategoryDtoOutput, _$identity);

  /// Serializes this ExpenseCategoryDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExpenseCategoryDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseCategoryDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.allowedForGodown, _this.allowedForGodown) || other.allowedForGodown == _this.allowedForGodown)&&(identical(other.allowedForAgent, _this.allowedForAgent) || other.allowedForAgent == _this.allowedForAgent)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExpenseCategoryDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.name,_this.allowedForGodown,_this.allowedForAgent,_this.active);
}

@override
String toString() {
  final _this = this as ExpenseCategoryDtoOutput;
  return 'ExpenseCategoryDtoOutput(id: ${_this.id}, name: ${_this.name}, allowedForGodown: ${_this.allowedForGodown}, allowedForAgent: ${_this.allowedForAgent}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $ExpenseCategoryDtoOutputCopyWith<$Res>  {
  factory $ExpenseCategoryDtoOutputCopyWith(ExpenseCategoryDtoOutput value, $Res Function(ExpenseCategoryDtoOutput) _then) = _$ExpenseCategoryDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool allowedForGodown, bool allowedForAgent, bool active
});




}
/// @nodoc
class _$ExpenseCategoryDtoOutputCopyWithImpl<$Res>
    implements $ExpenseCategoryDtoOutputCopyWith<$Res> {
  _$ExpenseCategoryDtoOutputCopyWithImpl(this._self, this._then);

  final ExpenseCategoryDtoOutput _self;
  final $Res Function(ExpenseCategoryDtoOutput) _then;

/// Create a copy of ExpenseCategoryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? allowedForGodown = null,Object? allowedForAgent = null,Object? active = null,}) {
  return _then(ExpenseCategoryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,allowedForGodown: null == allowedForGodown ? _self.allowedForGodown : allowedForGodown // ignore: cast_nullable_to_non_nullable
as bool,allowedForAgent: null == allowedForAgent ? _self.allowedForAgent : allowedForAgent // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpenseCategoryDtoOutput].
extension ExpenseCategoryDtoOutputPatterns on ExpenseCategoryDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseCategoryDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseCategoryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseCategoryDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseCategoryDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseCategoryDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseCategoryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool allowedForGodown,  bool allowedForAgent,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseCategoryDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.allowedForGodown,_that.allowedForAgent,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool allowedForGodown,  bool allowedForAgent,  bool active)  $default,) {final _that = this;
switch (_that) {
case _ExpenseCategoryDtoOutput():
return $default(_that.id,_that.name,_that.allowedForGodown,_that.allowedForAgent,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool allowedForGodown,  bool allowedForAgent,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseCategoryDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.allowedForGodown,_that.allowedForAgent,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpenseCategoryDtoOutput implements ExpenseCategoryDtoOutput {
  const _ExpenseCategoryDtoOutput({required this.id, required this.name, required this.allowedForGodown, required this.allowedForAgent, required this.active});
  factory _ExpenseCategoryDtoOutput.fromJson(Map<String, dynamic> json) => _$ExpenseCategoryDtoOutputFromJson(json);

@override final  String id;
@override final  String name;
@override final  bool allowedForGodown;
@override final  bool allowedForAgent;
@override final  bool active;

/// Create a copy of ExpenseCategoryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseCategoryDtoOutputCopyWith<_ExpenseCategoryDtoOutput> get copyWith => __$ExpenseCategoryDtoOutputCopyWithImpl<_ExpenseCategoryDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseCategoryDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseCategoryDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.allowedForGodown, allowedForGodown) || other.allowedForGodown == allowedForGodown)&&(identical(other.allowedForAgent, allowedForAgent) || other.allowedForAgent == allowedForAgent)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,allowedForGodown,allowedForAgent,active);
}

@override
String toString() {
    return 'ExpenseCategoryDtoOutput(id: $id, name: $name, allowedForGodown: $allowedForGodown, allowedForAgent: $allowedForAgent, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ExpenseCategoryDtoOutputCopyWith<$Res> implements $ExpenseCategoryDtoOutputCopyWith<$Res> {
  factory _$ExpenseCategoryDtoOutputCopyWith(_ExpenseCategoryDtoOutput value, $Res Function(_ExpenseCategoryDtoOutput) _then) = __$ExpenseCategoryDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool allowedForGodown, bool allowedForAgent, bool active
});




}
/// @nodoc
class __$ExpenseCategoryDtoOutputCopyWithImpl<$Res>
    implements _$ExpenseCategoryDtoOutputCopyWith<$Res> {
  __$ExpenseCategoryDtoOutputCopyWithImpl(this._self, this._then);

  final _ExpenseCategoryDtoOutput _self;
  final $Res Function(_ExpenseCategoryDtoOutput) _then;

/// Create a copy of ExpenseCategoryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? allowedForGodown = null,Object? allowedForAgent = null,Object? active = null,}) {
  return _then(_ExpenseCategoryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,allowedForGodown: null == allowedForGodown ? _self.allowedForGodown : allowedForGodown // ignore: cast_nullable_to_non_nullable
as bool,allowedForAgent: null == allowedForAgent ? _self.allowedForAgent : allowedForAgent // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
