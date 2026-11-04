// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Collections {

 int get total; ByMethod get byMethod; Link2 get link;
/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionsCopyWith<Collections> get copyWith => _$CollectionsCopyWithImpl<Collections>(this as Collections, _$identity);

  /// Serializes this Collections to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Collections;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Collections&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.byMethod, _this.byMethod) || other.byMethod == _this.byMethod)&&(identical(other.link, _this.link) || other.link == _this.link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Collections;
  return Object.hash(runtimeType,_this.total,_this.byMethod,_this.link);
}

@override
String toString() {
  final _this = this as Collections;
  return 'Collections(total: ${_this.total}, byMethod: ${_this.byMethod}, link: ${_this.link})';
}


}

/// @nodoc
abstract mixin class $CollectionsCopyWith<$Res>  {
  factory $CollectionsCopyWith(Collections value, $Res Function(Collections) _then) = _$CollectionsCopyWithImpl;
@useResult
$Res call({
 int total, ByMethod byMethod, Link2 link
});


$ByMethodCopyWith<$Res> get byMethod;$Link2CopyWith<$Res> get link;

}
/// @nodoc
class _$CollectionsCopyWithImpl<$Res>
    implements $CollectionsCopyWith<$Res> {
  _$CollectionsCopyWithImpl(this._self, this._then);

  final Collections _self;
  final $Res Function(Collections) _then;

/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? byMethod = null,Object? link = null,}) {
  return _then(Collections(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byMethod: null == byMethod ? _self.byMethod : byMethod // ignore: cast_nullable_to_non_nullable
as ByMethod,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link2,
  ));
}
/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ByMethodCopyWith<$Res> get byMethod {
  
  return $ByMethodCopyWith<$Res>(_self.byMethod, (value) {
    return _then(_self.copyWith(byMethod: value));
  });
}/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link2CopyWith<$Res> get link {
  
  return $Link2CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}


/// Adds pattern-matching-related methods to [Collections].
extension CollectionsPatterns on Collections {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Collections value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Collections() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Collections value)  $default,){
final _that = this;
switch (_that) {
case _Collections():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Collections value)?  $default,){
final _that = this;
switch (_that) {
case _Collections() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  ByMethod byMethod,  Link2 link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Collections() when $default != null:
return $default(_that.total,_that.byMethod,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  ByMethod byMethod,  Link2 link)  $default,) {final _that = this;
switch (_that) {
case _Collections():
return $default(_that.total,_that.byMethod,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  ByMethod byMethod,  Link2 link)?  $default,) {final _that = this;
switch (_that) {
case _Collections() when $default != null:
return $default(_that.total,_that.byMethod,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Collections implements Collections {
  const _Collections({required this.total, required this.byMethod, required this.link});
  factory _Collections.fromJson(Map<String, dynamic> json) => _$CollectionsFromJson(json);

@override final  int total;
@override final  ByMethod byMethod;
@override final  Link2 link;

/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionsCopyWith<_Collections> get copyWith => __$CollectionsCopyWithImpl<_Collections>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CollectionsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Collections&&(identical(other.total, total) || other.total == total)&&(identical(other.byMethod, byMethod) || other.byMethod == byMethod)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,byMethod,link);
}

@override
String toString() {
    return 'Collections(total: $total, byMethod: $byMethod, link: $link)';
}


}

/// @nodoc
abstract mixin class _$CollectionsCopyWith<$Res> implements $CollectionsCopyWith<$Res> {
  factory _$CollectionsCopyWith(_Collections value, $Res Function(_Collections) _then) = __$CollectionsCopyWithImpl;
@override @useResult
$Res call({
 int total, ByMethod byMethod, Link2 link
});


@override $ByMethodCopyWith<$Res> get byMethod;@override $Link2CopyWith<$Res> get link;

}
/// @nodoc
class __$CollectionsCopyWithImpl<$Res>
    implements _$CollectionsCopyWith<$Res> {
  __$CollectionsCopyWithImpl(this._self, this._then);

  final _Collections _self;
  final $Res Function(_Collections) _then;

/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? byMethod = null,Object? link = null,}) {
  return _then(_Collections(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byMethod: null == byMethod ? _self.byMethod : byMethod // ignore: cast_nullable_to_non_nullable
as ByMethod,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as Link2,
  ));
}

/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ByMethodCopyWith<$Res> get byMethod {
  
  return $ByMethodCopyWith<$Res>(_self.byMethod, (value) {
    return _then(_self.copyWith(byMethod: value));
  });
}/// Create a copy of Collections
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Link2CopyWith<$Res> get link {
  
  return $Link2CopyWith<$Res>(_self.link, (value) {
    return _then(_self.copyWith(link: value));
  });
}
}

// dart format on
