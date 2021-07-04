// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buffet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BuffetStateTearOff {
  const _$BuffetStateTearOff();

// ignore: unused_element
  _InitialBuffetState initial() {
    return const _InitialBuffetState();
  }

// ignore: unused_element
  _LoadingBuffetState loading() {
    return const _LoadingBuffetState();
  }

// ignore: unused_element
  _DataBuffetState data(
      {@required List<Product> productsList,
      @required int basketValue,
      @required List<Product> selectedProductsList,
      @required List<BuyingProduct> buyingProduct,
      @required bool openModal}) {
    return _DataBuffetState(
      productsList: productsList,
      basketValue: basketValue,
      selectedProductsList: selectedProductsList,
      buyingProduct: buyingProduct,
      openModal: openModal,
    );
  }

// ignore: unused_element
  _BasketBuffetState basket({@required List<BuyingProduct> buyingProduct}) {
    return _BasketBuffetState(
      buyingProduct: buyingProduct,
    );
  }

// ignore: unused_element
  _WalletBuffetState wallet() {
    return const _WalletBuffetState();
  }

// ignore: unused_element
  _ErrorBuffetState error({@required String message}) {
    return _ErrorBuffetState(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuffetState = _$BuffetStateTearOff();

/// @nodoc
mixin _$BuffetState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuffetStateCopyWith<$Res> {
  factory $BuffetStateCopyWith(
          BuffetState value, $Res Function(BuffetState) then) =
      _$BuffetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuffetStateCopyWithImpl<$Res> implements $BuffetStateCopyWith<$Res> {
  _$BuffetStateCopyWithImpl(this._value, this._then);

  final BuffetState _value;
  // ignore: unused_field
  final $Res Function(BuffetState) _then;
}

/// @nodoc
abstract class _$InitialBuffetStateCopyWith<$Res> {
  factory _$InitialBuffetStateCopyWith(
          _InitialBuffetState value, $Res Function(_InitialBuffetState) then) =
      __$InitialBuffetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialBuffetStateCopyWithImpl<$Res>
    extends _$BuffetStateCopyWithImpl<$Res>
    implements _$InitialBuffetStateCopyWith<$Res> {
  __$InitialBuffetStateCopyWithImpl(
      _InitialBuffetState _value, $Res Function(_InitialBuffetState) _then)
      : super(_value, (v) => _then(v as _InitialBuffetState));

  @override
  _InitialBuffetState get _value => super._value as _InitialBuffetState;
}

/// @nodoc
class _$_InitialBuffetState implements _InitialBuffetState {
  const _$_InitialBuffetState();

  @override
  String toString() {
    return 'BuffetState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialBuffetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
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
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialBuffetState implements BuffetState {
  const factory _InitialBuffetState() = _$_InitialBuffetState;
}

/// @nodoc
abstract class _$LoadingBuffetStateCopyWith<$Res> {
  factory _$LoadingBuffetStateCopyWith(
          _LoadingBuffetState value, $Res Function(_LoadingBuffetState) then) =
      __$LoadingBuffetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingBuffetStateCopyWithImpl<$Res>
    extends _$BuffetStateCopyWithImpl<$Res>
    implements _$LoadingBuffetStateCopyWith<$Res> {
  __$LoadingBuffetStateCopyWithImpl(
      _LoadingBuffetState _value, $Res Function(_LoadingBuffetState) _then)
      : super(_value, (v) => _then(v as _LoadingBuffetState));

  @override
  _LoadingBuffetState get _value => super._value as _LoadingBuffetState;
}

/// @nodoc
class _$_LoadingBuffetState implements _LoadingBuffetState {
  const _$_LoadingBuffetState();

  @override
  String toString() {
    return 'BuffetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingBuffetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
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
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingBuffetState implements BuffetState {
  const factory _LoadingBuffetState() = _$_LoadingBuffetState;
}

/// @nodoc
abstract class _$DataBuffetStateCopyWith<$Res> {
  factory _$DataBuffetStateCopyWith(
          _DataBuffetState value, $Res Function(_DataBuffetState) then) =
      __$DataBuffetStateCopyWithImpl<$Res>;
  $Res call(
      {List<Product> productsList,
      int basketValue,
      List<Product> selectedProductsList,
      List<BuyingProduct> buyingProduct,
      bool openModal});
}

/// @nodoc
class __$DataBuffetStateCopyWithImpl<$Res>
    extends _$BuffetStateCopyWithImpl<$Res>
    implements _$DataBuffetStateCopyWith<$Res> {
  __$DataBuffetStateCopyWithImpl(
      _DataBuffetState _value, $Res Function(_DataBuffetState) _then)
      : super(_value, (v) => _then(v as _DataBuffetState));

  @override
  _DataBuffetState get _value => super._value as _DataBuffetState;

  @override
  $Res call({
    Object productsList = freezed,
    Object basketValue = freezed,
    Object selectedProductsList = freezed,
    Object buyingProduct = freezed,
    Object openModal = freezed,
  }) {
    return _then(_DataBuffetState(
      productsList: productsList == freezed
          ? _value.productsList
          : productsList as List<Product>,
      basketValue:
          basketValue == freezed ? _value.basketValue : basketValue as int,
      selectedProductsList: selectedProductsList == freezed
          ? _value.selectedProductsList
          : selectedProductsList as List<Product>,
      buyingProduct: buyingProduct == freezed
          ? _value.buyingProduct
          : buyingProduct as List<BuyingProduct>,
      openModal: openModal == freezed ? _value.openModal : openModal as bool,
    ));
  }
}

/// @nodoc
class _$_DataBuffetState implements _DataBuffetState {
  const _$_DataBuffetState(
      {@required this.productsList,
      @required this.basketValue,
      @required this.selectedProductsList,
      @required this.buyingProduct,
      @required this.openModal})
      : assert(productsList != null),
        assert(basketValue != null),
        assert(selectedProductsList != null),
        assert(buyingProduct != null),
        assert(openModal != null);

  @override
  final List<Product> productsList;
  @override
  final int basketValue;
  @override
  final List<Product> selectedProductsList;
  @override
  final List<BuyingProduct> buyingProduct;
  @override
  final bool openModal;

  @override
  String toString() {
    return 'BuffetState.data(productsList: $productsList, basketValue: $basketValue, selectedProductsList: $selectedProductsList, buyingProduct: $buyingProduct, openModal: $openModal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataBuffetState &&
            (identical(other.productsList, productsList) ||
                const DeepCollectionEquality()
                    .equals(other.productsList, productsList)) &&
            (identical(other.basketValue, basketValue) ||
                const DeepCollectionEquality()
                    .equals(other.basketValue, basketValue)) &&
            (identical(other.selectedProductsList, selectedProductsList) ||
                const DeepCollectionEquality().equals(
                    other.selectedProductsList, selectedProductsList)) &&
            (identical(other.buyingProduct, buyingProduct) ||
                const DeepCollectionEquality()
                    .equals(other.buyingProduct, buyingProduct)) &&
            (identical(other.openModal, openModal) ||
                const DeepCollectionEquality()
                    .equals(other.openModal, openModal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productsList) ^
      const DeepCollectionEquality().hash(basketValue) ^
      const DeepCollectionEquality().hash(selectedProductsList) ^
      const DeepCollectionEquality().hash(buyingProduct) ^
      const DeepCollectionEquality().hash(openModal);

  @JsonKey(ignore: true)
  @override
  _$DataBuffetStateCopyWith<_DataBuffetState> get copyWith =>
      __$DataBuffetStateCopyWithImpl<_DataBuffetState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return data(productsList, basketValue, selectedProductsList, buyingProduct,
        openModal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(productsList, basketValue, selectedProductsList,
          buyingProduct, openModal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataBuffetState implements BuffetState {
  const factory _DataBuffetState(
      {@required List<Product> productsList,
      @required int basketValue,
      @required List<Product> selectedProductsList,
      @required List<BuyingProduct> buyingProduct,
      @required bool openModal}) = _$_DataBuffetState;

  List<Product> get productsList;
  int get basketValue;
  List<Product> get selectedProductsList;
  List<BuyingProduct> get buyingProduct;
  bool get openModal;
  @JsonKey(ignore: true)
  _$DataBuffetStateCopyWith<_DataBuffetState> get copyWith;
}

/// @nodoc
abstract class _$BasketBuffetStateCopyWith<$Res> {
  factory _$BasketBuffetStateCopyWith(
          _BasketBuffetState value, $Res Function(_BasketBuffetState) then) =
      __$BasketBuffetStateCopyWithImpl<$Res>;
  $Res call({List<BuyingProduct> buyingProduct});
}

/// @nodoc
class __$BasketBuffetStateCopyWithImpl<$Res>
    extends _$BuffetStateCopyWithImpl<$Res>
    implements _$BasketBuffetStateCopyWith<$Res> {
  __$BasketBuffetStateCopyWithImpl(
      _BasketBuffetState _value, $Res Function(_BasketBuffetState) _then)
      : super(_value, (v) => _then(v as _BasketBuffetState));

  @override
  _BasketBuffetState get _value => super._value as _BasketBuffetState;

  @override
  $Res call({
    Object buyingProduct = freezed,
  }) {
    return _then(_BasketBuffetState(
      buyingProduct: buyingProduct == freezed
          ? _value.buyingProduct
          : buyingProduct as List<BuyingProduct>,
    ));
  }
}

/// @nodoc
class _$_BasketBuffetState implements _BasketBuffetState {
  const _$_BasketBuffetState({@required this.buyingProduct})
      : assert(buyingProduct != null);

  @override
  final List<BuyingProduct> buyingProduct;

  @override
  String toString() {
    return 'BuffetState.basket(buyingProduct: $buyingProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasketBuffetState &&
            (identical(other.buyingProduct, buyingProduct) ||
                const DeepCollectionEquality()
                    .equals(other.buyingProduct, buyingProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(buyingProduct);

  @JsonKey(ignore: true)
  @override
  _$BasketBuffetStateCopyWith<_BasketBuffetState> get copyWith =>
      __$BasketBuffetStateCopyWithImpl<_BasketBuffetState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return basket(buyingProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (basket != null) {
      return basket(buyingProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return basket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (basket != null) {
      return basket(this);
    }
    return orElse();
  }
}

abstract class _BasketBuffetState implements BuffetState {
  const factory _BasketBuffetState(
      {@required List<BuyingProduct> buyingProduct}) = _$_BasketBuffetState;

  List<BuyingProduct> get buyingProduct;
  @JsonKey(ignore: true)
  _$BasketBuffetStateCopyWith<_BasketBuffetState> get copyWith;
}

/// @nodoc
abstract class _$WalletBuffetStateCopyWith<$Res> {
  factory _$WalletBuffetStateCopyWith(
          _WalletBuffetState value, $Res Function(_WalletBuffetState) then) =
      __$WalletBuffetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$WalletBuffetStateCopyWithImpl<$Res>
    extends _$BuffetStateCopyWithImpl<$Res>
    implements _$WalletBuffetStateCopyWith<$Res> {
  __$WalletBuffetStateCopyWithImpl(
      _WalletBuffetState _value, $Res Function(_WalletBuffetState) _then)
      : super(_value, (v) => _then(v as _WalletBuffetState));

  @override
  _WalletBuffetState get _value => super._value as _WalletBuffetState;
}

/// @nodoc
class _$_WalletBuffetState implements _WalletBuffetState {
  const _$_WalletBuffetState();

  @override
  String toString() {
    return 'BuffetState.wallet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WalletBuffetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return wallet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wallet != null) {
      return wallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return wallet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wallet != null) {
      return wallet(this);
    }
    return orElse();
  }
}

abstract class _WalletBuffetState implements BuffetState {
  const factory _WalletBuffetState() = _$_WalletBuffetState;
}

/// @nodoc
abstract class _$ErrorBuffetStateCopyWith<$Res> {
  factory _$ErrorBuffetStateCopyWith(
          _ErrorBuffetState value, $Res Function(_ErrorBuffetState) then) =
      __$ErrorBuffetStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorBuffetStateCopyWithImpl<$Res>
    extends _$BuffetStateCopyWithImpl<$Res>
    implements _$ErrorBuffetStateCopyWith<$Res> {
  __$ErrorBuffetStateCopyWithImpl(
      _ErrorBuffetState _value, $Res Function(_ErrorBuffetState) _then)
      : super(_value, (v) => _then(v as _ErrorBuffetState));

  @override
  _ErrorBuffetState get _value => super._value as _ErrorBuffetState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorBuffetState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ErrorBuffetState implements _ErrorBuffetState {
  const _$_ErrorBuffetState({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'BuffetState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorBuffetState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorBuffetStateCopyWith<_ErrorBuffetState> get copyWith =>
      __$ErrorBuffetStateCopyWithImpl<_ErrorBuffetState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required
        TResult data(
            List<Product> productsList,
            int basketValue,
            List<Product> selectedProductsList,
            List<BuyingProduct> buyingProduct,
            bool openModal),
    @required TResult basket(List<BuyingProduct> buyingProduct),
    @required TResult wallet(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(
        List<Product> productsList,
        int basketValue,
        List<Product> selectedProductsList,
        List<BuyingProduct> buyingProduct,
        bool openModal),
    TResult basket(List<BuyingProduct> buyingProduct),
    TResult wallet(),
    TResult error(String message),
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
    @required TResult initial(_InitialBuffetState value),
    @required TResult loading(_LoadingBuffetState value),
    @required TResult data(_DataBuffetState value),
    @required TResult basket(_BasketBuffetState value),
    @required TResult wallet(_WalletBuffetState value),
    @required TResult error(_ErrorBuffetState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(basket != null);
    assert(wallet != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetState value),
    TResult loading(_LoadingBuffetState value),
    TResult data(_DataBuffetState value),
    TResult basket(_BasketBuffetState value),
    TResult wallet(_WalletBuffetState value),
    TResult error(_ErrorBuffetState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorBuffetState implements BuffetState {
  const factory _ErrorBuffetState({@required String message}) =
      _$_ErrorBuffetState;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorBuffetStateCopyWith<_ErrorBuffetState> get copyWith;
}

/// @nodoc
class _$BuffetEventTearOff {
  const _$BuffetEventTearOff();

// ignore: unused_element
  _InitialBuffetEvent initial() {
    return const _InitialBuffetEvent();
  }

// ignore: unused_element
  _SelectedProductBuffetEvent selectedProduct({@required int productId}) {
    return _SelectedProductBuffetEvent(
      productId: productId,
    );
  }

// ignore: unused_element
  _SelectBasketBuffetEvent selectBasket() {
    return const _SelectBasketBuffetEvent();
  }

// ignore: unused_element
  _SelectWalletBuffetEvent selectWallet() {
    return const _SelectWalletBuffetEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $BuffetEvent = _$BuffetEventTearOff();

/// @nodoc
mixin _$BuffetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedProduct(int productId),
    @required TResult selectBasket(),
    @required TResult selectWallet(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedProduct(int productId),
    TResult selectBasket(),
    TResult selectWallet(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetEvent value),
    @required TResult selectedProduct(_SelectedProductBuffetEvent value),
    @required TResult selectBasket(_SelectBasketBuffetEvent value),
    @required TResult selectWallet(_SelectWalletBuffetEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetEvent value),
    TResult selectedProduct(_SelectedProductBuffetEvent value),
    TResult selectBasket(_SelectBasketBuffetEvent value),
    TResult selectWallet(_SelectWalletBuffetEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuffetEventCopyWith<$Res> {
  factory $BuffetEventCopyWith(
          BuffetEvent value, $Res Function(BuffetEvent) then) =
      _$BuffetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuffetEventCopyWithImpl<$Res> implements $BuffetEventCopyWith<$Res> {
  _$BuffetEventCopyWithImpl(this._value, this._then);

  final BuffetEvent _value;
  // ignore: unused_field
  final $Res Function(BuffetEvent) _then;
}

/// @nodoc
abstract class _$InitialBuffetEventCopyWith<$Res> {
  factory _$InitialBuffetEventCopyWith(
          _InitialBuffetEvent value, $Res Function(_InitialBuffetEvent) then) =
      __$InitialBuffetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialBuffetEventCopyWithImpl<$Res>
    extends _$BuffetEventCopyWithImpl<$Res>
    implements _$InitialBuffetEventCopyWith<$Res> {
  __$InitialBuffetEventCopyWithImpl(
      _InitialBuffetEvent _value, $Res Function(_InitialBuffetEvent) _then)
      : super(_value, (v) => _then(v as _InitialBuffetEvent));

  @override
  _InitialBuffetEvent get _value => super._value as _InitialBuffetEvent;
}

/// @nodoc
class _$_InitialBuffetEvent implements _InitialBuffetEvent {
  const _$_InitialBuffetEvent();

  @override
  String toString() {
    return 'BuffetEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialBuffetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedProduct(int productId),
    @required TResult selectBasket(),
    @required TResult selectWallet(),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedProduct(int productId),
    TResult selectBasket(),
    TResult selectWallet(),
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
    @required TResult initial(_InitialBuffetEvent value),
    @required TResult selectedProduct(_SelectedProductBuffetEvent value),
    @required TResult selectBasket(_SelectBasketBuffetEvent value),
    @required TResult selectWallet(_SelectWalletBuffetEvent value),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetEvent value),
    TResult selectedProduct(_SelectedProductBuffetEvent value),
    TResult selectBasket(_SelectBasketBuffetEvent value),
    TResult selectWallet(_SelectWalletBuffetEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialBuffetEvent implements BuffetEvent {
  const factory _InitialBuffetEvent() = _$_InitialBuffetEvent;
}

/// @nodoc
abstract class _$SelectedProductBuffetEventCopyWith<$Res> {
  factory _$SelectedProductBuffetEventCopyWith(
          _SelectedProductBuffetEvent value,
          $Res Function(_SelectedProductBuffetEvent) then) =
      __$SelectedProductBuffetEventCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$SelectedProductBuffetEventCopyWithImpl<$Res>
    extends _$BuffetEventCopyWithImpl<$Res>
    implements _$SelectedProductBuffetEventCopyWith<$Res> {
  __$SelectedProductBuffetEventCopyWithImpl(_SelectedProductBuffetEvent _value,
      $Res Function(_SelectedProductBuffetEvent) _then)
      : super(_value, (v) => _then(v as _SelectedProductBuffetEvent));

  @override
  _SelectedProductBuffetEvent get _value =>
      super._value as _SelectedProductBuffetEvent;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_SelectedProductBuffetEvent(
      productId: productId == freezed ? _value.productId : productId as int,
    ));
  }
}

/// @nodoc
class _$_SelectedProductBuffetEvent implements _SelectedProductBuffetEvent {
  const _$_SelectedProductBuffetEvent({@required this.productId})
      : assert(productId != null);

  @override
  final int productId;

  @override
  String toString() {
    return 'BuffetEvent.selectedProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedProductBuffetEvent &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  _$SelectedProductBuffetEventCopyWith<_SelectedProductBuffetEvent>
      get copyWith => __$SelectedProductBuffetEventCopyWithImpl<
          _SelectedProductBuffetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedProduct(int productId),
    @required TResult selectBasket(),
    @required TResult selectWallet(),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return selectedProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedProduct(int productId),
    TResult selectBasket(),
    TResult selectWallet(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedProduct != null) {
      return selectedProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetEvent value),
    @required TResult selectedProduct(_SelectedProductBuffetEvent value),
    @required TResult selectBasket(_SelectBasketBuffetEvent value),
    @required TResult selectWallet(_SelectWalletBuffetEvent value),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return selectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetEvent value),
    TResult selectedProduct(_SelectedProductBuffetEvent value),
    TResult selectBasket(_SelectBasketBuffetEvent value),
    TResult selectWallet(_SelectWalletBuffetEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedProduct != null) {
      return selectedProduct(this);
    }
    return orElse();
  }
}

abstract class _SelectedProductBuffetEvent implements BuffetEvent {
  const factory _SelectedProductBuffetEvent({@required int productId}) =
      _$_SelectedProductBuffetEvent;

  int get productId;
  @JsonKey(ignore: true)
  _$SelectedProductBuffetEventCopyWith<_SelectedProductBuffetEvent>
      get copyWith;
}

/// @nodoc
abstract class _$SelectBasketBuffetEventCopyWith<$Res> {
  factory _$SelectBasketBuffetEventCopyWith(_SelectBasketBuffetEvent value,
          $Res Function(_SelectBasketBuffetEvent) then) =
      __$SelectBasketBuffetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectBasketBuffetEventCopyWithImpl<$Res>
    extends _$BuffetEventCopyWithImpl<$Res>
    implements _$SelectBasketBuffetEventCopyWith<$Res> {
  __$SelectBasketBuffetEventCopyWithImpl(_SelectBasketBuffetEvent _value,
      $Res Function(_SelectBasketBuffetEvent) _then)
      : super(_value, (v) => _then(v as _SelectBasketBuffetEvent));

  @override
  _SelectBasketBuffetEvent get _value =>
      super._value as _SelectBasketBuffetEvent;
}

/// @nodoc
class _$_SelectBasketBuffetEvent implements _SelectBasketBuffetEvent {
  const _$_SelectBasketBuffetEvent();

  @override
  String toString() {
    return 'BuffetEvent.selectBasket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectBasketBuffetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedProduct(int productId),
    @required TResult selectBasket(),
    @required TResult selectWallet(),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return selectBasket();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedProduct(int productId),
    TResult selectBasket(),
    TResult selectWallet(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectBasket != null) {
      return selectBasket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetEvent value),
    @required TResult selectedProduct(_SelectedProductBuffetEvent value),
    @required TResult selectBasket(_SelectBasketBuffetEvent value),
    @required TResult selectWallet(_SelectWalletBuffetEvent value),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return selectBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetEvent value),
    TResult selectedProduct(_SelectedProductBuffetEvent value),
    TResult selectBasket(_SelectBasketBuffetEvent value),
    TResult selectWallet(_SelectWalletBuffetEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectBasket != null) {
      return selectBasket(this);
    }
    return orElse();
  }
}

abstract class _SelectBasketBuffetEvent implements BuffetEvent {
  const factory _SelectBasketBuffetEvent() = _$_SelectBasketBuffetEvent;
}

/// @nodoc
abstract class _$SelectWalletBuffetEventCopyWith<$Res> {
  factory _$SelectWalletBuffetEventCopyWith(_SelectWalletBuffetEvent value,
          $Res Function(_SelectWalletBuffetEvent) then) =
      __$SelectWalletBuffetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectWalletBuffetEventCopyWithImpl<$Res>
    extends _$BuffetEventCopyWithImpl<$Res>
    implements _$SelectWalletBuffetEventCopyWith<$Res> {
  __$SelectWalletBuffetEventCopyWithImpl(_SelectWalletBuffetEvent _value,
      $Res Function(_SelectWalletBuffetEvent) _then)
      : super(_value, (v) => _then(v as _SelectWalletBuffetEvent));

  @override
  _SelectWalletBuffetEvent get _value =>
      super._value as _SelectWalletBuffetEvent;
}

/// @nodoc
class _$_SelectWalletBuffetEvent implements _SelectWalletBuffetEvent {
  const _$_SelectWalletBuffetEvent();

  @override
  String toString() {
    return 'BuffetEvent.selectWallet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectWalletBuffetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedProduct(int productId),
    @required TResult selectBasket(),
    @required TResult selectWallet(),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return selectWallet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedProduct(int productId),
    TResult selectBasket(),
    TResult selectWallet(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectWallet != null) {
      return selectWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialBuffetEvent value),
    @required TResult selectedProduct(_SelectedProductBuffetEvent value),
    @required TResult selectBasket(_SelectBasketBuffetEvent value),
    @required TResult selectWallet(_SelectWalletBuffetEvent value),
  }) {
    assert(initial != null);
    assert(selectedProduct != null);
    assert(selectBasket != null);
    assert(selectWallet != null);
    return selectWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialBuffetEvent value),
    TResult selectedProduct(_SelectedProductBuffetEvent value),
    TResult selectBasket(_SelectBasketBuffetEvent value),
    TResult selectWallet(_SelectWalletBuffetEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectWallet != null) {
      return selectWallet(this);
    }
    return orElse();
  }
}

abstract class _SelectWalletBuffetEvent implements BuffetEvent {
  const factory _SelectWalletBuffetEvent() = _$_SelectWalletBuffetEvent;
}
