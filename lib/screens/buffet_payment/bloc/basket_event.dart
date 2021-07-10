part of 'basket_bloc.dart';

@freezed
abstract class BasketEvent with _$BasketEvent {
  const factory BasketEvent.initial({
    @required List<ProductBuying> buyingProductList,
    @required List<Product> selectedProductsList,
  }) = _InitialBasketEvent;
  const factory BasketEvent.plus({
    @required int productId,
  }) = _IncremenBasketEvent;
  const factory BasketEvent.minus({
    @required int productId,
  }) = _DecremenBasketEvent;
  // const factory BasketEvent.textFiled() = _TextFiledBasketEvent;
  const factory BasketEvent.payButton(
      {@required String pin, @required double money}) = _PayButtonBasketEvent;
}
