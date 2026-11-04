// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_status_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportStatusDtoOutput {

 bool get active; String? get expiresAt; String? get grantedAt; int get views;
/// Create a copy of SupportStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportStatusDtoOutputCopyWith<SupportStatusDtoOutput> get copyWith => _$SupportStatusDtoOutputCopyWithImpl<SupportStatusDtoOutput>(this as SupportStatusDtoOutput, _$identity);

  /// Serializes this SupportStatusDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupportStatusDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportStatusDtoOutput&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.grantedAt, _this.grantedAt) || other.grantedAt == _this.grantedAt)&&(identical(other.views, _this.views) || other.views == _this.views));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupportStatusDtoOutput;
  return Object.hash(runtimeType,_this.active,_this.expiresAt,_this.grantedAt,_this.views);
}

@override
String toString() {
  final _this = this as SupportStatusDtoOutput;
  return 'SupportStatusDtoOutput(active: ${_this.active}, expiresAt: ${_this.expiresAt}, grantedAt: ${_this.grantedAt}, views: ${_this.views})';
}


}

/// @nodoc
abstract mixin class $SupportStatusDtoOutputCopyWith<$Res>  {
  factory $SupportStatusDtoOutputCopyWith(SupportStatusDtoOutput value, $Res Function(SupportStatusDtoOutput) _then) = _$SupportStatusDtoOutputCopyWithImpl;
@useResult
$Res call({
 bool active, String? expiresAt, String? grantedAt, int views
});




}
/// @nodoc
class _$SupportStatusDtoOutputCopyWithImpl<$Res>
    implements $SupportStatusDtoOutputCopyWith<$Res> {
  _$SupportStatusDtoOutputCopyWithImpl(this._self, this._then);

  final SupportStatusDtoOutput _self;
  final $Res Function(SupportStatusDtoOutput) _then;

/// Create a copy of SupportStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? active = null,Object? expiresAt = freezed,Object? grantedAt = freezed,Object? views = null,}) {
  return _then(SupportStatusDtoOutput(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,grantedAt: freezed == grantedAt ? _self.grantedAt : grantedAt // ignore: cast_nullable_to_non_nullable
as String?,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportStatusDtoOutput].
extension SupportStatusDtoOutputPatterns on SupportStatusDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportStatusDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportStatusDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportStatusDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupportStatusDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportStatusDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupportStatusDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool active,  String? expiresAt,  String? grantedAt,  int views)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportStatusDtoOutput() when $default != null:
return $default(_that.active,_that.expiresAt,_that.grantedAt,_that.views);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool active,  String? expiresAt,  String? grantedAt,  int views)  $default,) {final _that = this;
switch (_that) {
case _SupportStatusDtoOutput():
return $default(_that.active,_that.expiresAt,_that.grantedAt,_that.views);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool active,  String? expiresAt,  String? grantedAt,  int views)?  $default,) {final _that = this;
switch (_that) {
case _SupportStatusDtoOutput() when $default != null:
return $default(_that.active,_that.expiresAt,_that.grantedAt,_that.views);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportStatusDtoOutput implements SupportStatusDtoOutput {
  const _SupportStatusDtoOutput({required this.active, required this.expiresAt, required this.grantedAt, required this.views});
  factory _SupportStatusDtoOutput.fromJson(Map<String, dynamic> json) => _$SupportStatusDtoOutputFromJson(json);

@override final  bool active;
@override final  String? expiresAt;
@override final  String? grantedAt;
@override final  int views;

/// Create a copy of SupportStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportStatusDtoOutputCopyWith<_SupportStatusDtoOutput> get copyWith => __$SupportStatusDtoOutputCopyWithImpl<_SupportStatusDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportStatusDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportStatusDtoOutput&&(identical(other.active, active) || other.active == active)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.grantedAt, grantedAt) || other.grantedAt == grantedAt)&&(identical(other.views, views) || other.views == views));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,active,expiresAt,grantedAt,views);
}

@override
String toString() {
    return 'SupportStatusDtoOutput(active: $active, expiresAt: $expiresAt, grantedAt: $grantedAt, views: $views)';
}


}

/// @nodoc
abstract mixin class _$SupportStatusDtoOutputCopyWith<$Res> implements $SupportStatusDtoOutputCopyWith<$Res> {
  factory _$SupportStatusDtoOutputCopyWith(_SupportStatusDtoOutput value, $Res Function(_SupportStatusDtoOutput) _then) = __$SupportStatusDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 bool active, String? expiresAt, String? grantedAt, int views
});




}
/// @nodoc
class __$SupportStatusDtoOutputCopyWithImpl<$Res>
    implements _$SupportStatusDtoOutputCopyWith<$Res> {
  __$SupportStatusDtoOutputCopyWithImpl(this._self, this._then);

  final _SupportStatusDtoOutput _self;
  final $Res Function(_SupportStatusDtoOutput) _then;

/// Create a copy of SupportStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? active = null,Object? expiresAt = freezed,Object? grantedAt = freezed,Object? views = null,}) {
  return _then(_SupportStatusDtoOutput(
active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,grantedAt: freezed == grantedAt ? _self.grantedAt : grantedAt // ignore: cast_nullable_to_non_nullable
as String?,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
