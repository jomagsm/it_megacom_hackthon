part of 'debt_bloc.dart';

@freezed
abstract class DebtState with _$DebtState {
  const factory DebtState.initial() = _InitialDebtState;
  const factory DebtState.loading() = _LoadingDebtState;
  const factory DebtState.data({
    UserDebt userDebt,
    @required bool authUser,

  }) = _DataDebtState;
  const factory DebtState.succesPay({@required String message}) =
      _SuccesPayDebtState;
  const factory DebtState.error({@required String message}) = _ErrorDebtState;
}
