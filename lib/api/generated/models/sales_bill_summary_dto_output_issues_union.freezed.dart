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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant1Type type,  int lineNo,  String product,  int rate,  int minimum)?  variant1,TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant2Type type,  int outstanding,  int newCredit,  int limit)?  variant2,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1() when variant1 != null:
return variant1(_that.type,_that.lineNo,_that.product,_that.rate,_that.minimum);case SalesBillSummaryDtoOutputIssuesUnionVariant2() when variant2 != null:
return variant2(_that.type,_that.outstanding,_that.newCredit,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant1Type type,  int lineNo,  String product,  int rate,  int minimum)  variant1,required TResult Function( SalesBillSummaryDtoOutputIssuesUnionVariant2Type type,  int outstanding,  int newCredit,  int limit)  variant2,}) {final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1():
return variant1(_that.type,_that.lineNo,_that.product,_that.rate,_that.minimum);case SalesBillSummaryDtoOutputIssuesUnionVariant2():
return variant2(_that.type,_that.outstanding,_that.newCredit,_that.limit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SalesBillSummaryDtoOutputIssuesUnionVariant1Type type,  int lineNo,  String product,  int rate,  int minimum)?  variant1,TResult? Function( SalesBillSummaryDtoOutputIssuesUnionVariant2Type type,  int outstanding,  int newCredit,  int limit)?  variant2,}) {final _that = this;
switch (_that) {
case SalesBillSummaryDtoOutputIssuesUnionVariant1() when variant1 != null:
return variant1(_that.type,_that.lineNo,_that.product,_that.rate,_that.minimum);case SalesBillSummaryDtoOutputIssuesUnionVariant2() when variant2 != null:
return variant2(_that.type,_that.outstanding,_that.newCredit,_that.limit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class SalesBillSummaryDtoOutputIssuesUnionVariant1 implements SalesBillSummaryDtoOutputIssuesUnion {
  const SalesBillSummaryDtoOutputIssuesUnionVariant1({required this.type, required this.lineNo, required this.product, required this.rate, required this.minimum,  String? $type}): $type = $type ?? 'variant1';
  factory SalesBillSummaryDtoOutputIssuesUnionVariant1.fromJson(Map<String, dynamic> json) => _$SalesBillSummaryDtoOutputIssuesUnionVariant1FromJson(json);

@override final  SalesBillSummaryDtoOutputIssuesUnionVariant1Type type;
 final  int lineNo;
 final  String product;
 final  int rate;
 final  int minimum;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryDtoOutputIssuesUnionVariant1&&(identical(other.type, type) || other.type == type)&&(identical(other.lineNo, lineNo) || other.lineNo == lineNo)&&(identical(other.product, product) || other.product == product)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.minimum, minimum) || other.minimum == minimum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,lineNo,product,rate,minimum);
}

@override
String toString() {
    return 'SalesBillSummaryDtoOutputIssuesUnion.variant1(type: $type, lineNo: $lineNo, product: $product, rate: $rate, minimum: $minimum)';
}


}

/// @nodoc
abstract mixin class $SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWith<$Res> implements $SalesBillSummaryDtoOutputIssuesUnionCopyWith<$Res> {
  factory $SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWith(SalesBillSummaryDtoOutputIssuesUnionVariant1 value, $Res Function(SalesBillSummaryDtoOutputIssuesUnionVariant1) _then) = _$SalesBillSummaryDtoOutputIssuesUnionVariant1CopyWithImpl;
@useResult
$Res call({
 SalesBillSummaryDtoOutputIssuesUnionVariant1Type type, int lineNo, String product, int rate, int minimum
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
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? lineNo = null,Object? product = null,Object? rate = null,Object? minimum = null,}) {
  return _then(SalesBillSummaryDtoOutputIssuesUnionVariant1(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputIssuesUnionVariant1Type,lineNo: null == lineNo ? _self.lineNo : lineNo // ignore: cast_nullable_to_non_nullable
as int,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc

@JsonSerializable()
class SalesBillSummaryDtoOutputIssuesUnionVariant2 implements SalesBillSummaryDtoOutputIssuesUnion {
  const SalesBillSummaryDtoOutputIssuesUnionVariant2({required this.type, required this.outstanding, required this.newCredit, required this.limit,  String? $type}): $type = $type ?? 'variant2';
  factory SalesBillSummaryDtoOutputIssuesUnionVariant2.fromJson(Map<String, dynamic> json) => _$SalesBillSummaryDtoOutputIssuesUnionVariant2FromJson(json);

@override final  SalesBillSummaryDtoOutputIssuesUnionVariant2Type type;
 final  int outstanding;
 final  int newCredit;
 final  int limit;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesBillSummaryDtoOutputIssuesUnionVariant2&&(identical(other.type, type) || other.type == type)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.newCredit, newCredit) || other.newCredit == newCredit)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,outstanding,newCredit,limit);
}

@override
String toString() {
    return 'SalesBillSummaryDtoOutputIssuesUnion.variant2(type: $type, outstanding: $outstanding, newCredit: $newCredit, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWith<$Res> implements $SalesBillSummaryDtoOutputIssuesUnionCopyWith<$Res> {
  factory $SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWith(SalesBillSummaryDtoOutputIssuesUnionVariant2 value, $Res Function(SalesBillSummaryDtoOutputIssuesUnionVariant2) _then) = _$SalesBillSummaryDtoOutputIssuesUnionVariant2CopyWithImpl;
@useResult
$Res call({
 SalesBillSummaryDtoOutputIssuesUnionVariant2Type type, int outstanding, int newCredit, int limit
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
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? outstanding = null,Object? newCredit = null,Object? limit = null,}) {
  return _then(SalesBillSummaryDtoOutputIssuesUnionVariant2(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SalesBillSummaryDtoOutputIssuesUnionVariant2Type,outstanding: null == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as int,newCredit: null == newCredit ? _self.newCredit : newCredit // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
