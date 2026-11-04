// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Items3 {

 String get id; String get type; String get title; String? get body; String? get link; bool get read; DateTime get createdAt;
/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Items3CopyWith<Items3> get copyWith => _$Items3CopyWithImpl<Items3>(this as Items3, _$identity);

  /// Serializes this Items3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Items3;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Items3&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.link, _this.link) || other.link == _this.link)&&(identical(other.read, _this.read) || other.read == _this.read)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Items3;
  return Object.hash(runtimeType,_this.id,_this.type,_this.title,_this.body,_this.link,_this.read,_this.createdAt);
}

@override
String toString() {
  final _this = this as Items3;
  return 'Items3(id: ${_this.id}, type: ${_this.type}, title: ${_this.title}, body: ${_this.body}, link: ${_this.link}, read: ${_this.read}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $Items3CopyWith<$Res>  {
  factory $Items3CopyWith(Items3 value, $Res Function(Items3) _then) = _$Items3CopyWithImpl;
@useResult
$Res call({
 String id, String type, String title, String? body, String? link, bool read, DateTime createdAt
});




}
/// @nodoc
class _$Items3CopyWithImpl<$Res>
    implements $Items3CopyWith<$Res> {
  _$Items3CopyWithImpl(this._self, this._then);

  final Items3 _self;
  final $Res Function(Items3) _then;

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = freezed,Object? link = freezed,Object? read = null,Object? createdAt = null,}) {
  return _then(Items3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Items3].
extension Items3Patterns on Items3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Items3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Items3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Items3 value)  $default,){
final _that = this;
switch (_that) {
case _Items3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Items3 value)?  $default,){
final _that = this;
switch (_that) {
case _Items3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String? body,  String? link,  bool read,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Items3() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.link,_that.read,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String? body,  String? link,  bool read,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Items3():
return $default(_that.id,_that.type,_that.title,_that.body,_that.link,_that.read,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String title,  String? body,  String? link,  bool read,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Items3() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.link,_that.read,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Items3 implements Items3 {
  const _Items3({required this.id, required this.type, required this.title, required this.body, required this.link, required this.read, required this.createdAt});
  factory _Items3.fromJson(Map<String, dynamic> json) => _$Items3FromJson(json);

@override final  String id;
@override final  String type;
@override final  String title;
@override final  String? body;
@override final  String? link;
@override final  bool read;
@override final  DateTime createdAt;

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Items3CopyWith<_Items3> get copyWith => __$Items3CopyWithImpl<_Items3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Items3ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Items3&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.link, link) || other.link == link)&&(identical(other.read, read) || other.read == read)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,title,body,link,read,createdAt);
}

@override
String toString() {
    return 'Items3(id: $id, type: $type, title: $title, body: $body, link: $link, read: $read, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$Items3CopyWith<$Res> implements $Items3CopyWith<$Res> {
  factory _$Items3CopyWith(_Items3 value, $Res Function(_Items3) _then) = __$Items3CopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String title, String? body, String? link, bool read, DateTime createdAt
});




}
/// @nodoc
class __$Items3CopyWithImpl<$Res>
    implements _$Items3CopyWith<$Res> {
  __$Items3CopyWithImpl(this._self, this._then);

  final _Items3 _self;
  final $Res Function(_Items3) _then;

/// Create a copy of Items3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = freezed,Object? link = freezed,Object? read = null,Object? createdAt = null,}) {
  return _then(_Items3(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
