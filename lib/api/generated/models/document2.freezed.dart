// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Document2 {

 Type5 get type; String get id; String get number; Status3 get status; int get total; Customer10 get customer;
/// Create a copy of Document2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Document2CopyWith<Document2> get copyWith => _$Document2CopyWithImpl<Document2>(this as Document2, _$identity);

  /// Serializes this Document2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Document2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Document2&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.customer, _this.customer) || other.customer == _this.customer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Document2;
  return Object.hash(runtimeType,_this.type,_this.id,_this.number,_this.status,_this.total,_this.customer);
}

@override
String toString() {
  final _this = this as Document2;
  return 'Document2(type: ${_this.type}, id: ${_this.id}, number: ${_this.number}, status: ${_this.status}, total: ${_this.total}, customer: ${_this.customer})';
}


}

/// @nodoc
abstract mixin class $Document2CopyWith<$Res>  {
  factory $Document2CopyWith(Document2 value, $Res Function(Document2) _then) = _$Document2CopyWithImpl;
@useResult
$Res call({
 Type5 type, String id, String number, Status3 status, int total, Customer10 customer
});


$Customer10CopyWith<$Res> get customer;

}
/// @nodoc
class _$Document2CopyWithImpl<$Res>
    implements $Document2CopyWith<$Res> {
  _$Document2CopyWithImpl(this._self, this._then);

  final Document2 _self;
  final $Res Function(Document2) _then;

/// Create a copy of Document2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? id = null,Object? number = null,Object? status = null,Object? total = null,Object? customer = null,}) {
  return _then(Document2(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type5,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status3,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer10,
  ));
}
/// Create a copy of Document2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer10CopyWith<$Res> get customer {
  
  return $Customer10CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// Adds pattern-matching-related methods to [Document2].
extension Document2Patterns on Document2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Document2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Document2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Document2 value)  $default,){
final _that = this;
switch (_that) {
case _Document2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Document2 value)?  $default,){
final _that = this;
switch (_that) {
case _Document2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Type5 type,  String id,  String number,  Status3 status,  int total,  Customer10 customer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Document2() when $default != null:
return $default(_that.type,_that.id,_that.number,_that.status,_that.total,_that.customer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Type5 type,  String id,  String number,  Status3 status,  int total,  Customer10 customer)  $default,) {final _that = this;
switch (_that) {
case _Document2():
return $default(_that.type,_that.id,_that.number,_that.status,_that.total,_that.customer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Type5 type,  String id,  String number,  Status3 status,  int total,  Customer10 customer)?  $default,) {final _that = this;
switch (_that) {
case _Document2() when $default != null:
return $default(_that.type,_that.id,_that.number,_that.status,_that.total,_that.customer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Document2 implements Document2 {
  const _Document2({required this.type, required this.id, required this.number, required this.status, required this.total, required this.customer});
  factory _Document2.fromJson(Map<String, dynamic> json) => _$Document2FromJson(json);

@override final  Type5 type;
@override final  String id;
@override final  String number;
@override final  Status3 status;
@override final  int total;
@override final  Customer10 customer;

/// Create a copy of Document2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Document2CopyWith<_Document2> get copyWith => __$Document2CopyWithImpl<_Document2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Document2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Document2&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&(identical(other.customer, customer) || other.customer == customer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,id,number,status,total,customer);
}

@override
String toString() {
    return 'Document2(type: $type, id: $id, number: $number, status: $status, total: $total, customer: $customer)';
}


}

/// @nodoc
abstract mixin class _$Document2CopyWith<$Res> implements $Document2CopyWith<$Res> {
  factory _$Document2CopyWith(_Document2 value, $Res Function(_Document2) _then) = __$Document2CopyWithImpl;
@override @useResult
$Res call({
 Type5 type, String id, String number, Status3 status, int total, Customer10 customer
});


@override $Customer10CopyWith<$Res> get customer;

}
/// @nodoc
class __$Document2CopyWithImpl<$Res>
    implements _$Document2CopyWith<$Res> {
  __$Document2CopyWithImpl(this._self, this._then);

  final _Document2 _self;
  final $Res Function(_Document2) _then;

/// Create a copy of Document2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? id = null,Object? number = null,Object? status = null,Object? total = null,Object? customer = null,}) {
  return _then(_Document2(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type5,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status3,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,customer: null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Customer10,
  ));
}

/// Create a copy of Document2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Customer10CopyWith<$Res> get customer {
  
  return $Customer10CopyWith<$Res>(_self.customer, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}

// dart format on
