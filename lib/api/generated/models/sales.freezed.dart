// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sales {

 int get total; int get bills; Link get link;
/// Create a copy of Sales
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesCopyWith<Sales> get copyWith => _$SalesCopyWithImpl<Sales>(this as Sales, _$identity);

  /// Serializes this Sales to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Sales;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sales&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.bills, _this.bills) || other.bills == _this.bills)&&(identical(other.link, _this.link) || other.link == _this.link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Sales;
  return Object.hash(runtimeType,_this.total,_this.bills,_this.link);
}

@override
String toString() {
  final _this = this as Sales;
  return 'Sales(total: ${_this.total}, bills: ${_this.bills}, link: ${_this.link})';
}


}

/// @nodoc
abstract mixin class $SalesCopyWith<$Res>  {
  factory $SalesCopyWith(Sales value, $Res Function(Sales) _then) = _$SalesCopyWithImpl;
@useResult
$Res call({
 int total, int bills, Link link
});


$LinkCopyWith<$Res> get link;

}
/// @nodoc
class _$SalesCopyWithImpl<$Res>
    implements $SalesCopyWith<$Res> {
  _$SalesCopyWithImpl(this._self, this._then);

  final Sales _self;
  final $Res Function(Sales) _then;

/// Create a copy of Sales
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? bills = null,Object? link = null,}) {
  return _then(Sales(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,bills: null == bills ? _self.bills : bills // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link,
  ));
}
/// Create a copy of Sales
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkCopyWith<$Res> get link {
  
  return $LinkCopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [Sales].
extension SalesPatterns on Sales {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sales value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sales() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sales value)  $default,){
final _that = this;
switch (_that) {
case _Sales():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sales value)?  $default,){
final _that = this;
switch (_that) {
case _Sales() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int bills,  Link link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sales() when $default != null:
return $default(_that.total,_that.bills,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int bills,  Link link)  $default,) {final _that = this;
switch (_that) {
case _Sales():
return $default(_that.total,_that.bills,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int bills,  Link link)?  $default,) {final _that = this;
switch (_that) {
case _Sales() when $default != null:
return $default(_that.total,_that.bills,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sales implements Sales {
  const _Sales({required this.total, required this.bills, required this.link});
  factory _Sales.fromJson(Map<String, dynamic> json) => _$SalesFromJson(json);

@override final  int total;
@override final  int bills;
@override final  Link link;

/// Create a copy of Sales
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesCopyWith<_Sales> get copyWith => __$SalesCopyWithImpl<_Sales>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sales&&(identical(other.total, total) || other.total == total)&&(identical(other.bills, bills) || other.bills == bills)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,bills,link);
}

@override
String toString() {
    return 'Sales(total: $total, bills: $bills, link: $link)';
}


}

/// @nodoc
abstract mixin class _$SalesCopyWith<$Res> implements $SalesCopyWith<$Res> {
  factory _$SalesCopyWith(_Sales value, $Res Function(_Sales) _then) = __$SalesCopyWithImpl;
@override @useResult
$Res call({
 int total, int bills, Link link
});


@override $LinkCopyWith<$Res> get link;

}
/// @nodoc
class __$SalesCopyWithImpl<$Res>
    implements _$SalesCopyWith<$Res> {
  __$SalesCopyWithImpl(this._self, this._then);

  final _Sales _self;
  final $Res Function(_Sales) _then;

/// Create a copy of Sales
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? bills = null,Object? link = null,}) {
  return _then(_Sales(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,bills: null == bills ? _self.bills : bills // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link,
  ));
}

/// Create a copy of Sales
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkCopyWith<$Res> get link {
  
  return $LinkCopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

// dart format on
