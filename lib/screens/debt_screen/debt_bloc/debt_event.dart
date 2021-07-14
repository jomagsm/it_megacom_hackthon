part of 'debt_bloc.dart';

@freezed
abstract class DebtEvent with _$DebtEvent {
  const factory DebtEvent.initial() = _InitalDebtEvent;
  const factory DebtEvent.inputPin({@required String inputPinValue}) =
      _InputPinDebtEvent;
  const factory DebtEvent.makePayment({@required double payment}) =
      _MakePaymentDebtEvent;
}
