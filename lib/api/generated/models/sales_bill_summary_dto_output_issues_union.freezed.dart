// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_bill_summary_dto_output_issues_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
SalesBillSummaryDtoOutputIssuesUnion _$SalesBillSummaryDtoOutputIssuesUnionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'variant1':
          return SalesBillSummaryDtoOutputIssuesUnionVariant1.fromJson(
            json
          );
                case 'variant2':
          return SalesBillSummaryDtoOutputIssuesUnionVariant2.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SalesBillSummaryDtoOutputIssuesUnion',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SalesBillSummaryDtoOutputIssuesUnion {

 Enum get type;

  /// Serializes this SalesBillSummaryDtoOutputIssuesUnion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalesBillSummaryDtoOutputIssuesUnion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryDtoOutputIssuesUnion&&(identical(other.type, _this.type) || other.type == _this.type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalesBillSummaryDtoOutputIssuesUnion;
  return Object.hash(runtimeType,_this.type);
}

@override
String toString() {
  final _this = this as SalesBillSummaryDtoOutputIssuesUnion;
  return 'SalesBillSummaryDtoOutputIssuesUnion(type: ${_this.type})';
}


}

/// @nodoc
class $SalesBillSummaryDtoOutputIssuesUnionCopyWith<$Res>  {
$SalesBillSummaryDtoOutputIssuesUnionCopyWith(SalesBillSummaryDtoOutputIssuesUnion _, $Res Function(SalesBillSummaryDtoOutputIssuesUnion) __);
}


/// Adds pattern-matching-related methods to [SalesBillSummaryDtoOutputIssuesUnion].
extension SalesBillSummaryDtoOutputIssuesUnionPatterns on SalesBillSummaryDtoOutputIssuesUnion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant1 value)?  variant1,TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant2 value)?  variant2,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1() when variant1 != null:
return variant1(_that);case SalesBillSummaryDtoOutputIssuesUnionVariant2() when variant2 != null:
return variant2(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant1 value)  variant1,required TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant2 value)  variant2,}){
final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1():
return variant1(_that);case SalesBillSummaryDtoOutputIssuesUnionVariant2():
return variant2(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SalesBillSummaryDtoOutputIssuesUnionVariant1 value)?  variant1,TResult? Function( SalesBillSummaryDtoOutputIssuesUnionVariant2 value)?  variant2,}){
final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1() when variant1 != null:
return variant1(_that);case SalesBillSummaryDtoOutputIssuesUnionVariant2() when variant2 != null:
return variant2(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int lineNo,  int minimum,  String product,  int rate,  SalesBillSummaryDtoOutputIssuesUnionVariant1Type type)?  variant1,TResult Function( int limit,  int newCredit,  int outstanding,  SalesBillSummaryDtoOutputIssuesUnionVariant2Type type)?  variant2,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1() when variant1 != null:
return variant1(_that.lineNo,_that.minimum,_that.product,_that.rate,_that.type);case SalesBillSummaryDtoOutputIssuesUnionVariant2() when variant2 != null:
return variant2(_that.limit,_that.newCredit,_that.outstanding,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int lineNo,  int minimum,  String product,  int rate,  SalesBillSummaryDtoOutputIssuesUnionVariant1Type type)  variant1,required TResult Function( int limit,  int newCredit,  int outstanding,  SalesBillSummaryDtoOutputIssuesUnionVariant2Type type)  variant2,}) {final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1():
return variant1(_that.lineNo,_that.minimum,_that.product,_that.rate,_that.type);case SalesBillSummaryDtoOutputIssuesUnionVariant2():
return variant2(_that.limit,_that.newCredit,_that.outstanding,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int lineNo,  int minimum,  String product,  int rate,  SalesBillSummaryDtoOutputIssuesUnionVariant1Type type)?  variant1,TResult? Function( int limit,  int newCredit,  int outstanding,  SalesBillSummaryDtoOutputIssuesUnionVariant2Type type)?  variant2,}) {final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1() when variant1 != null:
return variant1(_that.lineNo,_that.minimum,_that.product,_that.rate,_that.type);case SalesBillSummaryDtoOutputIssuesUnionVariant2() when variant2 != null:
return variant2(_that.limit,_that.newCredit,_that.outstanding,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class SalesBillSummaryDtoOutputIssuesUnionVariant1 implements SalesBillSummaryDtoOutputIssuesUnion {
  const SalesBillSummaryDtoOutputIssuesUnionVariant1({required this.lineNo, required this.minimum, required this.product, required this.rate, required this.type,  String? $type}): $type = $type ?? 'variant1';
  factory SalesBillSummaryDtoOutputIssuesUnionVariant1.fromJson(Map<String, dynamic> json) => _$SalesBillSummaryDtoOutputIssuesUnionVariant1FromJson(json);

 final  int lineNo;
 final  int minimum;
 final  String product;
 final  int rate;
@override final  SalesBillSummaryDtoOutputIssuesUnionVariant1Type type;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SalesBillSummaryDtoOutputIssuesUnion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWith<SalesBillSummaryDtoOutputIssuesUnionVariant1> get copyWith => _$SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWithImpl<SalesBillSummaryDtoOutputIssuesUnionVariant1>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesBillSummaryDtoOutputIssuesUnionVariant1ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryDtoOutputIssuesUnionVariant1&&(identical(other.lineNo, lineNo) || other.lineNo == lineNo)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.product, product) || other.product == product)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,lineNo,minimum,product,rate,type);
}

@override
String toString() {
    return 'SalesBillSummaryDtoOutputIssuesUnion.variant1(lineNo: $lineNo, minimum: $minimum, product: $product, rate: $rate, type: $type)';
}


}

/// @nodoc
abstract mixin class $SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWith<$Res> implements $SalesBillSummaryDtoOutputIssuesUnionCopyWith<$Res> {
  factory $SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWith(SalesBillSummaryDtoOutputIssuesUnionVariant1 value, $Res Function(SalesBillSummaryDtoOutputIssuesUnionVariant1) _then) = _$SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWithImpl;
@useResult
$Res call({
 int lineNo, int minimum, String product, int rate, SalesBillSummaryDtoOutputIssuesUnionVariant1Type type
});




}
/// @nodoc
class _$SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWithImpl<$Res>
    implements $SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWith<$Res> {
  _$SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWithImpl(this._self, this._then);

  final SalesBillSummaryDtoOutputIssuesUnionVariant1 _self;
  final $Res Function(SalesBillSummaryDtoOutputIssuesUnionVariant1) _then;

/// Create a copy of SalesBillSummaryDtoOutputIssuesUnion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lineNo = null,Object? minimum = null,Object? product = null,Object? rate = null,Object? type = null,}) {
  return _then(SalesBillSummaryDtoOutputIssuesUnionVariant1(
lineNo: null == lineNo ? _self.lineNo : lineNo // ignore: cast_nullable_to_non_nullable
as int,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as int,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputIssuesUnionVariant1Type,
  ));
}


}

/// @nodoc

@JsonSerializable()
class SalesBillSummaryDtoOutputIssuesUnionVariant2 implements SalesBillSummaryDtoOutputIssuesUnion {
  const SalesBillSummaryDtoOutputIssuesUnionVariant2({required this.limit, required this.newCredit, required this.outstanding, required this.type,  String? $type}): $type = $type ?? 'variant2';
  factory SalesBillSummaryDtoOutputIssuesUnionVariant2.fromJson(Map<String, dynamic> json) => _$SalesBillSummaryDtoOutputIssuesUnionVariant2FromJson(json);

 final  int limit;
 final  int newCredit;
 final  int outstanding;
@override final  SalesBillSummaryDtoOutputIssuesUnionVariant2Type type;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SalesBillSummaryDtoOutputIssuesUnion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWith<SalesBillSummaryDtoOutputIssuesUnionVariant2> get copyWith => _$SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWithImpl<SalesBillSummaryDtoOutputIssuesUnionVariant2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesBillSummaryDtoOutputIssuesUnionVariant2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryDtoOutputIssuesUnionVariant2&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.newCredit, newCredit) || other.newCredit == newCredit)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,limit,newCredit,outstanding,type);
}

@override
String toString() {
    return 'SalesBillSummaryDtoOutputIssuesUnion.variant2(limit: $limit, newCredit: $newCredit, outstanding: $outstanding, type: $type)';
}


}

/// @nodoc
abstract mixin class $SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWith<$Res> implements $SalesBillSummaryDtoOutputIssuesUnionCopyWith<$Res> {
  factory $SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWith(SalesBillSummaryDtoOutputIssuesUnionVariant2 value, $Res Function(SalesBillSummaryDtoOutputIssuesUnionVariant2) _then) = _$SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWithImpl;
@useResult
$Res call({
 int limit, int newCredit, int outstanding, SalesBillSummaryDtoOutputIssuesUnionVariant2Type type
});




}
/// @nodoc
class _$SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWithImpl<$Res>
    implements $SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWith<$Res> {
  _$SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWithImpl(this._self, this._then);

  final SalesBillSummaryDtoOutputIssuesUnionVariant2 _self;
  final $Res Function(SalesBillSummaryDtoOutputIssuesUnionVariant2) _then;

/// Create a copy of SalesBillSummaryDtoOutputIssuesUnion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? newCredit = null,Object? outstanding = null,Object? type = null,}) {
  return _then(SalesBillSummaryDtoOutputIssuesUnionVariant2(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,newCredit: null == newCredit ? _self.newCredit : newCredit // ignore: cast_nullable_to_non_nullable
as int,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputIssuesUnionVariant2Type,
  ));
}


}

// dart format on
