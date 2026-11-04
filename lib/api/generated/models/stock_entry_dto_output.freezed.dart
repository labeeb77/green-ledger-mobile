// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_entry_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockEntryDtoOutput {

 String get id; String? get number; StockEntryDtoOutputType get type; DateTime get entryDate; StockEntryDtoOutputStatus get status; int? get value; String? get notes; String? get photoUrl; CreatedBy2? get createdBy; String? get approvalId; List<Lines7> get lines; List<String> get warnings; DateTime get createdAt; String? get cancelReason;
/// Create a copy of StockEntryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockEntryDtoOutputCopyWith<StockEntryDtoOutput> get copyWith => _$StockEntryDtoOutputCopyWithImpl<StockEntryDtoOutput>(this as StockEntryDtoOutput, _$identity);

  /// Serializes this StockEntryDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockEntryDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockEntryDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&const DeepCollectionEquality().equals(other.warnings, _this.warnings)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockEntryDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.type,_this.entryDate,_this.status,_this.value,_this.notes,_this.photoUrl,_this.createdBy,_this.approvalId,const DeepCollectionEquality().hash(_this.lines),const DeepCollectionEquality().hash(_this.warnings),_this.createdAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as StockEntryDtoOutput;
  return 'StockEntryDtoOutput(id: ${_this.id}, number: ${_this.number}, type: ${_this.type}, entryDate: ${_this.entryDate}, status: ${_this.status}, value: ${_this.value}, notes: ${_this.notes}, photoUrl: ${_this.photoUrl}, createdBy: ${_this.createdBy}, approvalId: ${_this.approvalId}, lines: ${_this.lines}, warnings: ${_this.warnings}, createdAt: ${_this.createdAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $StockEntryDtoOutputCopyWith<$Res>  {
  factory $StockEntryDtoOutputCopyWith(StockEntryDtoOutput value, $Res Function(StockEntryDtoOutput) _then) = _$StockEntryDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String? number, StockEntryDtoOutputType type, DateTime entryDate, StockEntryDtoOutputStatus status, int? value, String? notes, String? photoUrl, CreatedBy2? createdBy, String? approvalId, List<Lines7> lines, List<String> warnings, DateTime createdAt, String? cancelReason
});


$CreatedBy2CopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$StockEntryDtoOutputCopyWithImpl<$Res>
    implements $StockEntryDtoOutputCopyWith<$Res> {
  _$StockEntryDtoOutputCopyWithImpl(this._self, this._then);

  final StockEntryDtoOutput _self;
  final $Res Function(StockEntryDtoOutput) _then;

/// Create a copy of StockEntryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = freezed,Object? type = null,Object? entryDate = null,Object? status = null,Object? value = freezed,Object? notes = freezed,Object? photoUrl = freezed,Object? createdBy = freezed,Object? approvalId = freezed,Object? lines = null,Object? warnings = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(StockEntryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StockEntryDtoOutputType,entryDate: null == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StockEntryDtoOutputStatus,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy2?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines7>,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of StockEntryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy2CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy2CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [StockEntryDtoOutput].
extension StockEntryDtoOutputPatterns on StockEntryDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockEntryDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockEntryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockEntryDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _StockEntryDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockEntryDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _StockEntryDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? number,  StockEntryDtoOutputType type,  DateTime entryDate,  StockEntryDtoOutputStatus status,  int? value,  String? notes,  String? photoUrl,  CreatedBy2? createdBy,  String? approvalId,  List<Lines7> lines,  List<String> warnings,  DateTime createdAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockEntryDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.type,_that.entryDate,_that.status,_that.value,_that.notes,_that.photoUrl,_that.createdBy,_that.approvalId,_that.lines,_that.warnings,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? number,  StockEntryDtoOutputType type,  DateTime entryDate,  StockEntryDtoOutputStatus status,  int? value,  String? notes,  String? photoUrl,  CreatedBy2? createdBy,  String? approvalId,  List<Lines7> lines,  List<String> warnings,  DateTime createdAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _StockEntryDtoOutput():
return $default(_that.id,_that.number,_that.type,_that.entryDate,_that.status,_that.value,_that.notes,_that.photoUrl,_that.createdBy,_that.approvalId,_that.lines,_that.warnings,_that.createdAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? number,  StockEntryDtoOutputType type,  DateTime entryDate,  StockEntryDtoOutputStatus status,  int? value,  String? notes,  String? photoUrl,  CreatedBy2? createdBy,  String? approvalId,  List<Lines7> lines,  List<String> warnings,  DateTime createdAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _StockEntryDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.type,_that.entryDate,_that.status,_that.value,_that.notes,_that.photoUrl,_that.createdBy,_that.approvalId,_that.lines,_that.warnings,_that.createdAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockEntryDtoOutput implements StockEntryDtoOutput {
  const _StockEntryDtoOutput({required this.id, required this.number, required this.type, required this.entryDate, required this.status, required this.value, required this.notes, required this.photoUrl, required this.createdBy, required this.approvalId, required  List<Lines7> lines, required  List<String> warnings, required this.createdAt, required this.cancelReason}): _lines = lines,_warnings = warnings;
  factory _StockEntryDtoOutput.fromJson(Map<String, dynamic> json) => _$StockEntryDtoOutputFromJson(json);

@override final  String id;
@override final  String? number;
@override final  StockEntryDtoOutputType type;
@override final  DateTime entryDate;
@override final  StockEntryDtoOutputStatus status;
@override final  int? value;
@override final  String? notes;
@override final  String? photoUrl;
@override final  CreatedBy2? createdBy;
@override final  String? approvalId;
 final  List<Lines7> _lines;
@override List<Lines7> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  List<String> _warnings;
@override List<String> get warnings {
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warnings);
}

@override final  DateTime createdAt;
@override final  String? cancelReason;

/// Create a copy of StockEntryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockEntryDtoOutputCopyWith<_StockEntryDtoOutput> get copyWith => __$StockEntryDtoOutputCopyWithImpl<_StockEntryDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockEntryDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockEntryDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.value, value) || other.value == value)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&const DeepCollectionEquality().equals(other.warnings, _warnings)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,type,entryDate,status,value,notes,photoUrl,createdBy,approvalId,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_warnings),createdAt,cancelReason);
}

@override
String toString() {
    return 'StockEntryDtoOutput(id: $id, number: $number, type: $type, entryDate: $entryDate, status: $status, value: $value, notes: $notes, photoUrl: $photoUrl, createdBy: $createdBy, approvalId: $approvalId, lines: $lines, warnings: $warnings, createdAt: $createdAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$StockEntryDtoOutputCopyWith<$Res> implements $StockEntryDtoOutputCopyWith<$Res> {
  factory _$StockEntryDtoOutputCopyWith(_StockEntryDtoOutput value, $Res Function(_StockEntryDtoOutput) _then) = __$StockEntryDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? number, StockEntryDtoOutputType type, DateTime entryDate, StockEntryDtoOutputStatus status, int? value, String? notes, String? photoUrl, CreatedBy2? createdBy, String? approvalId, List<Lines7> lines, List<String> warnings, DateTime createdAt, String? cancelReason
});


@override $CreatedBy2CopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$StockEntryDtoOutputCopyWithImpl<$Res>
    implements _$StockEntryDtoOutputCopyWith<$Res> {
  __$StockEntryDtoOutputCopyWithImpl(this._self, this._then);

  final _StockEntryDtoOutput _self;
  final $Res Function(_StockEntryDtoOutput) _then;

/// Create a copy of StockEntryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = freezed,Object? type = null,Object? entryDate = null,Object? status = null,Object? value = freezed,Object? notes = freezed,Object? photoUrl = freezed,Object? createdBy = freezed,Object? approvalId = freezed,Object? lines = null,Object? warnings = null,Object? createdAt = null,Object? cancelReason = freezed,}) {
  return _then(_StockEntryDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StockEntryDtoOutputType,entryDate: null == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StockEntryDtoOutputStatus,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy2?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines7>,warnings: null == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of StockEntryDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy2CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy2CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
