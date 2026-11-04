// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_bag_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyBagDtoOutput {

 int get balance; List<TodayCashReceipts> get todayCashReceipts; PendingHandover? get pendingHandover;
/// Create a copy of MyBagDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyBagDtoOutputCopyWith<MyBagDtoOutput> get copyWith => _$MyBagDtoOutputCopyWithImpl<MyBagDtoOutput>(this as MyBagDtoOutput, _$identity);

  /// Serializes this MyBagDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MyBagDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyBagDtoOutput&&(identical(other.balance, _this.balance) || other.balance == _this.balance)&&const DeepCollectionEquality().equals(other.todayCashReceipts, _this.todayCashReceipts)&&(identical(other.pendingHandover, _this.pendingHandover) || other.pendingHandover == _this.pendingHandover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MyBagDtoOutput;
  return Object.hash(runtimeType,_this.balance,const DeepCollectionEquality().hash(_this.todayCashReceipts),_this.pendingHandover);
}

@override
String toString() {
  final _this = this as MyBagDtoOutput;
  return 'MyBagDtoOutput(balance: ${_this.balance}, todayCashReceipts: ${_this.todayCashReceipts}, pendingHandover: ${_this.pendingHandover})';
}


}

/// @nodoc
abstract mixin class $MyBagDtoOutputCopyWith<$Res>  {
  factory $MyBagDtoOutputCopyWith(MyBagDtoOutput value, $Res Function(MyBagDtoOutput) _then) = _$MyBagDtoOutputCopyWithImpl;
@useResult
$Res call({
 int balance, List<TodayCashReceipts> todayCashReceipts, PendingHandover? pendingHandover
});


$PendingHandoverCopyWith<$Res>? get pendingHandover;

}
/// @nodoc
class _$MyBagDtoOutputCopyWithImpl<$Res>
    implements $MyBagDtoOutputCopyWith<$Res> {
  _$MyBagDtoOutputCopyWithImpl(this._self, this._then);

  final MyBagDtoOutput _self;
  final $Res Function(MyBagDtoOutput) _then;

/// Create a copy of MyBagDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,Object? todayCashReceipts = null,Object? pendingHandover = freezed,}) {
  return _then(MyBagDtoOutput(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,todayCashReceipts: null == todayCashReceipts ? _self.todayCashReceipts : todayCashReceipts // ignore: cast_nullable_to_non_nullable
as List<TodayCashReceipts>,pendingHandover: freezed == pendingHandover ? _self.pendingHandover : pendingHandover // ignore: cast_nullable_to_non_nullable
as PendingHandover?,
  ));
}
/// Create a copy of MyBagDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingHandoverCopyWith<$Res>? get pendingHandover {
    if (_self.pendingHandover == null) {
    return null;
  }

  return $PendingHandoverCopyWith<$Res>(_self.pendingHandover!, (value) {
    return _then(_self.copyWith(pendingHandover: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyBagDtoOutput].
extension MyBagDtoOutputPatterns on MyBagDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyBagDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyBagDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyBagDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _MyBagDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyBagDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _MyBagDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int balance,  List<TodayCashReceipts> todayCashReceipts,  PendingHandover? pendingHandover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyBagDtoOutput() when $default != null:
return $default(_that.balance,_that.todayCashReceipts,_that.pendingHandover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int balance,  List<TodayCashReceipts> todayCashReceipts,  PendingHandover? pendingHandover)  $default,) {final _that = this;
switch (_that) {
case _MyBagDtoOutput():
return $default(_that.balance,_that.todayCashReceipts,_that.pendingHandover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int balance,  List<TodayCashReceipts> todayCashReceipts,  PendingHandover? pendingHandover)?  $default,) {final _that = this;
switch (_that) {
case _MyBagDtoOutput() when $default != null:
return $default(_that.balance,_that.todayCashReceipts,_that.pendingHandover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyBagDtoOutput implements MyBagDtoOutput {
  const _MyBagDtoOutput({required this.balance, required  List<TodayCashReceipts> todayCashReceipts, required this.pendingHandover}): _todayCashReceipts = todayCashReceipts;
  factory _MyBagDtoOutput.fromJson(Map<String, dynamic> json) => _$MyBagDtoOutputFromJson(json);

@override final  int balance;
 final  List<TodayCashReceipts> _todayCashReceipts;
@override List<TodayCashReceipts> get todayCashReceipts {
  if (_todayCashReceipts is EqualUnmodifiableListView) return _todayCashReceipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayCashReceipts);
}

@override final  PendingHandover? pendingHandover;

/// Create a copy of MyBagDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyBagDtoOutputCopyWith<_MyBagDtoOutput> get copyWith => __$MyBagDtoOutputCopyWithImpl<_MyBagDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyBagDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyBagDtoOutput&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.todayCashReceipts, _todayCashReceipts)&&(identical(other.pendingHandover, pendingHandover) || other.pendingHandover == pendingHandover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,balance,const DeepCollectionEquality().hash(_todayCashReceipts),pendingHandover);
}

@override
String toString() {
    return 'MyBagDtoOutput(balance: $balance, todayCashReceipts: $todayCashReceipts, pendingHandover: $pendingHandover)';
}


}

/// @nodoc
abstract mixin class _$MyBagDtoOutputCopyWith<$Res> implements $MyBagDtoOutputCopyWith<$Res> {
  factory _$MyBagDtoOutputCopyWith(_MyBagDtoOutput value, $Res Function(_MyBagDtoOutput) _then) = __$MyBagDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 int balance, List<TodayCashReceipts> todayCashReceipts, PendingHandover? pendingHandover
});


@override $PendingHandoverCopyWith<$Res>? get pendingHandover;

}
/// @nodoc
class __$MyBagDtoOutputCopyWithImpl<$Res>
    implements _$MyBagDtoOutputCopyWith<$Res> {
  __$MyBagDtoOutputCopyWithImpl(this._self, this._then);

  final _MyBagDtoOutput _self;
  final $Res Function(_MyBagDtoOutput) _then;

/// Create a copy of MyBagDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,Object? todayCashReceipts = null,Object? pendingHandover = freezed,}) {
  return _then(_MyBagDtoOutput(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,todayCashReceipts: null == todayCashReceipts ? _self._todayCashReceipts : todayCashReceipts // ignore: cast_nullable_to_non_nullable
as List<TodayCashReceipts>,pendingHandover: freezed == pendingHandover ? _self.pendingHandover : pendingHandover // ignore: cast_nullable_to_non_nullable
as PendingHandover?,
  ));
}

/// Create a copy of MyBagDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingHandoverCopyWith<$Res>? get pendingHandover {
    if (_self.pendingHandover == null) {
    return null;
  }

  return $PendingHandoverCopyWith<$Res>(_self.pendingHandover!, (value) {
    return _then(_self.copyWith(pendingHandover: value));
  });
}
}

// dart format on
