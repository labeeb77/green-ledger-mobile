// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statement_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatementDtoOutput {

 DateTime get from; DateTime get to; int get opening; List<Entries> get entries; int get closing;
/// Create a copy of StatementDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatementDtoOutputCopyWith<StatementDtoOutput> get copyWith => _$StatementDtoOutputCopyWithImpl<StatementDtoOutput>(this as StatementDtoOutput, _$identity);

  /// Serializes this StatementDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StatementDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatementDtoOutput&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.opening, _this.opening) || other.opening == _this.opening)&&const DeepCollectionEquality().equals(other.entries, _this.entries)&&(identical(other.closing, _this.closing) || other.closing == _this.closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StatementDtoOutput;
  return Object.hash(runtimeType,_this.from,_this.to,_this.opening,const DeepCollectionEquality().hash(_this.entries),_this.closing);
}

@override
String toString() {
  final _this = this as StatementDtoOutput;
  return 'StatementDtoOutput(from: ${_this.from}, to: ${_this.to}, opening: ${_this.opening}, entries: ${_this.entries}, closing: ${_this.closing})';
}


}

/// @nodoc
abstract mixin class $StatementDtoOutputCopyWith<$Res>  {
  factory $StatementDtoOutputCopyWith(StatementDtoOutput value, $Res Function(StatementDtoOutput) _then) = _$StatementDtoOutputCopyWithImpl;
@useResult
$Res call({
 DateTime from, DateTime to, int opening, List<Entries> entries, int closing
});




}
/// @nodoc
class _$StatementDtoOutputCopyWithImpl<$Res>
    implements $StatementDtoOutputCopyWith<$Res> {
  _$StatementDtoOutputCopyWithImpl(this._self, this._then);

  final StatementDtoOutput _self;
  final $Res Function(StatementDtoOutput) _then;

/// Create a copy of StatementDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = null,Object? to = null,Object? opening = null,Object? entries = null,Object? closing = null,}) {
  return _then(StatementDtoOutput(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as int,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entries>,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StatementDtoOutput].
extension StatementDtoOutputPatterns on StatementDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatementDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatementDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatementDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _StatementDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatementDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _StatementDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime from,  DateTime to,  int opening,  List<Entries> entries,  int closing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatementDtoOutput() when $default != null:
return $default(_that.from,_that.to,_that.opening,_that.entries,_that.closing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime from,  DateTime to,  int opening,  List<Entries> entries,  int closing)  $default,) {final _that = this;
switch (_that) {
case _StatementDtoOutput():
return $default(_that.from,_that.to,_that.opening,_that.entries,_that.closing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime from,  DateTime to,  int opening,  List<Entries> entries,  int closing)?  $default,) {final _that = this;
switch (_that) {
case _StatementDtoOutput() when $default != null:
return $default(_that.from,_that.to,_that.opening,_that.entries,_that.closing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatementDtoOutput implements StatementDtoOutput {
  const _StatementDtoOutput({required this.from, required this.to, required this.opening, required  List<Entries> entries, required this.closing}): _entries = entries;
  factory _StatementDtoOutput.fromJson(Map<String, dynamic> json) => _$StatementDtoOutputFromJson(json);

@override final  DateTime from;
@override final  DateTime to;
@override final  int opening;
 final  List<Entries> _entries;
@override List<Entries> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override final  int closing;

/// Create a copy of StatementDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatementDtoOutputCopyWith<_StatementDtoOutput> get copyWith => __$StatementDtoOutputCopyWithImpl<_StatementDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatementDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatementDtoOutput&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.opening, opening) || other.opening == opening)&&const DeepCollectionEquality().equals(other.entries, _entries)&&(identical(other.closing, closing) || other.closing == closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to,opening,const DeepCollectionEquality().hash(_entries),closing);
}

@override
String toString() {
    return 'StatementDtoOutput(from: $from, to: $to, opening: $opening, entries: $entries, closing: $closing)';
}


}

/// @nodoc
abstract mixin class _$StatementDtoOutputCopyWith<$Res> implements $StatementDtoOutputCopyWith<$Res> {
  factory _$StatementDtoOutputCopyWith(_StatementDtoOutput value, $Res Function(_StatementDtoOutput) _then) = __$StatementDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 DateTime from, DateTime to, int opening, List<Entries> entries, int closing
});




}
/// @nodoc
class __$StatementDtoOutputCopyWithImpl<$Res>
    implements _$StatementDtoOutputCopyWith<$Res> {
  __$StatementDtoOutputCopyWithImpl(this._self, this._then);

  final _StatementDtoOutput _self;
  final $Res Function(_StatementDtoOutput) _then;

/// Create a copy of StatementDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,Object? opening = null,Object? entries = null,Object? closing = null,}) {
  return _then(_StatementDtoOutput(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as int,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entries>,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
