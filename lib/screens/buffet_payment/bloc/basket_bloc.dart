import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_product_model.dart';
import 'package:it_megacom_hackthon/screens/buffet_payment/widgets/utils.dart';

part 'basket_event.dart';
part 'basket_state.dart';
part 'basket_bloc.freezed.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  List<BuyingProduct> _buyingProductList = [];
  double _total = 0;

  BasketBloc() : super(BasketState.initial());



  @override
  Stream<BasketState> mapEventToState(
    BasketEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialBasketEvent,
      plus: _mapPlusBasketEvent,
      minus: _mapMinusBasketEvent,
      // payButton:_mapPayButtonBasketEvent,
    );
  }
  
  Stream<BasketState> _mapInitialBasketEvent(
      _InitialBasketEvent event) async* {
    /// Возвращаем состояние загрузки
    yield BasketState.loading();
    _buyingProductList = event.buyingProductList;
    _total = getTotal(_buyingProductList);
    yield BasketState.data(buyingProduct: _buyingProductList, total: _total);
  }

Stream<BasketState> _mapPlusBasketEvent(
    _IncremenBasketEvent event) async* {
  /// Возвращаем состояние загрузки
  yield BasketState.loading();
  _buyingProductList = changeQnt(_buyingProductList, event.productId, 'plus');
  _buyingProductList = _buyingProductList;
  _total = getTotal(_buyingProductList);
  yield BasketState.data(buyingProduct: _buyingProductList, total: _total);
}

Stream<BasketState> _mapMinusBasketEvent(
    _DecremenBasketEvent event) async* {
  /// Возвращаем состояние загрузки
  yield BasketState.loading();
  _buyingProductList = changeQnt(_buyingProductList, event.productId, 'minus');
  _buyingProductList = _buyingProductList;
  _total = getTotal(_buyingProductList);
  yield BasketState.data(buyingProduct: _buyingProductList, total: _total);
}
}

