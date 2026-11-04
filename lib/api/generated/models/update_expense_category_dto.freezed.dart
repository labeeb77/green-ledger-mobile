// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_expense_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateExpenseCategoryDto {

 String? get name; bool? get allowedForGodown; bool? get allowedForAgent; bool? get active;
/// Create a copy of UpdateExpenseCategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExpenseCategoryDtoCopyWith<UpdateExpenseCategoryDto> get copyWith => _$UpdateExpenseCategoryDtoCopyWithImpl<UpdateExpenseCategoryDto>(this as UpdateExpenseCategoryDto, _$identity);

  /// Serializes this UpdateExpenseCategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateExpenseCategoryDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExpenseCategoryDto&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.allowedForGodown, _this.allowedForGodown) || other.allowedForGodown == _this.allowedForGodown)&&(identical(other.allowedForAgent, _this.allowedForAgent) || other.allowedForAgent == _this.allowedForAgent)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateExpenseCategoryDto;
  return Object.hash(runtimeType,_this.name,_this.allowedForGodown,_this.allowedForAgent,_this.active);
}

@override
String toString() {
  final _this = this as UpdateExpenseCategoryDto;
  return 'UpdateExpenseCategoryDto(name: ${_this.name}, allowedForGodown: ${_this.allowedForGodown}, allowedForAgent: ${_this.allowedForAgent}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $UpdateExpenseCategoryDtoCopyWith<$Res>  {
  factory $UpdateExpenseCategoryDtoCopyWith(UpdateExpenseCategoryDto value, $Res Function(UpdateExpenseCategoryDto) _then) = _$UpdateExpenseCategoryDtoCopyWithImpl;
@useResult
$Res call({
 String? name, bool? allowedForGodown, bool? allowedForAgent, bool? active
});




}
/// @nodoc
class _$UpdateExpenseCategoryDtoCopyWithImpl<$Res>
    implements $UpdateExpenseCategoryDtoCopyWith<$Res> {
  _$UpdateExpenseCategoryDtoCopyWithImpl(this._self, this._then);

  final UpdateExpenseCategoryDto _self;
  final $Res Function(UpdateExpenseCategoryDto) _then;

/// Create a copy of UpdateExpenseCategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? allowedForGodown = freezed,Object? allowedForAgent = freezed,Object? active = freezed,}) {
  return _then(UpdateExpenseCategoryDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,allowedForGodown: freezed == allowedForGodown ? _self.allowedForGodown : allowedForGodown // ignore: cast_nullable_to_non_nullable
as bool?,allowedForAgent: freezed == allowedForAgent ? _self.allowedForAgent : allowedForAgent // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateExpenseCategoryDto].
extension UpdateExpenseCategoryDtoPatterns on UpdateExpenseCategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateExpenseCategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateExpenseCategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateExpenseCategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateExpenseCategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateExpenseCategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateExpenseCategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  bool? allowedForGodown,  bool? allowedForAgent,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateExpenseCategoryDto() when $default != null:
return $default(_that.name,_that.allowedForGodown,_that.allowedForAgent,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  bool? allowedForGodown,  bool? allowedForAgent,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateExpenseCategoryDto():
return $default(_that.name,_that.allowedForGodown,_that.allowedForAgent,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  bool? allowedForGodown,  bool? allowedForAgent,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateExpenseCategoryDto() when $default != null:
return $default(_that.name,_that.allowedForGodown,_that.allowedForAgent,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateExpenseCategoryDto implements UpdateExpenseCategoryDto {
  const _UpdateExpenseCategoryDto({this.name, this.allowedForGodown, this.allowedForAgent, this.active});
  factory _UpdateExpenseCategoryDto.fromJson(Map<String, dynamic> json) => _$UpdateExpenseCategoryDtoFromJson(json);

@override final  String? name;
@override final  bool? allowedForGodown;
@override final  bool? allowedForAgent;
@override final  bool? active;

/// Create a copy of UpdateExpenseCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateExpenseCategoryDtoCopyWith<_UpdateExpenseCategoryDto> get copyWith => __$UpdateExpenseCategoryDtoCopyWithImpl<_UpdateExpenseCategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateExpenseCategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateExpenseCategoryDto&&(identical(other.name, name) || other.name == name)&&(identical(other.allowedForGodown, allowedForGodown) || other.allowedForGodown == allowedForGodown)&&(identical(other.allowedForAgent, allowedForAgent) || other.allowedForAgent == allowedForAgent)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,allowedForGodown,allowedForAgent,active);
}

@override
String toString() {
    return 'UpdateExpenseCategoryDto(name: $name, allowedForGodown: $allowedForGodown, allowedForAgent: $allowedForAgent, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateExpenseCategoryDtoCopyWith<$Res> implements $UpdateExpenseCategoryDtoCopyWith<$Res> {
  factory _$UpdateExpenseCategoryDtoCopyWith(_UpdateExpenseCategoryDto value, $Res Function(_UpdateExpenseCategoryDto) _then) = __$UpdateExpenseCategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, bool? allowedForGodown, bool? allowedForAgent, bool? active
});




}
/// @nodoc
class __$UpdateExpenseCategoryDtoCopyWithImpl<$Res>
    implements _$UpdateExpenseCategoryDtoCopyWith<$Res> {
  __$UpdateExpenseCategoryDtoCopyWithImpl(this._self, this._then);

  final _UpdateExpenseCategoryDto _self;
  final $Res Function(_UpdateExpenseCategoryDto) _then;

/// Create a copy of UpdateExpenseCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? allowedForGodown = freezed,Object? allowedForAgent = freezed,Object? active = freezed,}) {
  return _then(_UpdateExpenseCategoryDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,allowedForGodown: freezed == allowedForGodown ? _self.allowedForGodown : allowedForGodown // ignore: cast_nullable_to_non_nullable
as bool?,allowedForAgent: freezed == allowedForAgent ? _self.allowedForAgent : allowedForAgent // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
