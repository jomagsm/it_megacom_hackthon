part of 'basket_bloc.dart';

@freezed
abstract class BasketState with _$BasketState {
  const factory BasketState.initial() = _InitialBasketState;
  const factory BasketState.loading() = _LoadingBasketState;
  const factory BasketState.error({@required String message}) =
      _ErrorBasketState;
  const factory BasketState.data({
    @required List<ProductBuying> buyingProduct,
    @required double total,
  }) = _DataBasketState;
   const factory BasketState.successPayment({@required String message}) = _SuccessPaymentBasketState;
}
