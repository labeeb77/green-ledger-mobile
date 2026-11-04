// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_count_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockCountDtoOutput {

 String get id; String? get number; DateTime get countDate; StockCountDtoOutputStatus get status; String? get notes; CreatedBy3? get createdBy; String? get approvalId; List<Lines10> get lines; DateTime? get postedAt; DateTime get createdAt;
/// Create a copy of StockCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockCountDtoOutputCopyWith<StockCountDtoOutput> get copyWith => _$StockCountDtoOutputCopyWithImpl<StockCountDtoOutput>(this as StockCountDtoOutput, _$identity);

  /// Serializes this StockCountDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockCountDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockCountDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.countDate, _this.countDate) || other.countDate == _this.countDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.approvalId, _this.approvalId) || other.approvalId == _this.approvalId)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.postedAt, _this.postedAt) || other.postedAt == _this.postedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockCountDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.number,_this.countDate,_this.status,_this.notes,_this.createdBy,_this.approvalId,const DeepCollectionEquality().hash(_this.lines),_this.postedAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as StockCountDtoOutput;
  return 'StockCountDtoOutput(id: ${_this.id}, number: ${_this.number}, countDate: ${_this.countDate}, status: ${_this.status}, notes: ${_this.notes}, createdBy: ${_this.createdBy}, approvalId: ${_this.approvalId}, lines: ${_this.lines}, postedAt: ${_this.postedAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $StockCountDtoOutputCopyWith<$Res>  {
  factory $StockCountDtoOutputCopyWith(StockCountDtoOutput value, $Res Function(StockCountDtoOutput) _then) = _$StockCountDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String? number, DateTime countDate, StockCountDtoOutputStatus status, String? notes, CreatedBy3? createdBy, String? approvalId, List<Lines10> lines, DateTime? postedAt, DateTime createdAt
});


$CreatedBy3CopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$StockCountDtoOutputCopyWithImpl<$Res>
    implements $StockCountDtoOutputCopyWith<$Res> {
  _$StockCountDtoOutputCopyWithImpl(this._self, this._then);

  final StockCountDtoOutput _self;
  final $Res Function(StockCountDtoOutput) _then;

/// Create a copy of StockCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = freezed,Object? countDate = null,Object? status = null,Object? notes = freezed,Object? createdBy = freezed,Object? approvalId = freezed,Object? lines = null,Object? postedAt = freezed,Object? createdAt = null,}) {
  return _then(StockCountDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,countDate: null == countDate ? _self.countDate : countDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StockCountDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy3?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines10>,postedAt: freezed == postedAt ? _self.postedAt : postedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of StockCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy3CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy3CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [StockCountDtoOutput].
extension StockCountDtoOutputPatterns on StockCountDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockCountDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockCountDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockCountDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _StockCountDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockCountDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _StockCountDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? number,  DateTime countDate,  StockCountDtoOutputStatus status,  String? notes,  CreatedBy3? createdBy,  String? approvalId,  List<Lines10> lines,  DateTime? postedAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockCountDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.countDate,_that.status,_that.notes,_that.createdBy,_that.approvalId,_that.lines,_that.postedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? number,  DateTime countDate,  StockCountDtoOutputStatus status,  String? notes,  CreatedBy3? createdBy,  String? approvalId,  List<Lines10> lines,  DateTime? postedAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _StockCountDtoOutput():
return $default(_that.id,_that.number,_that.countDate,_that.status,_that.notes,_that.createdBy,_that.approvalId,_that.lines,_that.postedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? number,  DateTime countDate,  StockCountDtoOutputStatus status,  String? notes,  CreatedBy3? createdBy,  String? approvalId,  List<Lines10> lines,  DateTime? postedAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StockCountDtoOutput() when $default != null:
return $default(_that.id,_that.number,_that.countDate,_that.status,_that.notes,_that.createdBy,_that.approvalId,_that.lines,_that.postedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockCountDtoOutput implements StockCountDtoOutput {
  const _StockCountDtoOutput({required this.id, required this.number, required this.countDate, required this.status, required this.notes, required this.createdBy, required this.approvalId, required  List<Lines10> lines, required this.postedAt, required this.createdAt}): _lines = lines;
  factory _StockCountDtoOutput.fromJson(Map<String, dynamic> json) => _$StockCountDtoOutputFromJson(json);

@override final  String id;
@override final  String? number;
@override final  DateTime countDate;
@override final  StockCountDtoOutputStatus status;
@override final  String? notes;
@override final  CreatedBy3? createdBy;
@override final  String? approvalId;
 final  List<Lines10> _lines;
@override List<Lines10> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override final  DateTime? postedAt;
@override final  DateTime createdAt;

/// Create a copy of StockCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockCountDtoOutputCopyWith<_StockCountDtoOutput> get copyWith => __$StockCountDtoOutputCopyWithImpl<_StockCountDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockCountDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockCountDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.countDate, countDate) || other.countDate == countDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.approvalId, approvalId) || other.approvalId == approvalId)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.postedAt, postedAt) || other.postedAt == postedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,number,countDate,status,notes,createdBy,approvalId,const DeepCollectionEquality().hash(_lines),postedAt,createdAt);
}

@override
String toString() {
    return 'StockCountDtoOutput(id: $id, number: $number, countDate: $countDate, status: $status, notes: $notes, createdBy: $createdBy, approvalId: $approvalId, lines: $lines, postedAt: $postedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StockCountDtoOutputCopyWith<$Res> implements $StockCountDtoOutputCopyWith<$Res> {
  factory _$StockCountDtoOutputCopyWith(_StockCountDtoOutput value, $Res Function(_StockCountDtoOutput) _then) = __$StockCountDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? number, DateTime countDate, StockCountDtoOutputStatus status, String? notes, CreatedBy3? createdBy, String? approvalId, List<Lines10> lines, DateTime? postedAt, DateTime createdAt
});


@override $CreatedBy3CopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$StockCountDtoOutputCopyWithImpl<$Res>
    implements _$StockCountDtoOutputCopyWith<$Res> {
  __$StockCountDtoOutputCopyWithImpl(this._self, this._then);

  final _StockCountDtoOutput _self;
  final $Res Function(_StockCountDtoOutput) _then;

/// Create a copy of StockCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = freezed,Object? countDate = null,Object? status = null,Object? notes = freezed,Object? createdBy = freezed,Object? approvalId = freezed,Object? lines = null,Object? postedAt = freezed,Object? createdAt = null,}) {
  return _then(_StockCountDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,countDate: null == countDate ? _self.countDate : countDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StockCountDtoOutputStatus,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as CreatedBy3?,approvalId: freezed == approvalId ? _self.approvalId : approvalId // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<Lines10>,postedAt: freezed == postedAt ? _self.postedAt : postedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of StockCountDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedBy3CopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $CreatedBy3CopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
