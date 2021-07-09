part of 'basket_bloc.dart';

@freezed
abstract class BasketState with _$BasketState {
  const factory BasketState.initial() = _InitialBasketState;
  const factory BasketState.loading() = _LoadingBasketState;
  const factory BasketState.error({@required String message}) = _ErrorBasketState;
  const factory BasketState.data({@required List<BuyingProduct> buyingProduct,@required double total,}) = _DataBasketState;
}