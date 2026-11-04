// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_dto_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResultDtoOutput {

 List<Customers> get customers; List<Products> get products; List<Documents> get documents;
/// Create a copy of SearchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultDtoOutputCopyWith<SearchResultDtoOutput> get copyWith => _$SearchResultDtoOutputCopyWithImpl<SearchResultDtoOutput>(this as SearchResultDtoOutput, _$identity);

  /// Serializes this SearchResultDtoOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SearchResultDtoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultDtoOutput&&const DeepCollectionEquality().equals(other.customers, _this.customers)&&const DeepCollectionEquality().equals(other.products, _this.products)&&const DeepCollectionEquality().equals(other.documents, _this.documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SearchResultDtoOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.customers),const DeepCollectionEquality().hash(_this.products),const DeepCollectionEquality().hash(_this.documents));
}

@override
String toString() {
  final _this = this as SearchResultDtoOutput;
  return 'SearchResultDtoOutput(customers: ${_this.customers}, products: ${_this.products}, documents: ${_this.documents})';
}


}

/// @nodoc
abstract mixin class $SearchResultDtoOutputCopyWith<$Res>  {
  factory $SearchResultDtoOutputCopyWith(SearchResultDtoOutput value, $Res Function(SearchResultDtoOutput) _then) = _$SearchResultDtoOutputCopyWithImpl;
@useResult
$Res call({
 List<Customers> customers, List<Products> products, List<Documents> documents
});




}
/// @nodoc
class _$SearchResultDtoOutputCopyWithImpl<$Res>
    implements $SearchResultDtoOutputCopyWith<$Res> {
  _$SearchResultDtoOutputCopyWithImpl(this._self, this._then);

  final SearchResultDtoOutput _self;
  final $Res Function(SearchResultDtoOutput) _then;

/// Create a copy of SearchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customers = null,Object? products = null,Object? documents = null,}) {
  return _then(SearchResultDtoOutput(
customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as List<Customers>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Products>,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<Documents>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResultDtoOutput].
extension SearchResultDtoOutputPatterns on SearchResultDtoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultDtoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultDtoOutput value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultDtoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultDtoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultDtoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Customers> customers,  List<Products> products,  List<Documents> documents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultDtoOutput() when $default != null:
return $default(_that.customers,_that.products,_that.documents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Customers> customers,  List<Products> products,  List<Documents> documents)  $default,) {final _that = this;
switch (_that) {
case _SearchResultDtoOutput():
return $default(_that.customers,_that.products,_that.documents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Customers> customers,  List<Products> products,  List<Documents> documents)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultDtoOutput() when $default != null:
return $default(_that.customers,_that.products,_that.documents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResultDtoOutput implements SearchResultDtoOutput {
  const _SearchResultDtoOutput({required  List<Customers> customers, required  List<Products> products, required  List<Documents> documents}): _customers = customers,_products = products,_documents = documents;
  factory _SearchResultDtoOutput.fromJson(Map<String, dynamic> json) => _$SearchResultDtoOutputFromJson(json);

 final  List<Customers> _customers;
@override List<Customers> get customers {
  if (_customers is EqualUnmodifiableListView) return _customers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customers);
}

 final  List<Products> _products;
@override List<Products> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<Documents> _documents;
@override List<Documents> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}


/// Create a copy of SearchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultDtoOutputCopyWith<_SearchResultDtoOutput> get copyWith => __$SearchResultDtoOutputCopyWithImpl<_SearchResultDtoOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultDtoOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultDtoOutput&&const DeepCollectionEquality().equals(other.customers, _customers)&&const DeepCollectionEquality().equals(other.products, _products)&&const DeepCollectionEquality().equals(other.documents, _documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_customers),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_documents));
}

@override
String toString() {
    return 'SearchResultDtoOutput(customers: $customers, products: $products, documents: $documents)';
}


}

/// @nodoc
abstract mixin class _$SearchResultDtoOutputCopyWith<$Res> implements $SearchResultDtoOutputCopyWith<$Res> {
  factory _$SearchResultDtoOutputCopyWith(_SearchResultDtoOutput value, $Res Function(_SearchResultDtoOutput) _then) = __$SearchResultDtoOutputCopyWithImpl;
@override @useResult
$Res call({
 List<Customers> customers, List<Products> products, List<Documents> documents
});




}
/// @nodoc
class __$SearchResultDtoOutputCopyWithImpl<$Res>
    implements _$SearchResultDtoOutputCopyWith<$Res> {
  __$SearchResultDtoOutputCopyWithImpl(this._self, this._then);

  final _SearchResultDtoOutput _self;
  final $Res Function(_SearchResultDtoOutput) _then;

/// Create a copy of SearchResultDtoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customers = null,Object? products = null,Object? documents = null,}) {
  return _then(_SearchResultDtoOutput(
customers: null == customers ? _self._customers : customers // ignore: cast_nullable_to_non_nullable
as List<Customers>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Products>,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<Documents>,
  ));
}


}

// dart format on
