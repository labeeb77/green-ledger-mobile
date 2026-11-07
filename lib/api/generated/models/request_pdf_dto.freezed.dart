// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_pdf_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestPdfDto {

 RequestPdfDtoTemplate get template; String? get id; RequestPdfDtoFormat? get format; String? get from; String? get to; RequestPdfDtoReport? get report; RequestPdfDtoGroupBy? get groupBy;
/// Create a copy of RequestPdfDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestPdfDtoCopyWith<RequestPdfDto> get copyWith => _$RequestPdfDtoCopyWithImpl<RequestPdfDto>(this as RequestPdfDto, _$identity);

  /// Serializes this RequestPdfDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RequestPdfDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestPdfDto&&(identical(other.template, _this.template) || other.template == _this.template)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.format, _this.format) || other.format == _this.format)&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.report, _this.report) || other.report == _this.report)&&(identical(other.groupBy, _this.groupBy) || other.groupBy == _this.groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RequestPdfDto;
  return Object.hash(runtimeType,_this.template,_this.id,_this.format,_this.from,_this.to,_this.report,_this.groupBy);
}

@override
String toString() {
  final _this = this as RequestPdfDto;
  return 'RequestPdfDto(template: ${_this.template}, id: ${_this.id}, format: ${_this.format}, from: ${_this.from}, to: ${_this.to}, report: ${_this.report}, groupBy: ${_this.groupBy})';
}


}

/// @nodoc
abstract mixin class $RequestPdfDtoCopyWith<$Res>  {
  factory $RequestPdfDtoCopyWith(RequestPdfDto value, $Res Function(RequestPdfDto) _then) = _$RequestPdfDtoCopyWithImpl;
@useResult
$Res call({
 RequestPdfDtoTemplate template, String? id, RequestPdfDtoFormat? format, String? from, String? to, RequestPdfDtoReport? report, RequestPdfDtoGroupBy? groupBy
});




}
/// @nodoc
class _$RequestPdfDtoCopyWithImpl<$Res>
    implements $RequestPdfDtoCopyWith<$Res> {
  _$RequestPdfDtoCopyWithImpl(this._self, this._then);

  final RequestPdfDto _self;
  final $Res Function(RequestPdfDto) _then;

/// Create a copy of RequestPdfDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? template = null,Object? id = freezed,Object? format = freezed,Object? from = freezed,Object? to = freezed,Object? report = freezed,Object? groupBy = freezed,}) {
  return _then(RequestPdfDto(
template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoTemplate,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoFormat?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,report: freezed == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoReport?,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoGroupBy?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestPdfDto].
extension RequestPdfDtoPatterns on RequestPdfDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestPdfDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestPdfDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestPdfDto value)  $default,){
final _that = this;
switch (_that) {
case _RequestPdfDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestPdfDto value)?  $default,){
final _that = this;
switch (_that) {
case _RequestPdfDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestPdfDtoTemplate template,  String? id,  RequestPdfDtoFormat? format,  String? from,  String? to,  RequestPdfDtoReport? report,  RequestPdfDtoGroupBy? groupBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestPdfDto() when $default != null:
return $default(_that.template,_that.id,_that.format,_that.from,_that.to,_that.report,_that.groupBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestPdfDtoTemplate template,  String? id,  RequestPdfDtoFormat? format,  String? from,  String? to,  RequestPdfDtoReport? report,  RequestPdfDtoGroupBy? groupBy)  $default,) {final _that = this;
switch (_that) {
case _RequestPdfDto():
return $default(_that.template,_that.id,_that.format,_that.from,_that.to,_that.report,_that.groupBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestPdfDtoTemplate template,  String? id,  RequestPdfDtoFormat? format,  String? from,  String? to,  RequestPdfDtoReport? report,  RequestPdfDtoGroupBy? groupBy)?  $default,) {final _that = this;
switch (_that) {
case _RequestPdfDto() when $default != null:
return $default(_that.template,_that.id,_that.format,_that.from,_that.to,_that.report,_that.groupBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestPdfDto implements RequestPdfDto {
  const _RequestPdfDto({required this.template, this.id, this.format, this.from, this.to, this.report, this.groupBy});
  factory _RequestPdfDto.fromJson(Map<String, dynamic> json) => _$RequestPdfDtoFromJson(json);

@override final  RequestPdfDtoTemplate template;
@override final  String? id;
@override final  RequestPdfDtoFormat? format;
@override final  String? from;
@override final  String? to;
@override final  RequestPdfDtoReport? report;
@override final  RequestPdfDtoGroupBy? groupBy;

/// Create a copy of RequestPdfDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestPdfDtoCopyWith<_RequestPdfDto> get copyWith => __$RequestPdfDtoCopyWithImpl<_RequestPdfDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestPdfDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestPdfDto&&(identical(other.template, template) || other.template == template)&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.report, report) || other.report == report)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,template,id,format,from,to,report,groupBy);
}

@override
String toString() {
    return 'RequestPdfDto(template: $template, id: $id, format: $format, from: $from, to: $to, report: $report, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class _$RequestPdfDtoCopyWith<$Res> implements $RequestPdfDtoCopyWith<$Res> {
  factory _$RequestPdfDtoCopyWith(_RequestPdfDto value, $Res Function(_RequestPdfDto) _then) = __$RequestPdfDtoCopyWithImpl;
@override @useResult
$Res call({
 RequestPdfDtoTemplate template, String? id, RequestPdfDtoFormat? format, String? from, String? to, RequestPdfDtoReport? report, RequestPdfDtoGroupBy? groupBy
});




}
/// @nodoc
class __$RequestPdfDtoCopyWithImpl<$Res>
    implements _$RequestPdfDtoCopyWith<$Res> {
  __$RequestPdfDtoCopyWithImpl(this._self, this._then);

  final _RequestPdfDto _self;
  final $Res Function(_RequestPdfDto) _then;

/// Create a copy of RequestPdfDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? template = null,Object? id = freezed,Object? format = freezed,Object? from = freezed,Object? to = freezed,Object? report = freezed,Object? groupBy = freezed,}) {
  return _then(_RequestPdfDto(
template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoTemplate,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoFormat?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,report: freezed == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoReport?,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as RequestPdfDtoGroupBy?,
  ));
}


}

// dart format on
