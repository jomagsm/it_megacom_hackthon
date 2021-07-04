part of 'buffet_bloc.dart';

@freezed
abstract class BuffetState with _$BuffetState {
  const factory BuffetState.initial() = _InitialBuffetState;
  const factory BuffetState.loading() = _LoadingBuffetState;
  const factory BuffetState.data(
          {@required List<Product> productsList,
          @required int basketValue,
          @required List<Product> selectedProductsList,
          @required List<BuyingProduct> buyingProduct,
          @required bool openModal}) =
      _DataBuffetState; //При передачи true открывается модальное окно с деталями оплаты
  const factory BuffetState.basket(
      {@required List<BuyingProduct> buyingProduct}) = _BasketBuffetState;
  const factory BuffetState.wallet() = _WalletBuffetState;
  const factory BuffetState.error({@required String message}) =
      _ErrorBuffetState;
}
