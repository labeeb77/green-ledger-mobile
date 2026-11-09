// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_mistake_report_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateMistakeReportBody {

 CreateMistakeReportBodyDocumentType get documentType; String get documentId; CreateMistakeReportBodyReason get reason; String? get note;
/// Create a copy of CreateMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMistakeReportBodyCopyWith<CreateMistakeReportBody> get copyWith => _$CreateMistakeReportBodyCopyWithImpl<CreateMistakeReportBody>(this as CreateMistakeReportBody, _$identity);

  /// Serializes this CreateMistakeReportBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateMistakeReportBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMistakeReportBody&&(identical(other.documentType, _this.documentType) || other.documentType == _this.documentType)&&(identical(other.documentId, _this.documentId) || other.documentId == _this.documentId)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateMistakeReportBody;
  return Object.hash(runtimeType,_this.documentType,_this.documentId,_this.reason,_this.note);
}

@override
String toString() {
  final _this = this as CreateMistakeReportBody;
  return 'CreateMistakeReportBody(documentType: ${_this.documentType}, documentId: ${_this.documentId}, reason: ${_this.reason}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $CreateMistakeReportBodyCopyWith<$Res>  {
  factory $CreateMistakeReportBodyCopyWith(CreateMistakeReportBody value, $Res Function(CreateMistakeReportBody) _then) = _$CreateMistakeReportBodyCopyWithImpl;
@useResult
$Res call({
 CreateMistakeReportBodyDocumentType documentType, String documentId, CreateMistakeReportBodyReason reason, String? note
});




}
/// @nodoc
class _$CreateMistakeReportBodyCopyWithImpl<$Res>
    implements $CreateMistakeReportBodyCopyWith<$Res> {
  _$CreateMistakeReportBodyCopyWithImpl(this._self, this._then);

  final CreateMistakeReportBody _self;
  final $Res Function(CreateMistakeReportBody) _then;

/// Create a copy of CreateMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentType = null,Object? documentId = null,Object? reason = null,Object? note = freezed,}) {
  return _then(CreateMistakeReportBody(
documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as CreateMistakeReportBodyDocumentType,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CreateMistakeReportBodyReason,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateMistakeReportBody].
extension CreateMistakeReportBodyPatterns on CreateMistakeReportBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateMistakeReportBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateMistakeReportBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateMistakeReportBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateMistakeReportBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateMistakeReportBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateMistakeReportBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateMistakeReportBodyDocumentType documentType,  String documentId,  CreateMistakeReportBodyReason reason,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateMistakeReportBody() when $default != null:
return $default(_that.documentType,_that.documentId,_that.reason,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateMistakeReportBodyDocumentType documentType,  String documentId,  CreateMistakeReportBodyReason reason,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CreateMistakeReportBody():
return $default(_that.documentType,_that.documentId,_that.reason,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateMistakeReportBodyDocumentType documentType,  String documentId,  CreateMistakeReportBodyReason reason,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CreateMistakeReportBody() when $default != null:
return $default(_that.documentType,_that.documentId,_that.reason,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateMistakeReportBody implements CreateMistakeReportBody {
  const _CreateMistakeReportBody({required this.documentType, required this.documentId, required this.reason, this.note});
  factory _CreateMistakeReportBody.fromJson(Map<String, dynamic> json) => _$CreateMistakeReportBodyFromJson(json);

@override final  CreateMistakeReportBodyDocumentType documentType;
@override final  String documentId;
@override final  CreateMistakeReportBodyReason reason;
@override final  String? note;

/// Create a copy of CreateMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMistakeReportBodyCopyWith<_CreateMistakeReportBody> get copyWith => __$CreateMistakeReportBodyCopyWithImpl<_CreateMistakeReportBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateMistakeReportBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMistakeReportBody&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentType,documentId,reason,note);
}

@override
String toString() {
    return 'CreateMistakeReportBody(documentType: $documentType, documentId: $documentId, reason: $reason, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CreateMistakeReportBodyCopyWith<$Res> implements $CreateMistakeReportBodyCopyWith<$Res> {
  factory _$CreateMistakeReportBodyCopyWith(_CreateMistakeReportBody value, $Res Function(_CreateMistakeReportBody) _then) = __$CreateMistakeReportBodyCopyWithImpl;
@override @useResult
$Res call({
 CreateMistakeReportBodyDocumentType documentType, String documentId, CreateMistakeReportBodyReason reason, String? note
});




}
/// @nodoc
class __$CreateMistakeReportBodyCopyWithImpl<$Res>
    implements _$CreateMistakeReportBodyCopyWith<$Res> {
  __$CreateMistakeReportBodyCopyWithImpl(this._self, this._then);

  final _CreateMistakeReportBody _self;
  final $Res Function(_CreateMistakeReportBody) _then;

/// Create a copy of CreateMistakeReportBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentType = null,Object? documentId = null,Object? reason = null,Object? note = freezed,}) {
  return _then(_CreateMistakeReportBody(
documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as CreateMistakeReportBodyDocumentType,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CreateMistakeReportBodyReason,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
