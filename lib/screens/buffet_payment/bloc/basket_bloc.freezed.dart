// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BasketEventTearOff {
  const _$BasketEventTearOff();

// ignore: unused_element
  _InitialBasketEvent initial(
      {@required List<ProductBuying> buyingProductList,
      @required List<Product> selectedProductsList}) {
    return _InitialBasketEvent(
      buyingProductList: buyingProductList,
      selectedProductsList: selectedProductsList,
    );
  }

// ignore: unused_element
  _IncremenBasketEvent plus({@required int productId}) {
    return _IncremenBasketEvent(
      productId: productId,
    );
  }

// ignore: unused_element
  _DecremenBasketEvent minus({@required int productId}) {
    return _DecremenBasketEvent(
      productId: productId,
    );
  }

// ignore: unused_element
  _InputValueBasketEvent inputValue({@required Map<String, String> value}) {
    return _InputValueBasketEvent(
      value: value,
    );
  }

// ignore: unused_element
  _PayButtonBasketEvent payButton() {
    return const _PayButtonBasketEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $BasketEvent = _$BasketEventTearOff();

/// @nodoc
mixin _$BasketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initial(List<ProductBuying> buyingProductList,
            List<Product> selectedProductsList),
    @required TResult plus(int productId),
    @required TResult minus(int productId),
    @required TResult inputValue(Map<String, String> value),
    @required TResult payButton(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<ProductBuying> buyingProductList,
        List<Product> selectedProductsList),
    TResult plus(int productId),
    TResult minus(int productId),
    TResult inputValue(Map<String, String> value),
    TResult payButton(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketEvent value),
    @required TResult plus(_IncremenBasketEvent value),
    @required TResult minus(_DecremenBasketEvent value),
    @required TResult inputValue(_InputValueBasketEvent value),
    @required TResult payButton(_PayButtonBasketEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketEvent value),
    TResult plus(_IncremenBasketEvent value),
    TResult minus(_DecremenBasketEvent value),
    TResult inputValue(_InputValueBasketEvent value),
    TResult payButton(_PayButtonBasketEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BasketEventCopyWith<$Res> {
  factory $BasketEventCopyWith(
          BasketEvent value, $Res Function(BasketEvent) then) =
      _$BasketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasketEventCopyWithImpl<$Res> implements $BasketEventCopyWith<$Res> {
  _$BasketEventCopyWithImpl(this._value, this._then);

  final BasketEvent _value;
  // ignore: unused_field
  final $Res Function(BasketEvent) _then;
}

/// @nodoc
abstract class _$InitialBasketEventCopyWith<$Res> {
  factory _$InitialBasketEventCopyWith(
          _InitialBasketEvent value, $Res Function(_InitialBasketEvent) then) =
      __$InitialBasketEventCopyWithImpl<$Res>;
  $Res call(
      {List<ProductBuying> buyingProductList,
      List<Product> selectedProductsList});
}

/// @nodoc
class __$InitialBasketEventCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res>
    implements _$InitialBasketEventCopyWith<$Res> {
  __$InitialBasketEventCopyWithImpl(
      _InitialBasketEvent _value, $Res Function(_InitialBasketEvent) _then)
      : super(_value, (v) => _then(v as _InitialBasketEvent));

  @override
  _InitialBasketEvent get _value => super._value as _InitialBasketEvent;

  @override
  $Res call({
    Object buyingProductList = freezed,
    Object selectedProductsList = freezed,
  }) {
    return _then(_InitialBasketEvent(
      buyingProductList: buyingProductList == freezed
          ? _value.buyingProductList
          : buyingProductList as List<ProductBuying>,
      selectedProductsList: selectedProductsList == freezed
          ? _value.selectedProductsList
          : selectedProductsList as List<Product>,
    ));
  }
}

/// @nodoc
class _$_InitialBasketEvent implements _InitialBasketEvent {
  const _$_InitialBasketEvent(
      {@required this.buyingProductList, @required this.selectedProductsList})
      : assert(buyingProductList != null),
        assert(selectedProductsList != null);

  @override
  final List<ProductBuying> buyingProductList;
  @override
  final List<Product> selectedProductsList;

  @override
  String toString() {
    return 'BasketEvent.initial(buyingProductList: $buyingProductList, selectedProductsList: $selectedProductsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialBasketEvent &&
            (identical(other.buyingProductList, buyingProductList) ||
                const DeepCollectionEquality()
                    .equals(other.buyingProductList, buyingProductList)) &&
            (identical(other.selectedProductsList, selectedProductsList) ||
                const DeepCollectionEquality()
                    .equals(other.selectedProductsList, selectedProductsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buyingProductList) ^
      const DeepCollectionEquality().hash(selectedProductsList);

  @JsonKey(ignore: true)
  @override
  _$InitialBasketEventCopyWith<_InitialBasketEvent> get copyWith =>
      __$InitialBasketEventCopyWithImpl<_InitialBasketEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initial(List<ProductBuying> buyingProductList,
            List<Product> selectedProductsList),
    @required TResult plus(int productId),
    @required TResult minus(int productId),
    @required TResult inputValue(Map<String, String> value),
    @required TResult payButton(),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return initial(buyingProductList, selectedProductsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<ProductBuying> buyingProductList,
        List<Product> selectedProductsList),
    TResult plus(int productId),
    TResult minus(int productId),
    TResult inputValue(Map<String, String> value),
    TResult payButton(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(buyingProductList, selectedProductsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketEvent value),
    @required TResult plus(_IncremenBasketEvent value),
    @required TResult minus(_DecremenBasketEvent value),
    @required TResult inputValue(_InputValueBasketEvent value),
    @required TResult payButton(_PayButtonBasketEvent value),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketEvent value),
    TResult plus(_IncremenBasketEvent value),
    TResult minus(_DecremenBasketEvent value),
    TResult inputValue(_InputValueBasketEvent value),
    TResult payButton(_PayButtonBasketEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialBasketEvent implements BasketEvent {
  const factory _InitialBasketEvent(
      {@required List<ProductBuying> buyingProductList,
      @required List<Product> selectedProductsList}) = _$_InitialBasketEvent;

  List<ProductBuying> get buyingProductList;
  List<Product> get selectedProductsList;
  @JsonKey(ignore: true)
  _$InitialBasketEventCopyWith<_InitialBasketEvent> get copyWith;
}

/// @nodoc
abstract class _$IncremenBasketEventCopyWith<$Res> {
  factory _$IncremenBasketEventCopyWith(_IncremenBasketEvent value,
          $Res Function(_IncremenBasketEvent) then) =
      __$IncremenBasketEventCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$IncremenBasketEventCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res>
    implements _$IncremenBasketEventCopyWith<$Res> {
  __$IncremenBasketEventCopyWithImpl(
      _IncremenBasketEvent _value, $Res Function(_IncremenBasketEvent) _then)
      : super(_value, (v) => _then(v as _IncremenBasketEvent));

  @override
  _IncremenBasketEvent get _value => super._value as _IncremenBasketEvent;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_IncremenBasketEvent(
      productId: productId == freezed ? _value.productId : productId as int,
    ));
  }
}

/// @nodoc
class _$_IncremenBasketEvent implements _IncremenBasketEvent {
  const _$_IncremenBasketEvent({@required this.productId})
      : assert(productId != null);

  @override
  final int productId;

  @override
  String toString() {
    return 'BasketEvent.plus(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncremenBasketEvent &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  _$IncremenBasketEventCopyWith<_IncremenBasketEvent> get copyWith =>
      __$IncremenBasketEventCopyWithImpl<_IncremenBasketEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initial(List<ProductBuying> buyingProductList,
            List<Product> selectedProductsList),
    @required TResult plus(int productId),
    @required TResult minus(int productId),
    @required TResult inputValue(Map<String, String> value),
    @required TResult payButton(),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return plus(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<ProductBuying> buyingProductList,
        List<Product> selectedProductsList),
    TResult plus(int productId),
    TResult minus(int productId),
    TResult inputValue(Map<String, String> value),
    TResult payButton(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (plus != null) {
      return plus(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketEvent value),
    @required TResult plus(_IncremenBasketEvent value),
    @required TResult minus(_DecremenBasketEvent value),
    @required TResult inputValue(_InputValueBasketEvent value),
    @required TResult payButton(_PayButtonBasketEvent value),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return plus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketEvent value),
    TResult plus(_IncremenBasketEvent value),
    TResult minus(_DecremenBasketEvent value),
    TResult inputValue(_InputValueBasketEvent value),
    TResult payButton(_PayButtonBasketEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (plus != null) {
      return plus(this);
    }
    return orElse();
  }
}

abstract class _IncremenBasketEvent implements BasketEvent {
  const factory _IncremenBasketEvent({@required int productId}) =
      _$_IncremenBasketEvent;

  int get productId;
  @JsonKey(ignore: true)
  _$IncremenBasketEventCopyWith<_IncremenBasketEvent> get copyWith;
}

/// @nodoc
abstract class _$DecremenBasketEventCopyWith<$Res> {
  factory _$DecremenBasketEventCopyWith(_DecremenBasketEvent value,
          $Res Function(_DecremenBasketEvent) then) =
      __$DecremenBasketEventCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$DecremenBasketEventCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res>
    implements _$DecremenBasketEventCopyWith<$Res> {
  __$DecremenBasketEventCopyWithImpl(
      _DecremenBasketEvent _value, $Res Function(_DecremenBasketEvent) _then)
      : super(_value, (v) => _then(v as _DecremenBasketEvent));

  @override
  _DecremenBasketEvent get _value => super._value as _DecremenBasketEvent;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_DecremenBasketEvent(
      productId: productId == freezed ? _value.productId : productId as int,
    ));
  }
}

/// @nodoc
class _$_DecremenBasketEvent implements _DecremenBasketEvent {
  const _$_DecremenBasketEvent({@required this.productId})
      : assert(productId != null);

  @override
  final int productId;

  @override
  String toString() {
    return 'BasketEvent.minus(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecremenBasketEvent &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  _$DecremenBasketEventCopyWith<_DecremenBasketEvent> get copyWith =>
      __$DecremenBasketEventCopyWithImpl<_DecremenBasketEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initial(List<ProductBuying> buyingProductList,
            List<Product> selectedProductsList),
    @required TResult plus(int productId),
    @required TResult minus(int productId),
    @required TResult inputValue(Map<String, String> value),
    @required TResult payButton(),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return minus(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<ProductBuying> buyingProductList,
        List<Product> selectedProductsList),
    TResult plus(int productId),
    TResult minus(int productId),
    TResult inputValue(Map<String, String> value),
    TResult payButton(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (minus != null) {
      return minus(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketEvent value),
    @required TResult plus(_IncremenBasketEvent value),
    @required TResult minus(_DecremenBasketEvent value),
    @required TResult inputValue(_InputValueBasketEvent value),
    @required TResult payButton(_PayButtonBasketEvent value),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return minus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketEvent value),
    TResult plus(_IncremenBasketEvent value),
    TResult minus(_DecremenBasketEvent value),
    TResult inputValue(_InputValueBasketEvent value),
    TResult payButton(_PayButtonBasketEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (minus != null) {
      return minus(this);
    }
    return orElse();
  }
}

abstract class _DecremenBasketEvent implements BasketEvent {
  const factory _DecremenBasketEvent({@required int productId}) =
      _$_DecremenBasketEvent;

  int get productId;
  @JsonKey(ignore: true)
  _$DecremenBasketEventCopyWith<_DecremenBasketEvent> get copyWith;
}

/// @nodoc
abstract class _$InputValueBasketEventCopyWith<$Res> {
  factory _$InputValueBasketEventCopyWith(_InputValueBasketEvent value,
          $Res Function(_InputValueBasketEvent) then) =
      __$InputValueBasketEventCopyWithImpl<$Res>;
  $Res call({Map<String, String> value});
}

/// @nodoc
class __$InputValueBasketEventCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res>
    implements _$InputValueBasketEventCopyWith<$Res> {
  __$InputValueBasketEventCopyWithImpl(_InputValueBasketEvent _value,
      $Res Function(_InputValueBasketEvent) _then)
      : super(_value, (v) => _then(v as _InputValueBasketEvent));

  @override
  _InputValueBasketEvent get _value => super._value as _InputValueBasketEvent;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_InputValueBasketEvent(
      value: value == freezed ? _value.value : value as Map<String, String>,
    ));
  }
}

/// @nodoc
class _$_InputValueBasketEvent implements _InputValueBasketEvent {
  const _$_InputValueBasketEvent({@required this.value})
      : assert(value != null);

  @override
  final Map<String, String> value;

  @override
  String toString() {
    return 'BasketEvent.inputValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputValueBasketEvent &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$InputValueBasketEventCopyWith<_InputValueBasketEvent> get copyWith =>
      __$InputValueBasketEventCopyWithImpl<_InputValueBasketEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initial(List<ProductBuying> buyingProductList,
            List<Product> selectedProductsList),
    @required TResult plus(int productId),
    @required TResult minus(int productId),
    @required TResult inputValue(Map<String, String> value),
    @required TResult payButton(),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return inputValue(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<ProductBuying> buyingProductList,
        List<Product> selectedProductsList),
    TResult plus(int productId),
    TResult minus(int productId),
    TResult inputValue(Map<String, String> value),
    TResult payButton(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inputValue != null) {
      return inputValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketEvent value),
    @required TResult plus(_IncremenBasketEvent value),
    @required TResult minus(_DecremenBasketEvent value),
    @required TResult inputValue(_InputValueBasketEvent value),
    @required TResult payButton(_PayButtonBasketEvent value),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return inputValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketEvent value),
    TResult plus(_IncremenBasketEvent value),
    TResult minus(_DecremenBasketEvent value),
    TResult inputValue(_InputValueBasketEvent value),
    TResult payButton(_PayButtonBasketEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inputValue != null) {
      return inputValue(this);
    }
    return orElse();
  }
}

abstract class _InputValueBasketEvent implements BasketEvent {
  const factory _InputValueBasketEvent({@required Map<String, String> value}) =
      _$_InputValueBasketEvent;

  Map<String, String> get value;
  @JsonKey(ignore: true)
  _$InputValueBasketEventCopyWith<_InputValueBasketEvent> get copyWith;
}

/// @nodoc
abstract class _$PayButtonBasketEventCopyWith<$Res> {
  factory _$PayButtonBasketEventCopyWith(_PayButtonBasketEvent value,
          $Res Function(_PayButtonBasketEvent) then) =
      __$PayButtonBasketEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$PayButtonBasketEventCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res>
    implements _$PayButtonBasketEventCopyWith<$Res> {
  __$PayButtonBasketEventCopyWithImpl(
      _PayButtonBasketEvent _value, $Res Function(_PayButtonBasketEvent) _then)
      : super(_value, (v) => _then(v as _PayButtonBasketEvent));

  @override
  _PayButtonBasketEvent get _value => super._value as _PayButtonBasketEvent;
}

/// @nodoc
class _$_PayButtonBasketEvent implements _PayButtonBasketEvent {
  const _$_PayButtonBasketEvent();

  @override
  String toString() {
    return 'BasketEvent.payButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PayButtonBasketEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult initial(List<ProductBuying> buyingProductList,
            List<Product> selectedProductsList),
    @required TResult plus(int productId),
    @required TResult minus(int productId),
    @required TResult inputValue(Map<String, String> value),
    @required TResult payButton(),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return payButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<ProductBuying> buyingProductList,
        List<Product> selectedProductsList),
    TResult plus(int productId),
    TResult minus(int productId),
    TResult inputValue(Map<String, String> value),
    TResult payButton(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (payButton != null) {
      return payButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketEvent value),
    @required TResult plus(_IncremenBasketEvent value),
    @required TResult minus(_DecremenBasketEvent value),
    @required TResult inputValue(_InputValueBasketEvent value),
    @required TResult payButton(_PayButtonBasketEvent value),
  }) {
    assert(initial != null);
    assert(plus != null);
    assert(minus != null);
    assert(inputValue != null);
    assert(payButton != null);
    return payButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketEvent value),
    TResult plus(_IncremenBasketEvent value),
    TResult minus(_DecremenBasketEvent value),
    TResult inputValue(_InputValueBasketEvent value),
    TResult payButton(_PayButtonBasketEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (payButton != null) {
      return payButton(this);
    }
    return orElse();
  }
}

abstract class _PayButtonBasketEvent implements BasketEvent {
  const factory _PayButtonBasketEvent() = _$_PayButtonBasketEvent;
}

/// @nodoc
class _$BasketStateTearOff {
  const _$BasketStateTearOff();

// ignore: unused_element
  _InitialBasketState initial() {
    return const _InitialBasketState();
  }

// ignore: unused_element
  _LoadingBasketState loading() {
    return const _LoadingBasketState();
  }

// ignore: unused_element
  _ErrorBasketState error({@required String message}) {
    return _ErrorBasketState(
      message: message,
    );
  }

// ignore: unused_element
  _DataBasketState data(
      {@required List<ProductBuying> buyingProduct, @required double total}) {
    return _DataBasketState(
      buyingProduct: buyingProduct,
      total: total,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BasketState = _$BasketStateTearOff();

/// @nodoc
mixin _$BasketState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult data(List<ProductBuying> buyingProduct, double total),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult data(List<ProductBuying> buyingProduct, double total),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketState value),
    @required TResult loading(_LoadingBasketState value),
    @required TResult error(_ErrorBasketState value),
    @required TResult data(_DataBasketState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketState value),
    TResult loading(_LoadingBasketState value),
    TResult error(_ErrorBasketState value),
    TResult data(_DataBasketState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res> implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  final BasketState _value;
  // ignore: unused_field
  final $Res Function(BasketState) _then;
}

/// @nodoc
abstract class _$InitialBasketStateCopyWith<$Res> {
  factory _$InitialBasketStateCopyWith(
          _InitialBasketState value, $Res Function(_InitialBasketState) then) =
      __$InitialBasketStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialBasketStateCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res>
    implements _$InitialBasketStateCopyWith<$Res> {
  __$InitialBasketStateCopyWithImpl(
      _InitialBasketState _value, $Res Function(_InitialBasketState) _then)
      : super(_value, (v) => _then(v as _InitialBasketState));

  @override
  _InitialBasketState get _value => super._value as _InitialBasketState;
}

/// @nodoc
class _$_InitialBasketState implements _InitialBasketState {
  const _$_InitialBasketState();

  @override
  String toString() {
    return 'BasketState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialBasketState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult data(List<ProductBuying> buyingProduct, double total),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult data(List<ProductBuying> buyingProduct, double total),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketState value),
    @required TResult loading(_LoadingBasketState value),
    @required TResult error(_ErrorBasketState value),
    @required TResult data(_DataBasketState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketState value),
    TResult loading(_LoadingBasketState value),
    TResult error(_ErrorBasketState value),
    TResult data(_DataBasketState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialBasketState implements BasketState {
  const factory _InitialBasketState() = _$_InitialBasketState;
}

/// @nodoc
abstract class _$LoadingBasketStateCopyWith<$Res> {
  factory _$LoadingBasketStateCopyWith(
          _LoadingBasketState value, $Res Function(_LoadingBasketState) then) =
      __$LoadingBasketStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingBasketStateCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res>
    implements _$LoadingBasketStateCopyWith<$Res> {
  __$LoadingBasketStateCopyWithImpl(
      _LoadingBasketState _value, $Res Function(_LoadingBasketState) _then)
      : super(_value, (v) => _then(v as _LoadingBasketState));

  @override
  _LoadingBasketState get _value => super._value as _LoadingBasketState;
}

/// @nodoc
class _$_LoadingBasketState implements _LoadingBasketState {
  const _$_LoadingBasketState();

  @override
  String toString() {
    return 'BasketState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingBasketState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult data(List<ProductBuying> buyingProduct, double total),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult data(List<ProductBuying> buyingProduct, double total),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketState value),
    @required TResult loading(_LoadingBasketState value),
    @required TResult error(_ErrorBasketState value),
    @required TResult data(_DataBasketState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketState value),
    TResult loading(_LoadingBasketState value),
    TResult error(_ErrorBasketState value),
    TResult data(_DataBasketState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingBasketState implements BasketState {
  const factory _LoadingBasketState() = _$_LoadingBasketState;
}

/// @nodoc
abstract class _$ErrorBasketStateCopyWith<$Res> {
  factory _$ErrorBasketStateCopyWith(
          _ErrorBasketState value, $Res Function(_ErrorBasketState) then) =
      __$ErrorBasketStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorBasketStateCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res>
    implements _$ErrorBasketStateCopyWith<$Res> {
  __$ErrorBasketStateCopyWithImpl(
      _ErrorBasketState _value, $Res Function(_ErrorBasketState) _then)
      : super(_value, (v) => _then(v as _ErrorBasketState));

  @override
  _ErrorBasketState get _value => super._value as _ErrorBasketState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorBasketState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ErrorBasketState implements _ErrorBasketState {
  const _$_ErrorBasketState({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'BasketState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorBasketState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorBasketStateCopyWith<_ErrorBasketState> get copyWith =>
      __$ErrorBasketStateCopyWithImpl<_ErrorBasketState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult data(List<ProductBuying> buyingProduct, double total),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult data(List<ProductBuying> buyingProduct, double total),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketState value),
    @required TResult loading(_LoadingBasketState value),
    @required TResult error(_ErrorBasketState value),
    @required TResult data(_DataBasketState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketState value),
    TResult loading(_LoadingBasketState value),
    TResult error(_ErrorBasketState value),
    TResult data(_DataBasketState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorBasketState implements BasketState {
  const factory _ErrorBasketState({@required String message}) =
      _$_ErrorBasketState;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorBasketStateCopyWith<_ErrorBasketState> get copyWith;
}

/// @nodoc
abstract class _$DataBasketStateCopyWith<$Res> {
  factory _$DataBasketStateCopyWith(
          _DataBasketState value, $Res Function(_DataBasketState) then) =
      __$DataBasketStateCopyWithImpl<$Res>;
  $Res call({List<ProductBuying> buyingProduct, double total});
}

/// @nodoc
class __$DataBasketStateCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res>
    implements _$DataBasketStateCopyWith<$Res> {
  __$DataBasketStateCopyWithImpl(
      _DataBasketState _value, $Res Function(_DataBasketState) _then)
      : super(_value, (v) => _then(v as _DataBasketState));

  @override
  _DataBasketState get _value => super._value as _DataBasketState;

  @override
  $Res call({
    Object buyingProduct = freezed,
    Object total = freezed,
  }) {
    return _then(_DataBasketState(
      buyingProduct: buyingProduct == freezed
          ? _value.buyingProduct
          : buyingProduct as List<ProductBuying>,
      total: total == freezed ? _value.total : total as double,
    ));
  }
}

/// @nodoc
class _$_DataBasketState implements _DataBasketState {
  const _$_DataBasketState({@required this.buyingProduct, @required this.total})
      : assert(buyingProduct != null),
        assert(total != null);

  @override
  final List<ProductBuying> buyingProduct;
  @override
  final double total;

  @override
  String toString() {
    return 'BasketState.data(buyingProduct: $buyingProduct, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataBasketState &&
            (identical(other.buyingProduct, buyingProduct) ||
                const DeepCollectionEquality()
                    .equals(other.buyingProduct, buyingProduct)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buyingProduct) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$DataBasketStateCopyWith<_DataBasketState> get copyWith =>
      __$DataBasketStateCopyWithImpl<_DataBasketState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
    @required TResult data(List<ProductBuying> buyingProduct, double total),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return data(buyingProduct, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    TResult data(List<ProductBuying> buyingProduct, double total),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(buyingProduct, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBasketState value),
    @required TResult loading(_LoadingBasketState value),
    @required TResult error(_ErrorBasketState value),
    @required TResult data(_DataBasketState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBasketState value),
    TResult loading(_LoadingBasketState value),
    TResult error(_ErrorBasketState value),
    TResult data(_DataBasketState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataBasketState implements BasketState {
  const factory _DataBasketState(
      {@required List<ProductBuying> buyingProduct,
      @required double total}) = _$_DataBasketState;

  List<ProductBuying> get buyingProduct;
  double get total;
  @JsonKey(ignore: true)
  _$DataBasketStateCopyWith<_DataBasketState> get copyWith;
}
