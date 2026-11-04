// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_result_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImportResultDtoOutput {

 bool get ok; int get imported; List<Errors> get errors;
/// Create a copy of ImportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportResultDtoOutputCopyWith<ImportResultDtoOutput> get copyWith => _$ImportResultDtoOutputCopyWithImpl<ImportResultDtoOutput>(this as ImportResultDtoOutput, _$identity);

  /// Serializes this ImportResultDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ImportResultDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportResultDtoOutput&&(identical(other.ok, _this.ok) || other.ok == _this.ok)&&(identical(other.imported, _this.imported) || other.imported == _this.imported)&&const DeepCollectionEquality().equals(other.errors, _this.errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ImportResultDtoOutput;
  return Object.hash(runtimeType,_this.ok,_this.imported,const DeepCollectionEquality().hash(_this.errors));
}

@override
String toString() {
  final _this = this as ImportResultDtoOutput;
  return 'ImportResultDtoOutput(ok: ${_this.ok}, imported: ${_this.imported}, errors: ${_this.errors})';
}


}

/// @nodoc
abstract mixin class $ImportResultDtoOutputCopyWith<$Res>  {
  factory $ImportResultDtoOutputCopyWith(ImportResultDtoOutput value, $Res Function(ImportResultDtoOutput) _then) = _$ImportResultDtoOutputCopyWithImpl;
@useResult
$Res call({
 bool ok, int imported, List<Errors> errors
});




}
/// @nodoc
class _$ImportResultDtoOutputCopyWithImpl<$Res>
    implements $ImportResultDtoOutputCopyWith<$Res> {
  _$ImportResultDtoOutputCopyWithImpl(this._self, this._then);

  final ImportResultDtoOutput _self;
  final $Res Function(ImportResultDtoOutput) _then;

/// Create a copy of ImportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ok = null,Object? imported = null,Object? errors = null,}) {
  return _then(ImportResultDtoOutput(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,imported: null == imported ? _self.imported : imported // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<Errors>,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportResultDtoOutput].
extension ImportResultDtoOutputPatterns on ImportResultDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportResultDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportResultDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _ImportResultDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportResultDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ImportResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool ok,  int imported,  List<Errors> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportResultDtoOutput() when $default != null:
return $default(_that.ok,_that.imported,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool ok,  int imported,  List<Errors> errors)  $default,) {final _that = this;
switch (_that) {
case _ImportResultDtoOutput():
return $default(_that.ok,_that.imported,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool ok,  int imported,  List<Errors> errors)?  $default,) {final _that = this;
switch (_that) {
case _ImportResultDtoOutput() when $default != null:
return $default(_that.ok,_that.imported,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImportResultDtoOutput implements ImportResultDtoOutput {
  const _ImportResultDtoOutput({required this.ok, required this.imported, required  List<Errors> errors}): _errors = errors;
  factory _ImportResultDtoOutput.fromJson(Map<String, dynamic> json) => _$ImportResultDtoOutputFromJson(json);

@override final  bool ok;
@override final  int imported;
 final  List<Errors> _errors;
@override List<Errors> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ImportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportResultDtoOutputCopyWith<_ImportResultDtoOutput> get copyWith => __$ImportResultDtoOutputCopyWithImpl<_ImportResultDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportResultDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportResultDtoOutput&&(identical(other.ok, ok) || other.ok == ok)&&(identical(other.imported, imported) || other.imported == imported)&&const DeepCollectionEquality().equals(other.errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ok,imported,const DeepCollectionEquality().hash(_errors));
}

@override
String toString() {
    return 'ImportResultDtoOutput(ok: $ok, imported: $imported, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ImportResultDtoOutputCopyWith<$Res> implements $ImportResultDtoOutputCopyWith<$Res> {
  factory _$ImportResultDtoOutputCopyWith(_ImportResultDtoOutput value, $Res Function(_ImportResultDtoOutput) _then) = __$ImportResultDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 bool ok, int imported, List<Errors> errors
});




}
/// @nodoc
class __$ImportResultDtoOutputCopyWithImpl<$Res>
    implements _$ImportResultDtoOutputCopyWith<$Res> {
  __$ImportResultDtoOutputCopyWithImpl(this._self, this._then);

  final _ImportResultDtoOutput _self;
  final $Res Function(_ImportResultDtoOutput) _then;

/// Create a copy of ImportResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ok = null,Object? imported = null,Object? errors = null,}) {
  return _then(_ImportResultDtoOutput(
ok: null == ok ? _self.ok : ok // ignore: cast_nullable_to_non_nullable
as bool,imported: null == imported ? _self.imported : imported // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<Errors>,
  ));
}


}

// dart format on
