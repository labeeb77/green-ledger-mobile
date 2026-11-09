// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Items3 {

 String get id; Document get document; Reason3 get reason; String? get note; Status7 get status; Reporter get reporter; DateTime get createdAt; ClosedBy? get closedBy; DateTime? get closedAt; String? get closeNote;
/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Items3CopyWith<Items3> get copyWith => _$Items3CopyWithImpl<Items3>(this as Items3, _$identity);

  /// Serializes this Items3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Items3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Items3&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.document, _this.document) || other.document == _this.document)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reporter, _this.reporter) || other.reporter == _this.reporter)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.closedBy, _this.closedBy) || other.closedBy == _this.closedBy)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.closeNote, _this.closeNote) || other.closeNote == _this.closeNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Items3;
  return Object.hash(runtimeType,_this.id,_this.document,_this.reason,_this.note,_this.status,_this.reporter,_this.createdAt,_this.closedBy,_this.closedAt,_this.closeNote);
}

@override
String toString() {
  final _this = this as Items3;
  return 'Items3(id: ${_this.id}, document: ${_this.document}, reason: ${_this.reason}, note: ${_this.note}, status: ${_this.status}, reporter: ${_this.reporter}, createdAt: ${_this.createdAt}, closedBy: ${_this.closedBy}, closedAt: ${_this.closedAt}, closeNote: ${_this.closeNote})';
}


}

/// @nodoc
abstract mixin class $Items3CopyWith<$Res>  {
  factory $Items3CopyWith(Items3 value, $Res Function(Items3) _then) = _$Items3CopyWithImpl;
@useResult
$Res call({
 String id, Document document, Reason3 reason, String? note, Status7 status, Reporter reporter, DateTime createdAt, ClosedBy? closedBy, DateTime? closedAt, String? closeNote
});


$DocumentCopyWith<$Res> get document;$ReporterCopyWith<$Res> get reporter;$ClosedByCopyWith<$Res>? get closedBy;

}
/// @nodoc
class _$Items3CopyWithImpl<$Res>
    implements $Items3CopyWith<$Res> {
  _$Items3CopyWithImpl(this._self, this._then);

  final Items3 _self;
  final $Res Function(Items3) _then;

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? document = null,Object? reason = null,Object? note = freezed,Object? status = null,Object? reporter = null,Object? createdAt = null,Object? closedBy = freezed,Object? closedAt = freezed,Object? closeNote = freezed,}) {
  return _then(Items3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,document: null == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as Document,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as Reason3,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status7,reporter: null == reporter ? _self.reporter : reporter // ignore: cast_nullable_to_non_nullable
as Reporter,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedBy: freezed == closedBy ? _self.closedBy : closedBy // ignore: cast_nullable_to_non_nullable
as ClosedBy?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closeNote: freezed == closeNote ? _self.closeNote : closeNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentCopyWith<$Res> get document {
  
  return $DocumentCopyWith<$Res>(_self.document, (value) {
    return _then(_self.copyWith(document: value));
  });
}/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReporterCopyWith<$Res> get reporter {
  
  return $ReporterCopyWith<$Res>(_self.reporter, (value) {
    return _then(_self.copyWith(reporter: value));
  });
}/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClosedByCopyWith<$Res>? get closedBy {
    if (_self.closedBy == null) {
    return null;
  }

  return $ClosedByCopyWith<$Res>(_self.closedBy!, (value) {
    return _then(_self.copyWith(closedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Items3].
extension Items3Patterns on Items3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Items3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Items3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Items3 value)  $default,){
final _that = this;
switch (_that) {
case _Items3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Items3 value)?  $default,){
final _that = this;
switch (_that) {
case _Items3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Document document,  Reason3 reason,  String? note,  Status7 status,  Reporter reporter,  DateTime createdAt,  ClosedBy? closedBy,  DateTime? closedAt,  String? closeNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Items3() when $default != null:
return $default(_that.id,_that.document,_that.reason,_that.note,_that.status,_that.reporter,_that.createdAt,_that.closedBy,_that.closedAt,_that.closeNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Document document,  Reason3 reason,  String? note,  Status7 status,  Reporter reporter,  DateTime createdAt,  ClosedBy? closedBy,  DateTime? closedAt,  String? closeNote)  $default,) {final _that = this;
switch (_that) {
case _Items3():
return $default(_that.id,_that.document,_that.reason,_that.note,_that.status,_that.reporter,_that.createdAt,_that.closedBy,_that.closedAt,_that.closeNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Document document,  Reason3 reason,  String? note,  Status7 status,  Reporter reporter,  DateTime createdAt,  ClosedBy? closedBy,  DateTime? closedAt,  String? closeNote)?  $default,) {final _that = this;
switch (_that) {
case _Items3() when $default != null:
return $default(_that.id,_that.document,_that.reason,_that.note,_that.status,_that.reporter,_that.createdAt,_that.closedBy,_that.closedAt,_that.closeNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Items3 implements Items3 {
  const _Items3({required this.id, required this.document, required this.reason, required this.note, required this.status, required this.reporter, required this.createdAt, required this.closedBy, required this.closedAt, required this.closeNote});
  factory _Items3.fromJson(Map<String, dynamic> json) => _$Items3FromJson(json);

@override final  String id;
@override final  Document document;
@override final  Reason3 reason;
@override final  String? note;
@override final  Status7 status;
@override final  Reporter reporter;
@override final  DateTime createdAt;
@override final  ClosedBy? closedBy;
@override final  DateTime? closedAt;
@override final  String? closeNote;

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Items3CopyWith<_Items3> get copyWith => __$Items3CopyWithImpl<_Items3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Items3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Items3&&(identical(other.id, id) || other.id == id)&&(identical(other.document, document) || other.document == document)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.reporter, reporter) || other.reporter == reporter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.closedBy, closedBy) || other.closedBy == closedBy)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.closeNote, closeNote) || other.closeNote == closeNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,document,reason,note,status,reporter,createdAt,closedBy,closedAt,closeNote);
}

@override
String toString() {
    return 'Items3(id: $id, document: $document, reason: $reason, note: $note, status: $status, reporter: $reporter, createdAt: $createdAt, closedBy: $closedBy, closedAt: $closedAt, closeNote: $closeNote)';
}


}

/// @nodoc
abstract mixin class _$Items3CopyWith<$Res> implements $Items3CopyWith<$Res> {
  factory _$Items3CopyWith(_Items3 value, $Res Function(_Items3) _then) = __$Items3CopyWithImpl;
@override @useResult
$Res call({
 String id, Document document, Reason3 reason, String? note, Status7 status, Reporter reporter, DateTime createdAt, ClosedBy? closedBy, DateTime? closedAt, String? closeNote
});


@override $DocumentCopyWith<$Res> get document;@override $ReporterCopyWith<$Res> get reporter;@override $ClosedByCopyWith<$Res>? get closedBy;

}
/// @nodoc
class __$Items3CopyWithImpl<$Res>
    implements _$Items3CopyWith<$Res> {
  __$Items3CopyWithImpl(this._self, this._then);

  final _Items3 _self;
  final $Res Function(_Items3) _then;

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? document = null,Object? reason = null,Object? note = freezed,Object? status = null,Object? reporter = null,Object? createdAt = null,Object? closedBy = freezed,Object? closedAt = freezed,Object? closeNote = freezed,}) {
  return _then(_Items3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,document: null == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as Document,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as Reason3,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status7,reporter: null == reporter ? _self.reporter : reporter // ignore: cast_nullable_to_non_nullable
as Reporter,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedBy: freezed == closedBy ? _self.closedBy : closedBy // ignore: cast_nullable_to_non_nullable
as ClosedBy?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closeNote: freezed == closeNote ? _self.closeNote : closeNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentCopyWith<$Res> get document {
  
  return $DocumentCopyWith<$Res>(_self.document, (value) {
    return _then(_self.copyWith(document: value));
  });
}/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReporterCopyWith<$Res> get reporter {
  
  return $ReporterCopyWith<$Res>(_self.reporter, (value) {
    return _then(_self.copyWith(reporter: value));
  });
}/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClosedByCopyWith<$Res>? get closedBy {
    if (_self.closedBy == null) {
    return null;
  }

  return $ClosedByCopyWith<$Res>(_self.closedBy!, (value) {
    return _then(_self.copyWith(closedBy: value));
  });
}
}

// dart format on
