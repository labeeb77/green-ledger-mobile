// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lines.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lines {

 String get id; Product get product; Grade? get grade; PackUnit? get packUnit; String? get packCount; String? get gross; String? get tare; String get net; int? get rate; bool get billed;
/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinesCopyWith<Lines> get copyWith => _$LinesCopyWithImpl<Lines>(this as Lines, _$identity);

  /// Serializes this Lines to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Lines;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lines&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.packUnit, _this.packUnit) || other.packUnit == _this.packUnit)&&(identical(other.packCount, _this.packCount) || other.packCount == _this.packCount)&&(identical(other.gross, _this.gross) || other.gross == _this.gross)&&(identical(other.tare, _this.tare) || other.tare == _this.tare)&&(identical(other.net, _this.net) || other.net == _this.net)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.billed, _this.billed) || other.billed == _this.billed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Lines;
  return Object.hash(runtimeType,_this.id,_this.product,_this.grade,_this.packUnit,_this.packCount,_this.gross,_this.tare,_this.net,_this.rate,_this.billed);
}

@override
String toString() {
  final _this = this as Lines;
  return 'Lines(id: ${_this.id}, product: ${_this.product}, grade: ${_this.grade}, packUnit: ${_this.packUnit}, packCount: ${_this.packCount}, gross: ${_this.gross}, tare: ${_this.tare}, net: ${_this.net}, rate: ${_this.rate}, billed: ${_this.billed})';
}


}

/// @nodoc
abstract mixin class $LinesCopyWith<$Res>  {
  factory $LinesCopyWith(Lines value, $Res Function(Lines) _then) = _$LinesCopyWithImpl;
@useResult
$Res call({
 String id, Product product, Grade? grade, PackUnit? packUnit, String? packCount, String? gross, String? tare, String net, int? rate, bool billed
});


$ProductCopyWith<$Res> get product;$GradeCopyWith<$Res>? get grade;$PackUnitCopyWith<$Res>? get packUnit;

}
/// @nodoc
class _$LinesCopyWithImpl<$Res>
    implements $LinesCopyWith<$Res> {
  _$LinesCopyWithImpl(this._self, this._then);

  final Lines _self;
  final $Res Function(Lines) _then;

/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? product = null,Object? grade = freezed,Object? packUnit = freezed,Object? packCount = freezed,Object? gross = freezed,Object? tare = freezed,Object? net = null,Object? rate = freezed,Object? billed = null,}) {
  return _then(Lines(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Grade?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,gross: freezed == gross ? _self.gross : gross // ignore: cast_nullable_to_non_nullable
as String?,tare: freezed == tare ? _self.tare : tare // ignore: cast_nullable_to_non_nullable
as String?,net: null == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,billed: null == billed ? _self.billed : billed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GradeCopyWith<$Res>? get grade {
    if (_self.grade == null) {
    return null;
  }

  return $GradeCopyWith<$Res>(_self.grade!, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnitCopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnitCopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [Lines].
extension LinesPatterns on Lines {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lines value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lines() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lines value)  $default,){
final _that = this;
switch (_that) {
case _Lines():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lines value)?  $default,){
final _that = this;
switch (_that) {
case _Lines() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Product product,  Grade? grade,  PackUnit? packUnit,  String? packCount,  String? gross,  String? tare,  String net,  int? rate,  bool billed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lines() when $default != null:
return $default(_that.id,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.gross,_that.tare,_that.net,_that.rate,_that.billed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Product product,  Grade? grade,  PackUnit? packUnit,  String? packCount,  String? gross,  String? tare,  String net,  int? rate,  bool billed)  $default,) {final _that = this;
switch (_that) {
case _Lines():
return $default(_that.id,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.gross,_that.tare,_that.net,_that.rate,_that.billed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Product product,  Grade? grade,  PackUnit? packUnit,  String? packCount,  String? gross,  String? tare,  String net,  int? rate,  bool billed)?  $default,) {final _that = this;
switch (_that) {
case _Lines() when $default != null:
return $default(_that.id,_that.product,_that.grade,_that.packUnit,_that.packCount,_that.gross,_that.tare,_that.net,_that.rate,_that.billed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lines implements Lines {
  const _Lines({required this.id, required this.product, required this.grade, required this.packUnit, required this.packCount, required this.gross, required this.tare, required this.net, required this.rate, required this.billed});
  factory _Lines.fromJson(Map<String, dynamic> json) => _$LinesFromJson(json);

@override final  String id;
@override final  Product product;
@override final  Grade? grade;
@override final  PackUnit? packUnit;
@override final  String? packCount;
@override final  String? gross;
@override final  String? tare;
@override final  String net;
@override final  int? rate;
@override final  bool billed;

/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinesCopyWith<_Lines> get copyWith => __$LinesCopyWithImpl<_Lines>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lines&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.packCount, packCount) || other.packCount == packCount)&&(identical(other.gross, gross) || other.gross == gross)&&(identical(other.tare, tare) || other.tare == tare)&&(identical(other.net, net) || other.net == net)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.billed, billed) || other.billed == billed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,product,grade,packUnit,packCount,gross,tare,net,rate,billed);
}

@override
String toString() {
    return 'Lines(id: $id, product: $product, grade: $grade, packUnit: $packUnit, packCount: $packCount, gross: $gross, tare: $tare, net: $net, rate: $rate, billed: $billed)';
}


}

/// @nodoc
abstract mixin class _$LinesCopyWith<$Res> implements $LinesCopyWith<$Res> {
  factory _$LinesCopyWith(_Lines value, $Res Function(_Lines) _then) = __$LinesCopyWithImpl;
@override @useResult
$Res call({
 String id, Product product, Grade? grade, PackUnit? packUnit, String? packCount, String? gross, String? tare, String net, int? rate, bool billed
});


@override $ProductCopyWith<$Res> get product;@override $GradeCopyWith<$Res>? get grade;@override $PackUnitCopyWith<$Res>? get packUnit;

}
/// @nodoc
class __$LinesCopyWithImpl<$Res>
    implements _$LinesCopyWith<$Res> {
  __$LinesCopyWithImpl(this._self, this._then);

  final _Lines _self;
  final $Res Function(_Lines) _then;

/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? product = null,Object? grade = freezed,Object? packUnit = freezed,Object? packCount = freezed,Object? gross = freezed,Object? tare = freezed,Object? net = null,Object? rate = freezed,Object? billed = null,}) {
  return _then(_Lines(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Grade?,packUnit: freezed == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as PackUnit?,packCount: freezed == packCount ? _self.packCount : packCount // ignore: cast_nullable_to_non_nullable
as String?,gross: freezed == gross ? _self.gross : gross // ignore: cast_nullable_to_non_nullable
as String?,tare: freezed == tare ? _self.tare : tare // ignore: cast_nullable_to_non_nullable
as String?,net: null == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,billed: null == billed ? _self.billed : billed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GradeCopyWith<$Res>? get grade {
    if (_self.grade == null) {
    return null;
  }

  return $GradeCopyWith<$Res>(_self.grade!, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of Lines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackUnitCopyWith<$Res>? get packUnit {
    if (_self.packUnit == null) {
    return null;
  }

  return $PackUnitCopyWith<$Res>(_self.packUnit!, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
