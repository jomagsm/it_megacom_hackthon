import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/data/network/models/product_model.dart';
import 'package:it_megacom_hackthon/data/repository.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/utils.dart';

part 'basket_event.dart';
part 'basket_state.dart';
part 'basket_bloc.freezed.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  final _repository = Repository();
  List<ProductBuying> _buyingProductList;
  List<Product> _selectedProductsList;
  double _total = 0;
  String _pin = '';
  double _money;

  BasketBloc() : super(BasketState.initial());

  @override
  Stream<BasketState> mapEventToState(
    BasketEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialBasketEvent,
      plus: _mapPlusBasketEvent,
      minus: _mapMinusBasketEvent,
      payButton: _mapPayButtonBasketEvent,
      inputValue: _mapInputValueBasketEvent,
    );
  }

  Stream<BasketState> _mapInitialBasketEvent(_InitialBasketEvent event) async* {
    /// Возвращаем состояние загрузки
    yield BasketState.loading();
    _buyingProductList = event.buyingProductList;
    _selectedProductsList = event.selectedProductsList;
    _total = getTotal(_buyingProductList, _selectedProductsList);
    yield BasketState.data(buyingProduct: _buyingProductList, total: _total);
  }

  Stream<BasketState> _mapPlusBasketEvent(_IncremenBasketEvent event) async* {
    yield BasketState.loading();
    _buyingProductList = changeQnt(_buyingProductList, event.productId, 'plus');
    _buyingProductList = _buyingProductList;
    _total = getTotal(_buyingProductList, _selectedProductsList);
    yield BasketState.data(buyingProduct: _buyingProductList, total: _total);
  }

  Stream<BasketState> _mapMinusBasketEvent(_DecremenBasketEvent event) async* {
    yield BasketState.loading();
    _buyingProductList =
        changeQnt(_buyingProductList, event.productId, 'minus');
    _buyingProductList = _buyingProductList;
    _total = getTotal(_buyingProductList, _selectedProductsList);
    yield BasketState.data(buyingProduct: _buyingProductList, total: _total);
  }

  Stream<BasketState> _mapInputValueBasketEvent(
      _InputValueBasketEvent event) async* {
    Map<String, String> value = event.value;
    if (value.keys.toString() == '(pin)') {
      _pin = value['pin'];
    } else if (value.keys.toString() == '(money)') {
      _money = double.parse(value['money']);
    }
  }

  Stream<BasketState> _mapPayButtonBasketEvent(
      _PayButtonBasketEvent event) async* {
    yield BasketState.loading();
    try {
      BuyingProduct _buying =
          BuyingProduct(money: _money, pin: _pin, products: _buyingProductList);
      var response = await _repository.makePurchase(_buying.toJson());
      yield BasketState.successPayment(message: "Успешно!");
    } catch (e) {
      yield BasketState.error(message: e.message.toString());
    }
  }
}
