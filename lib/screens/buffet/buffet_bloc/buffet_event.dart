part of 'buffet_bloc.dart';

@freezed
abstract class BuffetEvent with _$BuffetEvent {
  const factory BuffetEvent.initial() = _InitialBuffetEvent;
  const factory BuffetEvent.selectedProduct({@required int productId}) =
      _SelectedProductBuffetEvent;
  const factory BuffetEvent.selectBasket() = _SelectBasketBuffetEvent;
}
