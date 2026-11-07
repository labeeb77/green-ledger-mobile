// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_visit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastVisit {

 String get visitDate; Outcome get outcome; User4 get user;
/// Create a copy of LastVisit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastVisitCopyWith<LastVisit> get copyWith => _$LastVisitCopyWithImpl<LastVisit>(this as LastVisit, _$identity);

  /// Serializes this LastVisit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LastVisit;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastVisit&&(identical(other.visitDate, _this.visitDate) || other.visitDate == _this.visitDate)&&(identical(other.outcome, _this.outcome) || other.outcome == _this.outcome)&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LastVisit;
  return Object.hash(runtimeType,_this.visitDate,_this.outcome,_this.user);
}

@override
String toString() {
  final _this = this as LastVisit;
  return 'LastVisit(visitDate: ${_this.visitDate}, outcome: ${_this.outcome}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $LastVisitCopyWith<$Res>  {
  factory $LastVisitCopyWith(LastVisit value, $Res Function(LastVisit) _then) = _$LastVisitCopyWithImpl;
@useResult
$Res call({
 String visitDate, Outcome outcome, User4 user
});


$User4CopyWith<$Res> get user;

}
/// @nodoc
class _$LastVisitCopyWithImpl<$Res>
    implements $LastVisitCopyWith<$Res> {
  _$LastVisitCopyWithImpl(this._self, this._then);

  final LastVisit _self;
  final $Res Function(LastVisit) _then;

/// Create a copy of LastVisit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visitDate = null,Object? outcome = null,Object? user = null,}) {
  return _then(LastVisit(
visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as String,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as Outcome,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User4,
  ));
}
/// Create a copy of LastVisit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User4CopyWith<$Res> get user {
  
  return $User4CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LastVisit].
extension LastVisitPatterns on LastVisit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastVisit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastVisit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastVisit value)  $default,){
final _that = this;
switch (_that) {
case _LastVisit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastVisit value)?  $default,){
final _that = this;
switch (_that) {
case _LastVisit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String visitDate,  Outcome outcome,  User4 user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastVisit() when $default != null:
return $default(_that.visitDate,_that.outcome,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String visitDate,  Outcome outcome,  User4 user)  $default,) {final _that = this;
switch (_that) {
case _LastVisit():
return $default(_that.visitDate,_that.outcome,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String visitDate,  Outcome outcome,  User4 user)?  $default,) {final _that = this;
switch (_that) {
case _LastVisit() when $default != null:
return $default(_that.visitDate,_that.outcome,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastVisit implements LastVisit {
  const _LastVisit({required this.visitDate, required this.outcome, required this.user});
  factory _LastVisit.fromJson(Map<String, dynamic> json) => _$LastVisitFromJson(json);

@override final  String visitDate;
@override final  Outcome outcome;
@override final  User4 user;

/// Create a copy of LastVisit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastVisitCopyWith<_LastVisit> get copyWith => __$LastVisitCopyWithImpl<_LastVisit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastVisitToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastVisit&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,visitDate,outcome,user);
}

@override
String toString() {
    return 'LastVisit(visitDate: $visitDate, outcome: $outcome, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LastVisitCopyWith<$Res> implements $LastVisitCopyWith<$Res> {
  factory _$LastVisitCopyWith(_LastVisit value, $Res Function(_LastVisit) _then) = __$LastVisitCopyWithImpl;
@override @useResult
$Res call({
 String visitDate, Outcome outcome, User4 user
});


@override $User4CopyWith<$Res> get user;

}
/// @nodoc
class __$LastVisitCopyWithImpl<$Res>
    implements _$LastVisitCopyWith<$Res> {
  __$LastVisitCopyWithImpl(this._self, this._then);

  final _LastVisit _self;
  final $Res Function(_LastVisit) _then;

/// Create a copy of LastVisit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visitDate = null,Object? outcome = null,Object? user = null,}) {
  return _then(_LastVisit(
visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as String,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as Outcome,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User4,
  ));
}

/// Create a copy of LastVisit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$User4CopyWith<$Res> get user {
  
  return $User4CopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
