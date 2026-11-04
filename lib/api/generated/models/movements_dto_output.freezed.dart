// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movements_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovementsDtoOutput {

 Product7 get product; DateTime get from; DateTime get to; String get opening; List<Entries2> get entries; String get closing;
/// Create a copy of MovementsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovementsDtoOutputCopyWith<MovementsDtoOutput> get copyWith => _$MovementsDtoOutputCopyWithImpl<MovementsDtoOutput>(this as MovementsDtoOutput, _$identity);

  /// Serializes this MovementsDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MovementsDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovementsDtoOutput&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.opening, _this.opening) || other.opening == _this.opening)&&const DeepCollectionEquality().equals(other.entries, _this.entries)&&(identical(other.closing, _this.closing) || other.closing == _this.closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MovementsDtoOutput;
  return Object.hash(runtimeType,_this.product,_this.from,_this.to,_this.opening,const DeepCollectionEquality().hash(_this.entries),_this.closing);
}

@override
String toString() {
  final _this = this as MovementsDtoOutput;
  return 'MovementsDtoOutput(product: ${_this.product}, from: ${_this.from}, to: ${_this.to}, opening: ${_this.opening}, entries: ${_this.entries}, closing: ${_this.closing})';
}


}

/// @nodoc
abstract mixin class $MovementsDtoOutputCopyWith<$Res>  {
  factory $MovementsDtoOutputCopyWith(MovementsDtoOutput value, $Res Function(MovementsDtoOutput) _then) = _$MovementsDtoOutputCopyWithImpl;
@useResult
$Res call({
 Product7 product, DateTime from, DateTime to, String opening, List<Entries2> entries, String closing
});


$Product7CopyWith<$Res> get product;

}
/// @nodoc
class _$MovementsDtoOutputCopyWithImpl<$Res>
    implements $MovementsDtoOutputCopyWith<$Res> {
  _$MovementsDtoOutputCopyWithImpl(this._self, this._then);

  final MovementsDtoOutput _self;
  final $Res Function(MovementsDtoOutput) _then;

/// Create a copy of MovementsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? from = null,Object? to = null,Object? opening = null,Object? entries = null,Object? closing = null,}) {
  return _then(MovementsDtoOutput(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product7,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entries2>,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MovementsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product7CopyWith<$Res> get product {
  
  return $Product7CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [MovementsDtoOutput].
extension MovementsDtoOutputPatterns on MovementsDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovementsDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovementsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovementsDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _MovementsDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovementsDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _MovementsDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product7 product,  DateTime from,  DateTime to,  String opening,  List<Entries2> entries,  String closing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovementsDtoOutput() when $default != null:
return $default(_that.product,_that.from,_that.to,_that.opening,_that.entries,_that.closing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product7 product,  DateTime from,  DateTime to,  String opening,  List<Entries2> entries,  String closing)  $default,) {final _that = this;
switch (_that) {
case _MovementsDtoOutput():
return $default(_that.product,_that.from,_that.to,_that.opening,_that.entries,_that.closing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product7 product,  DateTime from,  DateTime to,  String opening,  List<Entries2> entries,  String closing)?  $default,) {final _that = this;
switch (_that) {
case _MovementsDtoOutput() when $default != null:
return $default(_that.product,_that.from,_that.to,_that.opening,_that.entries,_that.closing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovementsDtoOutput implements MovementsDtoOutput {
  const _MovementsDtoOutput({required this.product, required this.from, required this.to, required this.opening, required  List<Entries2> entries, required this.closing}): _entries = entries;
  factory _MovementsDtoOutput.fromJson(Map<String, dynamic> json) => _$MovementsDtoOutputFromJson(json);

@override final  Product7 product;
@override final  DateTime from;
@override final  DateTime to;
@override final  String opening;
 final  List<Entries2> _entries;
@override List<Entries2> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override final  String closing;

/// Create a copy of MovementsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovementsDtoOutputCopyWith<_MovementsDtoOutput> get copyWith => __$MovementsDtoOutputCopyWithImpl<_MovementsDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovementsDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovementsDtoOutput&&(identical(other.product, product) || other.product == product)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.opening, opening) || other.opening == opening)&&const DeepCollectionEquality().equals(other.entries, _entries)&&(identical(other.closing, closing) || other.closing == closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,product,from,to,opening,const DeepCollectionEquality().hash(_entries),closing);
}

@override
String toString() {
    return 'MovementsDtoOutput(product: $product, from: $from, to: $to, opening: $opening, entries: $entries, closing: $closing)';
}


}

/// @nodoc
abstract mixin class _$MovementsDtoOutputCopyWith<$Res> implements $MovementsDtoOutputCopyWith<$Res> {
  factory _$MovementsDtoOutputCopyWith(_MovementsDtoOutput value, $Res Function(_MovementsDtoOutput) _then) = __$MovementsDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 Product7 product, DateTime from, DateTime to, String opening, List<Entries2> entries, String closing
});


@override $Product7CopyWith<$Res> get product;

}
/// @nodoc
class __$MovementsDtoOutputCopyWithImpl<$Res>
    implements _$MovementsDtoOutputCopyWith<$Res> {
  __$MovementsDtoOutputCopyWithImpl(this._self, this._then);

  final _MovementsDtoOutput _self;
  final $Res Function(_MovementsDtoOutput) _then;

/// Create a copy of MovementsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? from = null,Object? to = null,Object? opening = null,Object? entries = null,Object? closing = null,}) {
  return _then(_MovementsDtoOutput(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product7,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entries2>,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MovementsDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Product7CopyWith<$Res> get product {
  
  return $Product7CopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
