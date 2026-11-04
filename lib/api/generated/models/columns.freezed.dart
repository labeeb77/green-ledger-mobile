// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'columns.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Columns {

 String get key; String get label; Kind3 get kind;
/// Create a copy of Columns
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColumnsCopyWith<Columns> get copyWith => _$ColumnsCopyWithImpl<Columns>(this as Columns, _$identity);

  /// Serializes this Columns to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Columns;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Columns&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.kind, _this.kind) || other.kind == _this.kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Columns;
  return Object.hash(runtimeType,_this.key,_this.label,_this.kind);
}

@override
String toString() {
  final _this = this as Columns;
  return 'Columns(key: ${_this.key}, label: ${_this.label}, kind: ${_this.kind})';
}


}

/// @nodoc
abstract mixin class $ColumnsCopyWith<$Res>  {
  factory $ColumnsCopyWith(Columns value, $Res Function(Columns) _then) = _$ColumnsCopyWithImpl;
@useResult
$Res call({
 String key, String label, Kind3 kind
});




}
/// @nodoc
class _$ColumnsCopyWithImpl<$Res>
    implements $ColumnsCopyWith<$Res> {
  _$ColumnsCopyWithImpl(this._self, this._then);

  final Columns _self;
  final $Res Function(Columns) _then;

/// Create a copy of Columns
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? label = null,Object? kind = null,}) {
  return _then(Columns(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as Kind3,
  ));
}

}


/// Adds pattern-matching-related methods to [Columns].
extension ColumnsPatterns on Columns {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Columns value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Columns() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Columns value)  $default,){
final _that = this;
switch (_that) {
case _Columns():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Columns value)?  $default,){
final _that = this;
switch (_that) {
case _Columns() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String label,  Kind3 kind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Columns() when $default != null:
return $default(_that.key,_that.label,_that.kind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String label,  Kind3 kind)  $default,) {final _that = this;
switch (_that) {
case _Columns():
return $default(_that.key,_that.label,_that.kind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String label,  Kind3 kind)?  $default,) {final _that = this;
switch (_that) {
case _Columns() when $default != null:
return $default(_that.key,_that.label,_that.kind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Columns implements Columns {
  const _Columns({required this.key, required this.label, required this.kind});
  factory _Columns.fromJson(Map<String, dynamic> json) => _$ColumnsFromJson(json);

@override final  String key;
@override final  String label;
@override final  Kind3 kind;

/// Create a copy of Columns
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColumnsCopyWith<_Columns> get copyWith => __$ColumnsCopyWithImpl<_Columns>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColumnsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Columns&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,key,label,kind);
}

@override
String toString() {
    return 'Columns(key: $key, label: $label, kind: $kind)';
}


}

/// @nodoc
abstract mixin class _$ColumnsCopyWith<$Res> implements $ColumnsCopyWith<$Res> {
  factory _$ColumnsCopyWith(_Columns value, $Res Function(_Columns) _then) = __$ColumnsCopyWithImpl;
@override @useResult
$Res call({
 String key, String label, Kind3 kind
});




}
/// @nodoc
class __$ColumnsCopyWithImpl<$Res>
    implements _$ColumnsCopyWith<$Res> {
  __$ColumnsCopyWithImpl(this._self, this._then);

  final _Columns _self;
  final $Res Function(_Columns) _then;

/// Create a copy of Columns
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? label = null,Object? kind = null,}) {
  return _then(_Columns(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as Kind3,
  ));
}


}

// dart format on
