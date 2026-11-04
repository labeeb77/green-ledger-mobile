// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Expenses {

 int get total; Link5 get link;
/// Create a copy of Expenses
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesCopyWith<Expenses> get copyWith => _$ExpensesCopyWithImpl<Expenses>(this as Expenses, _$identity);

  /// Serializes this Expenses to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Expenses;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Expenses&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.link, _this.link) || other.link == _this.link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Expenses;
  return Object.hash(runtimeType,_this.total,_this.link);
}

@override
String toString() {
  final _this = this as Expenses;
  return 'Expenses(total: ${_this.total}, link: ${_this.link})';
}


}

/// @nodoc
abstract mixin class $ExpensesCopyWith<$Res>  {
  factory $ExpensesCopyWith(Expenses value, $Res Function(Expenses) _then) = _$ExpensesCopyWithImpl;
@useResult
$Res call({
 int total, Link5 link
});


$Link5CopyWith<$Res> get link;

}
/// @nodoc
class _$ExpensesCopyWithImpl<$Res>
    implements $ExpensesCopyWith<$Res> {
  _$ExpensesCopyWithImpl(this._self, this._then);

  final Expenses _self;
  final $Res Function(Expenses) _then;

/// Create a copy of Expenses
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? link = null,}) {
  return _then(Expenses(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link5,
  ));
}
/// Create a copy of Expenses
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link5CopyWith<$Res> get link {
  
  return $Link5CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [Expenses].
extension ExpensesPatterns on Expenses {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Expenses value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Expenses() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Expenses value)  $default,){
final _that = this;
switch (_that) {
case _Expenses():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Expenses value)?  $default,){
final _that = this;
switch (_that) {
case _Expenses() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  Link5 link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Expenses() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  Link5 link)  $default,) {final _that = this;
switch (_that) {
case _Expenses():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  Link5 link)?  $default,) {final _that = this;
switch (_that) {
case _Expenses() when $default != null:
return $default(_that.total,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Expenses implements Expenses {
  const _Expenses({required this.total, required this.link});
  factory _Expenses.fromJson(Map<String, dynamic> json) => _$ExpensesFromJson(json);

@override final  int total;
@override final  Link5 link;

/// Create a copy of Expenses
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesCopyWith<_Expenses> get copyWith => __$ExpensesCopyWithImpl<_Expenses>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpensesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Expenses&&(identical(other.total, total) || other.total == total)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,link);
}

@override
String toString() {
    return 'Expenses(total: $total, link: $link)';
}


}

/// @nodoc
abstract mixin class _$ExpensesCopyWith<$Res> implements $ExpensesCopyWith<$Res> {
  factory _$ExpensesCopyWith(_Expenses value, $Res Function(_Expenses) _then) = __$ExpensesCopyWithImpl;
@override @useResult
$Res call({
 int total, Link5 link
});


@override $Link5CopyWith<$Res> get link;

}
/// @nodoc
class __$ExpensesCopyWithImpl<$Res>
    implements _$ExpensesCopyWith<$Res> {
  __$ExpensesCopyWithImpl(this._self, this._then);

  final _Expenses _self;
  final $Res Function(_Expenses) _then;

/// Create a copy of Expenses
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? link = null,}) {
  return _then(_Expenses(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link5,
  ));
}

/// Create a copy of Expenses
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link5CopyWith<$Res> get link {
  
  return $Link5CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

// dart format on
