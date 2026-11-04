// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grades.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Grades {

 String get id; String get name; bool get active;
/// Create a copy of Grades
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradesCopyWith<Grades> get copyWith => _$GradesCopyWithImpl<Grades>(this as Grades, _$identity);

  /// Serializes this Grades to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Grades;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Grades&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.active, _this.active) || other.active == _this.active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Grades;
  return Object.hash(runtimeType,_this.id,_this.name,_this.active);
}

@override
String toString() {
  final _this = this as Grades;
  return 'Grades(id: ${_this.id}, name: ${_this.name}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $GradesCopyWith<$Res>  {
  factory $GradesCopyWith(Grades value, $Res Function(Grades) _then) = _$GradesCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool active
});




}
/// @nodoc
class _$GradesCopyWithImpl<$Res>
    implements $GradesCopyWith<$Res> {
  _$GradesCopyWithImpl(this._self, this._then);

  final Grades _self;
  final $Res Function(Grades) _then;

/// Create a copy of Grades
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? active = null,}) {
  return _then(Grades(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Grades].
extension GradesPatterns on Grades {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Grades value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Grades() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Grades value)  $default,){
final _that = this;
switch (_that) {
case _Grades():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Grades value)?  $default,){
final _that = this;
switch (_that) {
case _Grades() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Grades() when $default != null:
return $default(_that.id,_that.name,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool active)  $default,) {final _that = this;
switch (_that) {
case _Grades():
return $default(_that.id,_that.name,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _Grades() when $default != null:
return $default(_that.id,_that.name,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Grades implements Grades {
  const _Grades({required this.id, required this.name, required this.active});
  factory _Grades.fromJson(Map<String, dynamic> json) => _$GradesFromJson(json);

@override final  String id;
@override final  String name;
@override final  bool active;

/// Create a copy of Grades
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradesCopyWith<_Grades> get copyWith => __$GradesCopyWithImpl<_Grades>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GradesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Grades&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,active);
}

@override
String toString() {
    return 'Grades(id: $id, name: $name, active: $active)';
}


}

/// @nodoc
abstract mixin class _$GradesCopyWith<$Res> implements $GradesCopyWith<$Res> {
  factory _$GradesCopyWith(_Grades value, $Res Function(_Grades) _then) = __$GradesCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool active
});




}
/// @nodoc
class __$GradesCopyWithImpl<$Res>
    implements _$GradesCopyWith<$Res> {
  __$GradesCopyWithImpl(this._self, this._then);

  final _Grades _self;
  final $Res Function(_Grades) _then;

/// Create a copy of Grades
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? active = null,}) {
  return _then(_Grades(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
