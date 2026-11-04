// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outstanding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Outstanding {

 int get total; int get overdue; int get customers; Link3 get link;
/// Create a copy of Outstanding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutstandingCopyWith<Outstanding> get copyWith => _$OutstandingCopyWithImpl<Outstanding>(this as Outstanding, _$identity);

  /// Serializes this Outstanding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Outstanding;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Outstanding&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.overdue, _this.overdue) || other.overdue == _this.overdue)&&(identical(other.customers, _this.customers) || other.customers == _this.customers)&&(identical(other.link, _this.link) || other.link == _this.link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Outstanding;
  return Object.hash(runtimeType,_this.total,_this.overdue,_this.customers,_this.link);
}

@override
String toString() {
  final _this = this as Outstanding;
  return 'Outstanding(total: ${_this.total}, overdue: ${_this.overdue}, customers: ${_this.customers}, link: ${_this.link})';
}


}

/// @nodoc
abstract mixin class $OutstandingCopyWith<$Res>  {
  factory $OutstandingCopyWith(Outstanding value, $Res Function(Outstanding) _then) = _$OutstandingCopyWithImpl;
@useResult
$Res call({
 int total, int overdue, int customers, Link3 link
});


$Link3CopyWith<$Res> get link;

}
/// @nodoc
class _$OutstandingCopyWithImpl<$Res>
    implements $OutstandingCopyWith<$Res> {
  _$OutstandingCopyWithImpl(this._self, this._then);

  final Outstanding _self;
  final $Res Function(Outstanding) _then;

/// Create a copy of Outstanding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? overdue = null,Object? customers = null,Object? link = null,}) {
  return _then(Outstanding(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link3,
  ));
}
/// Create a copy of Outstanding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link3CopyWith<$Res> get link {
  
  return $Link3CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [Outstanding].
extension OutstandingPatterns on Outstanding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Outstanding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Outstanding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Outstanding value)  $default,){
final _that = this;
switch (_that) {
case _Outstanding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Outstanding value)?  $default,){
final _that = this;
switch (_that) {
case _Outstanding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int overdue,  int customers,  Link3 link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Outstanding() when $default != null:
return $default(_that.total,_that.overdue,_that.customers,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int overdue,  int customers,  Link3 link)  $default,) {final _that = this;
switch (_that) {
case _Outstanding():
return $default(_that.total,_that.overdue,_that.customers,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int overdue,  int customers,  Link3 link)?  $default,) {final _that = this;
switch (_that) {
case _Outstanding() when $default != null:
return $default(_that.total,_that.overdue,_that.customers,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Outstanding implements Outstanding {
  const _Outstanding({required this.total, required this.overdue, required this.customers, required this.link});
  factory _Outstanding.fromJson(Map<String, dynamic> json) => _$OutstandingFromJson(json);

@override final  int total;
@override final  int overdue;
@override final  int customers;
@override final  Link3 link;

/// Create a copy of Outstanding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutstandingCopyWith<_Outstanding> get copyWith => __$OutstandingCopyWithImpl<_Outstanding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutstandingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Outstanding&&(identical(other.total, total) || other.total == total)&&(identical(other.overdue, overdue) || other.overdue == overdue)&&(identical(other.customers, customers) || other.customers == customers)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,overdue,customers,link);
}

@override
String toString() {
    return 'Outstanding(total: $total, overdue: $overdue, customers: $customers, link: $link)';
}


}

/// @nodoc
abstract mixin class _$OutstandingCopyWith<$Res> implements $OutstandingCopyWith<$Res> {
  factory _$OutstandingCopyWith(_Outstanding value, $Res Function(_Outstanding) _then) = __$OutstandingCopyWithImpl;
@override @useResult
$Res call({
 int total, int overdue, int customers, Link3 link
});


@override $Link3CopyWith<$Res> get link;

}
/// @nodoc
class __$OutstandingCopyWithImpl<$Res>
    implements _$OutstandingCopyWith<$Res> {
  __$OutstandingCopyWithImpl(this._self, this._then);

  final _Outstanding _self;
  final $Res Function(_Outstanding) _then;

/// Create a copy of Outstanding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? overdue = null,Object? customers = null,Object? link = null,}) {
  return _then(_Outstanding(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link3,
  ));
}

/// Create a copy of Outstanding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link3CopyWith<$Res> get link {
  
  return $Link3CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

// dart format on
