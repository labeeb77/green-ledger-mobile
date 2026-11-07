// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'due_today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DueToday {

 String get customerId; String get name; String? get area; String? get phone; int get outstanding; int get due; int get overdue; String? get oldestDueDate; bool get promisedToday; LastVisit2? get lastVisit;
/// Create a copy of DueToday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DueTodayCopyWith<DueToday> get copyWith => _$DueTodayCopyWithImpl<DueToday>(this as DueToday, _$identity);

  /// Serializes this DueToday to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DueToday;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DueToday&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.area, _this.area) || other.area == _this.area)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.outstanding, _this.outstanding) || other.outstanding == _this.outstanding)&&(identical(other.due, _this.due) || other.due == _this.due)&&(identical(other.overdue, _this.overdue) || other.overdue == _this.overdue)&&(identical(other.oldestDueDate, _this.oldestDueDate) || other.oldestDueDate == _this.oldestDueDate)&&(identical(other.promisedToday, _this.promisedToday) || other.promisedToday == _this.promisedToday)&&(identical(other.lastVisit, _this.lastVisit) || other.lastVisit == _this.lastVisit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DueToday;
  return Object.hash(runtimeType,_this.customerId,_this.name,_this.area,_this.phone,_this.outstanding,_this.due,_this.overdue,_this.oldestDueDate,_this.promisedToday,_this.lastVisit);
}

@override
String toString() {
  final _this = this as DueToday;
  return 'DueToday(customerId: ${_this.customerId}, name: ${_this.name}, area: ${_this.area}, phone: ${_this.phone}, outstanding: ${_this.outstanding}, due: ${_this.due}, overdue: ${_this.overdue}, oldestDueDate: ${_this.oldestDueDate}, promisedToday: ${_this.promisedToday}, lastVisit: ${_this.lastVisit})';
}


}

/// @nodoc
abstract mixin class $DueTodayCopyWith<$Res>  {
  factory $DueTodayCopyWith(DueToday value, $Res Function(DueToday) _then) = _$DueTodayCopyWithImpl;
@useResult
$Res call({
 String customerId, String name, String? area, String? phone, int outstanding, int due, int overdue, String? oldestDueDate, bool promisedToday, LastVisit2? lastVisit
});


$LastVisit2CopyWith<$Res>? get lastVisit;

}
/// @nodoc
class _$DueTodayCopyWithImpl<$Res>
    implements $DueTodayCopyWith<$Res> {
  _$DueTodayCopyWithImpl(this._self, this._then);

  final DueToday _self;
  final $Res Function(DueToday) _then;

/// Create a copy of DueToday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? name = null,Object? area = freezed,Object? phone = freezed,Object? outstanding = null,Object? due = null,Object? overdue = null,Object? oldestDueDate = freezed,Object? promisedToday = null,Object? lastVisit = freezed,}) {
  return _then(DueToday(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,due: null == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,oldestDueDate: freezed == oldestDueDate ? _self.oldestDueDate : oldestDueDate // ignore: cast_nullable_to_non_nullable
as String?,promisedToday: null == promisedToday ? _self.promisedToday : promisedToday // ignore: cast_nullable_to_non_nullable
as bool,lastVisit: freezed == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as LastVisit2?,
  ));
}
/// Create a copy of DueToday
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastVisit2CopyWith<$Res>? get lastVisit {
    if (_self.lastVisit == null) {
    return null;
  }

  return $LastVisit2CopyWith<$Res>(_self.lastVisit!, (value) {
    return _then(_self.copyWith(lastVisit: value));
  });
}
}


/// Adds pattern-matching-related methods to [DueToday].
extension DueTodayPatterns on DueToday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DueToday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DueToday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DueToday value)  $default,){
final _that = this;
switch (_that) {
case _DueToday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DueToday value)?  $default,){
final _that = this;
switch (_that) {
case _DueToday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerId,  String name,  String? area,  String? phone,  int outstanding,  int due,  int overdue,  String? oldestDueDate,  bool promisedToday,  LastVisit2? lastVisit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DueToday() when $default != null:
return $default(_that.customerId,_that.name,_that.area,_that.phone,_that.outstanding,_that.due,_that.overdue,_that.oldestDueDate,_that.promisedToday,_that.lastVisit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerId,  String name,  String? area,  String? phone,  int outstanding,  int due,  int overdue,  String? oldestDueDate,  bool promisedToday,  LastVisit2? lastVisit)  $default,) {final _that = this;
switch (_that) {
case _DueToday():
return $default(_that.customerId,_that.name,_that.area,_that.phone,_that.outstanding,_that.due,_that.overdue,_that.oldestDueDate,_that.promisedToday,_that.lastVisit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerId,  String name,  String? area,  String? phone,  int outstanding,  int due,  int overdue,  String? oldestDueDate,  bool promisedToday,  LastVisit2? lastVisit)?  $default,) {final _that = this;
switch (_that) {
case _DueToday() when $default != null:
return $default(_that.customerId,_that.name,_that.area,_that.phone,_that.outstanding,_that.due,_that.overdue,_that.oldestDueDate,_that.promisedToday,_that.lastVisit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DueToday implements DueToday {
  const _DueToday({required this.customerId, required this.name, required this.area, required this.phone, required this.outstanding, required this.due, required this.overdue, required this.oldestDueDate, required this.promisedToday, required this.lastVisit});
  factory _DueToday.fromJson(Map<String, dynamic> json) => _$DueTodayFromJson(json);

@override final  String customerId;
@override final  String name;
@override final  String? area;
@override final  String? phone;
@override final  int outstanding;
@override final  int due;
@override final  int overdue;
@override final  String? oldestDueDate;
@override final  bool promisedToday;
@override final  LastVisit2? lastVisit;

/// Create a copy of DueToday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DueTodayCopyWith<_DueToday> get copyWith => __$DueTodayCopyWithImpl<_DueToday>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DueTodayToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DueToday&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.area, area) || other.area == area)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.due, due) || other.due == due)&&(identical(other.overdue, overdue) || other.overdue == overdue)&&(identical(other.oldestDueDate, oldestDueDate) || other.oldestDueDate == oldestDueDate)&&(identical(other.promisedToday, promisedToday) || other.promisedToday == promisedToday)&&(identical(other.lastVisit, lastVisit) || other.lastVisit == lastVisit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,customerId,name,area,phone,outstanding,due,overdue,oldestDueDate,promisedToday,lastVisit);
}

@override
String toString() {
    return 'DueToday(customerId: $customerId, name: $name, area: $area, phone: $phone, outstanding: $outstanding, due: $due, overdue: $overdue, oldestDueDate: $oldestDueDate, promisedToday: $promisedToday, lastVisit: $lastVisit)';
}


}

/// @nodoc
abstract mixin class _$DueTodayCopyWith<$Res> implements $DueTodayCopyWith<$Res> {
  factory _$DueTodayCopyWith(_DueToday value, $Res Function(_DueToday) _then) = __$DueTodayCopyWithImpl;
@override @useResult
$Res call({
 String customerId, String name, String? area, String? phone, int outstanding, int due, int overdue, String? oldestDueDate, bool promisedToday, LastVisit2? lastVisit
});


@override $LastVisit2CopyWith<$Res>? get lastVisit;

}
/// @nodoc
class __$DueTodayCopyWithImpl<$Res>
    implements _$DueTodayCopyWith<$Res> {
  __$DueTodayCopyWithImpl(this._self, this._then);

  final _DueToday _self;
  final $Res Function(_DueToday) _then;

/// Create a copy of DueToday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? name = null,Object? area = freezed,Object? phone = freezed,Object? outstanding = null,Object? due = null,Object? overdue = null,Object? oldestDueDate = freezed,Object? promisedToday = null,Object? lastVisit = freezed,}) {
  return _then(_DueToday(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,due: null == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int,overdue: null == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as int,oldestDueDate: freezed == oldestDueDate ? _self.oldestDueDate : oldestDueDate // ignore: cast_nullable_to_non_nullable
as String?,promisedToday: null == promisedToday ? _self.promisedToday : promisedToday // ignore: cast_nullable_to_non_nullable
as bool,lastVisit: freezed == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as LastVisit2?,
  ));
}

/// Create a copy of DueToday
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastVisit2CopyWith<$Res>? get lastVisit {
    if (_self.lastVisit == null) {
    return null;
  }

  return $LastVisit2CopyWith<$Res>(_self.lastVisit!, (value) {
    return _then(_self.copyWith(lastVisit: value));
  });
}
}

// dart format on
