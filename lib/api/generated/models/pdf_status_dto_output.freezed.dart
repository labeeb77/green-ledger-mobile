// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_status_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PdfStatusDtoOutput {

 String? get jobId; PdfStatusDtoOutputStatus get status; String? get url; String get filename; String? get error;
/// Create a copy of PdfStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PdfStatusDtoOutputCopyWith<PdfStatusDtoOutput> get copyWith => _$PdfStatusDtoOutputCopyWithImpl<PdfStatusDtoOutput>(this as PdfStatusDtoOutput, _$identity);

  /// Serializes this PdfStatusDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PdfStatusDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PdfStatusDtoOutput&&(identical(other.jobId, _this.jobId) || other.jobId == _this.jobId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.filename, _this.filename) || other.filename == _this.filename)&&(identical(other.error, _this.error) || other.error == _this.error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PdfStatusDtoOutput;
  return Object.hash(runtimeType,_this.jobId,_this.status,_this.url,_this.filename,_this.error);
}

@override
String toString() {
  final _this = this as PdfStatusDtoOutput;
  return 'PdfStatusDtoOutput(jobId: ${_this.jobId}, status: ${_this.status}, url: ${_this.url}, filename: ${_this.filename}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $PdfStatusDtoOutputCopyWith<$Res>  {
  factory $PdfStatusDtoOutputCopyWith(PdfStatusDtoOutput value, $Res Function(PdfStatusDtoOutput) _then) = _$PdfStatusDtoOutputCopyWithImpl;
@useResult
$Res call({
 String? jobId, PdfStatusDtoOutputStatus status, String? url, String filename, String? error
});




}
/// @nodoc
class _$PdfStatusDtoOutputCopyWithImpl<$Res>
    implements $PdfStatusDtoOutputCopyWith<$Res> {
  _$PdfStatusDtoOutputCopyWithImpl(this._self, this._then);

  final PdfStatusDtoOutput _self;
  final $Res Function(PdfStatusDtoOutput) _then;

/// Create a copy of PdfStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = freezed,Object? status = null,Object? url = freezed,Object? filename = null,Object? error = freezed,}) {
  return _then(PdfStatusDtoOutput(
jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PdfStatusDtoOutputStatus,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PdfStatusDtoOutput].
extension PdfStatusDtoOutputPatterns on PdfStatusDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PdfStatusDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PdfStatusDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PdfStatusDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _PdfStatusDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PdfStatusDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _PdfStatusDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? jobId,  PdfStatusDtoOutputStatus status,  String? url,  String filename,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PdfStatusDtoOutput() when $default != null:
return $default(_that.jobId,_that.status,_that.url,_that.filename,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? jobId,  PdfStatusDtoOutputStatus status,  String? url,  String filename,  String? error)  $default,) {final _that = this;
switch (_that) {
case _PdfStatusDtoOutput():
return $default(_that.jobId,_that.status,_that.url,_that.filename,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? jobId,  PdfStatusDtoOutputStatus status,  String? url,  String filename,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _PdfStatusDtoOutput() when $default != null:
return $default(_that.jobId,_that.status,_that.url,_that.filename,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PdfStatusDtoOutput implements PdfStatusDtoOutput {
  const _PdfStatusDtoOutput({required this.jobId, required this.status, required this.url, required this.filename, required this.error});
  factory _PdfStatusDtoOutput.fromJson(Map<String, dynamic> json) => _$PdfStatusDtoOutputFromJson(json);

@override final  String? jobId;
@override final  PdfStatusDtoOutputStatus status;
@override final  String? url;
@override final  String filename;
@override final  String? error;

/// Create a copy of PdfStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PdfStatusDtoOutputCopyWith<_PdfStatusDtoOutput> get copyWith => __$PdfStatusDtoOutputCopyWithImpl<_PdfStatusDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PdfStatusDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PdfStatusDtoOutput&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,jobId,status,url,filename,error);
}

@override
String toString() {
    return 'PdfStatusDtoOutput(jobId: $jobId, status: $status, url: $url, filename: $filename, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PdfStatusDtoOutputCopyWith<$Res> implements $PdfStatusDtoOutputCopyWith<$Res> {
  factory _$PdfStatusDtoOutputCopyWith(_PdfStatusDtoOutput value, $Res Function(_PdfStatusDtoOutput) _then) = __$PdfStatusDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String? jobId, PdfStatusDtoOutputStatus status, String? url, String filename, String? error
});




}
/// @nodoc
class __$PdfStatusDtoOutputCopyWithImpl<$Res>
    implements _$PdfStatusDtoOutputCopyWith<$Res> {
  __$PdfStatusDtoOutputCopyWithImpl(this._self, this._then);

  final _PdfStatusDtoOutput _self;
  final $Res Function(_PdfStatusDtoOutput) _then;

/// Create a copy of PdfStatusDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = freezed,Object? status = null,Object? url = freezed,Object? filename = null,Object? error = freezed,}) {
  return _then(_PdfStatusDtoOutput(
jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PdfStatusDtoOutputStatus,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
