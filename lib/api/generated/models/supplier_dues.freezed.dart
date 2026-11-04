// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_dues.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierDues {

 int get total; Link4 get link;
/// Create a copy of SupplierDues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierDuesCopyWith<SupplierDues> get copyWith => _$SupplierDuesCopyWithImpl<SupplierDues>(this as SupplierDues, _$identity);

  /// Serializes this SupplierDues to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupplierDues;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierDues&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.link, _this.link) || other.link == _this.link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupplierDues;
  return Object.hash(runtimeType,_this.total,_this.link);
}

@override
String toString() {
  final _this = this as SupplierDues;
  return 'SupplierDues(total: ${_this.total}, link: ${_this.link})';
}


}

/// @nodoc
abstract mixin class $SupplierDuesCopyWith<$Res>  {
  factory $SupplierDuesCopyWith(SupplierDues value, $Res Function(SupplierDues) _then) = _$SupplierDuesCopyWithImpl;
@useResult
$Res call({
 int total, Link4 link
});


$Link4CopyWith<$Res> get link;

}
/// @nodoc
class _$SupplierDuesCopyWithImpl<$Res>
    implements $SupplierDuesCopyWith<$Res> {
  _$SupplierDuesCopyWithImpl(this._self, this._then);

  final SupplierDues _self;
  final $Res Function(SupplierDues) _then;

/// Create a copy of SupplierDues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? link = null,}) {
  return _then(SupplierDues(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link4,
  ));
}
/// Create a copy of SupplierDues
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link4CopyWith<$Res> get link {
  
  return $Link4CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupplierDues].
extension SupplierDuesPatterns on SupplierDues {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupplierDues value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupplierDues() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupplierDues value)  $default,){
final _that = this;
switch (_that) {
case _SupplierDues():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupplierDues value)?  $default,){
final _that = this;
switch (_that) {
case _SupplierDues() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  Link4 link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupplierDues() when $default != null:
return $default(_that.total,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  Link4 link)  $default,) {final _that = this;
switch (_that) {
case _SupplierDues():
return $default(_that.total,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  Link4 link)?  $default,) {final _that = this;
switch (_that) {
case _SupplierDues() when $default != null:
return $default(_that.total,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupplierDues implements SupplierDues {
  const _SupplierDues({required this.total, required this.link});
  factory _SupplierDues.fromJson(Map<String, dynamic> json) => _$SupplierDuesFromJson(json);

@override final  int total;
@override final  Link4 link;

/// Create a copy of SupplierDues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierDuesCopyWith<_SupplierDues> get copyWith => __$SupplierDuesCopyWithImpl<_SupplierDues>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierDuesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierDues&&(identical(other.total, total) || other.total == total)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,link);
}

@override
String toString() {
    return 'SupplierDues(total: $total, link: $link)';
}


}

/// @nodoc
abstract mixin class _$SupplierDuesCopyWith<$Res> implements $SupplierDuesCopyWith<$Res> {
  factory _$SupplierDuesCopyWith(_SupplierDues value, $Res Function(_SupplierDues) _then) = __$SupplierDuesCopyWithImpl;
@override @useResult
$Res call({
 int total, Link4 link
});


@override $Link4CopyWith<$Res> get link;

}
/// @nodoc
class __$SupplierDuesCopyWithImpl<$Res>
    implements _$SupplierDuesCopyWith<$Res> {
  __$SupplierDuesCopyWithImpl(this._self, this._then);

  final _SupplierDues _self;
  final $Res Function(_SupplierDues) _then;

/// Create a copy of SupplierDues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? link = null,}) {
  return _then(_SupplierDues(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link4,
  ));
}

/// Create a copy of SupplierDues
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link4CopyWith<$Res> get link {
  
  return $Link4CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

// dart format on
