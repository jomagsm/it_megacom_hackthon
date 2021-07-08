part of 'debt_bloc.dart';

@freezed
abstract class DebtEvent with _$DebtEvent {
  const factory DebtEvent.initial() = _InitalDebtEvent;
  const factory DebtEvent.inputPin({@required String inputPinValue}) =
      _InputPinDebtEvent;
}

// part of 'characters_bloc.dart';

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
