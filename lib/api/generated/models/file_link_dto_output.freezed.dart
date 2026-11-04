// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_link_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileLinkDtoOutput {

 String get id; String get url;
/// Create a copy of FileLinkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileLinkDtoOutputCopyWith<FileLinkDtoOutput> get copyWith => _$FileLinkDtoOutputCopyWithImpl<FileLinkDtoOutput>(this as FileLinkDtoOutput, _$identity);

  /// Serializes this FileLinkDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FileLinkDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileLinkDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.url, _this.url) || other.url == _this.url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FileLinkDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.url);
}

@override
String toString() {
  final _this = this as FileLinkDtoOutput;
  return 'FileLinkDtoOutput(id: ${_this.id}, url: ${_this.url})';
}


}

/// @nodoc
abstract mixin class $FileLinkDtoOutputCopyWith<$Res>  {
  factory $FileLinkDtoOutputCopyWith(FileLinkDtoOutput value, $Res Function(FileLinkDtoOutput) _then) = _$FileLinkDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String url
});




}
/// @nodoc
class _$FileLinkDtoOutputCopyWithImpl<$Res>
    implements $FileLinkDtoOutputCopyWith<$Res> {
  _$FileLinkDtoOutputCopyWithImpl(this._self, this._then);

  final FileLinkDtoOutput _self;
  final $Res Function(FileLinkDtoOutput) _then;

/// Create a copy of FileLinkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,}) {
  return _then(FileLinkDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FileLinkDtoOutput].
extension FileLinkDtoOutputPatterns on FileLinkDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileLinkDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileLinkDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileLinkDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _FileLinkDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileLinkDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _FileLinkDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileLinkDtoOutput() when $default != null:
return $default(_that.id,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url)  $default,) {final _that = this;
switch (_that) {
case _FileLinkDtoOutput():
return $default(_that.id,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url)?  $default,) {final _that = this;
switch (_that) {
case _FileLinkDtoOutput() when $default != null:
return $default(_that.id,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileLinkDtoOutput implements FileLinkDtoOutput {
  const _FileLinkDtoOutput({required this.id, required this.url});
  factory _FileLinkDtoOutput.fromJson(Map<String, dynamic> json) => _$FileLinkDtoOutputFromJson(json);

@override final  String id;
@override final  String url;

/// Create a copy of FileLinkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileLinkDtoOutputCopyWith<_FileLinkDtoOutput> get copyWith => __$FileLinkDtoOutputCopyWithImpl<_FileLinkDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileLinkDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileLinkDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,url);
}

@override
String toString() {
    return 'FileLinkDtoOutput(id: $id, url: $url)';
}


}

/// @nodoc
abstract mixin class _$FileLinkDtoOutputCopyWith<$Res> implements $FileLinkDtoOutputCopyWith<$Res> {
  factory _$FileLinkDtoOutputCopyWith(_FileLinkDtoOutput value, $Res Function(_FileLinkDtoOutput) _then) = __$FileLinkDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String url
});




}
/// @nodoc
class __$FileLinkDtoOutputCopyWithImpl<$Res>
    implements _$FileLinkDtoOutputCopyWith<$Res> {
  __$FileLinkDtoOutputCopyWithImpl(this._self, this._then);

  final _FileLinkDtoOutput _self;
  final $Res Function(_FileLinkDtoOutput) _then;

/// Create a copy of FileLinkDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,}) {
  return _then(_FileLinkDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
