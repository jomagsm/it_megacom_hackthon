import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/data/repository.dart';

part 'buffet_state.dart';
part 'buffet_event.dart';
part 'buffet_bloc.freezed.dart';

class BuffetBloc extends Bloc<BuffetEvent, BuffetState> {
  final _repository = Repository();
  List<ProductBuying> _buyingProductList = [];
  List<Product> _productsList;
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
      changeOriental: _mapChangeOrientalBuffetEvent,
    );
  }

  Stream<BuffetState> _mapInitialBuffetEvent(_InitialBuffetEvent event) async* {
    yield BuffetState.loading();
    try {
      var _productsListFeature = _repository.getProductsAll();
      List<Product> _productsListAll = await _productsListFeature;
      _productsList = getActiveProductsList(_productsListAll);
      yield BuffetState.data(
          productsList: _productsList,
          basketValue: _basketValue,
          buyingProduct: _buyingProductList,
          selectedProductsList: _selectedProductsList,
          openModal: _openModal);
    } catch (e) {
      yield BuffetState.error(message: e.toString());
    }
  }

  Stream<BuffetState> _mapSelectedProductBuffetEvent(
      _SelectedProductBuffetEvent event) async* {
    yield BuffetState.loading();
    Product product = getProduct(event.productId, _productsList);
    if (_buyingProductList.isNotEmpty) {
      if (checkListOfProduct(_buyingProductList, event.productId)) {
        for (var i in _buyingProductList) {
          if (i.id == event.productId) {
            i.amount += 1;
          }
        }
      } else {
        _selectedProductsList.add(product);
        _buyingProductList.add(ProductBuying(amount: 1, id: event.productId));
      }
    } else {
      _selectedProductsList.add(product);
      _buyingProductList.add(ProductBuying(amount: 1, id: event.productId));
    }
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

  Stream<BuffetState> _mapChangeOrientalBuffetEvent(
      _ChangeOrientalBuffetEvent event) async* {
    yield BuffetState.data(
        productsList: _productsList,
        basketValue: _basketValue,
        buyingProduct: _buyingProductList,
        selectedProductsList: _selectedProductsList,
        openModal: _openModal);
  }
}
