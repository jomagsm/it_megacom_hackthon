import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';

part 'buffet_state.dart';
part 'buffet_event.dart';
part 'buffet_bloc.freezed.dart';

class BuffetBloc extends Bloc<BuffetEvent, BuffetState> {
  List<BuyingProduct> _buyingProductList = [];
  List<Product> _productsList = [];
  List<Product> _selectedProductsList = [];
  int _basketValue = 0;
  bool _openModal = false;

  BuffetBloc() : super(BuffetState.initial());

  @override
  Stream<BuffetState> mapEventToState(BuffetEvent event) async* {
    yield* event.map(
      initial: _mapInitialBuffetEvent,
      selectedProduct: _mapSelectedProductBuffetEvent,
      selectBasket: _mapSelectBasketBuffetEvent,
      selectWallet: _mapSelectWalletBuffetEvent,
    );
  }

  Stream<BuffetState> _mapInitialBuffetEvent(_InitialBuffetEvent event) async* {
    yield BuffetState.loading();
    try {
      _productsList = getAllProduct();
    } catch (e) {
      yield BuffetState.error(message: e.toString());
    }
    yield BuffetState.data(
        productsList: _productsList,
        basketValue: _basketValue,
        buyingProduct: _buyingProductList,
        selectedProductsList: _selectedProductsList,
        openModal: _openModal);
  }

  Stream<BuffetState> _mapSelectedProductBuffetEvent(
      _SelectedProductBuffetEvent event) async* {
    yield BuffetState.loading();
    var product = getProduct(event.productId);
    if (_buyingProductList.isNotEmpty) {
      if (checkListOfProduct(_buyingProductList, product.id)) {
        for (var i in _buyingProductList) {
          if (i.product.id == product.id) {
            i.qnt += 1;
          }
        }
      } else
        _buyingProductList.add(BuyingProduct(product: product, qnt: 1));
    } else {
      _buyingProductList.add(BuyingProduct(product: product, qnt: 1));
    }
    print(_buyingProductList.length);
    _selectedProductsList.add(product);
    _basketValue += product.price.round();
    yield BuffetState.data(
        productsList: _productsList,
        basketValue: _basketValue,
        buyingProduct: _buyingProductList,
        selectedProductsList: _selectedProductsList,
        openModal: _openModal);
  }

  Stream<BuffetState> _mapSelectBasketBuffetEvent(
      _SelectBasketBuffetEvent event) async* {
    yield BuffetState.loading();
    _openModal = true;
    yield BuffetState.data(
        productsList: _productsList,
        basketValue: _basketValue,
        buyingProduct: _buyingProductList,
        selectedProductsList: _selectedProductsList,
        openModal: _openModal);
  }

  Stream<BuffetState> _mapSelectWalletBuffetEvent(
      _SelectWalletBuffetEvent event) async* {
    yield BuffetState.loading();
    yield BuffetState.wallet();
  }
}
