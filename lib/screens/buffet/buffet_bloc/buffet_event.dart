part of 'buffet_bloc.dart';

@freezed
abstract class BuffetEvent with _$BuffetEvent {
  const factory BuffetEvent.initial() = _InitialBuffetEvent;
  const factory BuffetEvent.selectedProduct({@required int productId}) =
      _SelectedProductBuffetEvent;
  const factory BuffetEvent.selectBasket(
      ) = _SelectBasketBuffetEvent;
  const factory BuffetEvent.selectWallet() = _SelectWalletBuffetEvent;
}

// @freezed
// abstract class CharactersEvent with _$CharactersEvent {
//   /// Событие инициализации
//   const factory CharactersEvent.initial() = _InitialCharactersEvent;

//   ///Событие выбора темы
//   const factory CharactersEvent.selectedView({
//     @required bool isGrid,
//   }) = _SelectedViewCharactersEvent;

//   const factory CharactersEvent.find({
//     @required String value,
//   }) = _FindCharactersEvent;
// }
