// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierDtoOutput {

 String get id; String get name; String? get phone; String? get address; String? get notes; int get openingBalance; int get due; bool get active; DateTime get createdAt;
/// Create a copy of SupplierDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierDtoOutputCopyWith<SupplierDtoOutput> get copyWith => _$SupplierDtoOutputCopyWithImpl<SupplierDtoOutput>(this as SupplierDtoOutput, _$identity);

  /// Serializes this SupplierDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SupplierDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierDtoOutput&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&(identical(other.due, _this.due) || other.due == _this.due)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SupplierDtoOutput;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.address,_this.notes,_this.openingBalance,_this.due,_this.active,_this.createdAt);
}

@override
String toString() {
  final _this = this as SupplierDtoOutput;
  return 'SupplierDtoOutput(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, address: ${_this.address}, notes: ${_this.notes}, openingBalance: ${_this.openingBalance}, due: ${_this.due}, active: ${_this.active}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $SupplierDtoOutputCopyWith<$Res>  {
  factory $SupplierDtoOutputCopyWith(SupplierDtoOutput value, $Res Function(SupplierDtoOutput) _then) = _$SupplierDtoOutputCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? phone, String? address, String? notes, int openingBalance, int due, bool active, DateTime createdAt
});




}
/// @nodoc
class _$SupplierDtoOutputCopyWithImpl<$Res>
    implements $SupplierDtoOutputCopyWith<$Res> {
  _$SupplierDtoOutputCopyWithImpl(this._self, this._then);

  final SupplierDtoOutput _self;
  final $Res Function(SupplierDtoOutput) _then;

/// Create a copy of SupplierDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? address = freezed,Object? notes = freezed,Object? openingBalance = null,Object? due = null,Object? active = null,Object? createdAt = null,}) {
  return _then(SupplierDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int,due: null == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SupplierDtoOutput].
extension SupplierDtoOutputPatterns on SupplierDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupplierDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupplierDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupplierDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SupplierDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupplierDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SupplierDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? address,  String? notes,  int openingBalance,  int due,  bool active,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupplierDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance,_that.due,_that.active,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? address,  String? notes,  int openingBalance,  int due,  bool active,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SupplierDtoOutput():
return $default(_that.id,_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance,_that.due,_that.active,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? phone,  String? address,  String? notes,  int openingBalance,  int due,  bool active,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SupplierDtoOutput() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.address,_that.notes,_that.openingBalance,_that.due,_that.active,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupplierDtoOutput implements SupplierDtoOutput {
  const _SupplierDtoOutput({required this.id, required this.name, required this.phone, required this.address, required this.notes, required this.openingBalance, required this.due, required this.active, required this.createdAt});
  factory _SupplierDtoOutput.fromJson(Map<String, dynamic> json) => _$SupplierDtoOutputFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? phone;
@override final  String? address;
@override final  String? notes;
@override final  int openingBalance;
@override final  int due;
@override final  bool active;
@override final  DateTime createdAt;

/// Create a copy of SupplierDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierDtoOutputCopyWith<_SupplierDtoOutput> get copyWith => __$SupplierDtoOutputCopyWithImpl<_SupplierDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierDtoOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&(identical(other.due, due) || other.due == due)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,address,notes,openingBalance,due,active,createdAt);
}

@override
String toString() {
    return 'SupplierDtoOutput(id: $id, name: $name, phone: $phone, address: $address, notes: $notes, openingBalance: $openingBalance, due: $due, active: $active, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SupplierDtoOutputCopyWith<$Res> implements $SupplierDtoOutputCopyWith<$Res> {
  factory _$SupplierDtoOutputCopyWith(_SupplierDtoOutput value, $Res Function(_SupplierDtoOutput) _then) = __$SupplierDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? phone, String? address, String? notes, int openingBalance, int due, bool active, DateTime createdAt
});




}
/// @nodoc
class __$SupplierDtoOutputCopyWithImpl<$Res>
    implements _$SupplierDtoOutputCopyWith<$Res> {
  __$SupplierDtoOutputCopyWithImpl(this._self, this._then);

  final _SupplierDtoOutput _self;
  final $Res Function(_SupplierDtoOutput) _then;

/// Create a copy of SupplierDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? address = freezed,Object? notes = freezed,Object? openingBalance = null,Object? due = null,Object? active = null,Object? createdAt = null,}) {
  return _then(_SupplierDtoOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as int,due: null == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
