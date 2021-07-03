import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/generated/intl/messages_en.dart';

part 'buffet_state.dart';
part 'buffet_event.dart';
part 'buffet_bloc.freezed.dart';

class BuffetBloc extends Bloc<BuffetEvent, BuffetState> {
  List<BuyingProduct> buyingProduct = [];
  List<Product> productsList = [];
  List<Product> selectedProductsList = [];
  int basketValue = 0;

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
      productsList = getAllProduct();
    } catch (e) {
      yield BuffetState.error(message: e.toString());
    }
    yield BuffetState.data(
        productsList: productsList,
        basketValue: basketValue,
        selectedProductsList: selectedProductsList);
  }

  Stream<BuffetState> _mapSelectedProductBuffetEvent(
      _SelectedProductBuffetEvent event) async* {
    yield BuffetState.loading();
    var product = getProduct(event.productId);
    buyingProduct.add(BuyingProduct(product: product, qnt: 1));
    selectedProductsList.add(product);
    basketValue += product.price.round();
    yield BuffetState.data(
        productsList: productsList,
        basketValue: basketValue,
        selectedProductsList: selectedProductsList);
  }

  Stream<BuffetState> _mapSelectBasketBuffetEvent(
      _SelectBasketBuffetEvent event) async* {
    yield BuffetState.loading();
    print(buyingProduct.length);
    yield BuffetState.basket(buyingProduct: buyingProduct);
  }

  Stream<BuffetState> _mapSelectWalletBuffetEvent(
      _SelectWalletBuffetEvent event) async* {
    yield BuffetState.loading();
    yield BuffetState.wallet();
  }
}
