part of 'debt_bloc.dart';

@freezed
abstract class DebtState with _$DebtState {
  const factory DebtState.initial() = _InitialDebtState;
  const factory DebtState.loading() = _LoadingDebtState;
  const factory DebtState.data({
    UserDebt userDebt,
    @required bool authUser,
  }) = _DataDebtState;
  const factory DebtState.succesPay() = _SuccesPayDebtState;
  const factory DebtState.error({@required String message}) = _ErrorDebtState;
}

// @freezed
// abstract class CharactersState with _$CharactersState {
//   /// Состояние с данными
//   const factory CharactersState.data({
//     /// Параметры
//     @required final List<Character> characterList,
//     @required final bool isGrid,
//   }) = _DataCharactersState;

//   /// Состояние инициализации
//   const factory CharactersState.initial() = _InitialCharactersState;

//   /// Состояние отображения этапа загрузки
//   const factory CharactersState.loading() = _LoadingCharactersState;

//   const factory CharactersState.error({@required String message}) =
//       _ErrorCharactersState;
// }
