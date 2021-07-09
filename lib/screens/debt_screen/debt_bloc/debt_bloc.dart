import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/debt_models/payment_model.dart';
import 'package:it_megacom_hackthon/data/network/models/debt_models/user_debt.dart';
import 'package:it_megacom_hackthon/data/repository.dart';

part 'debt_state.dart';
part 'debt_event.dart';
part 'debt_bloc.freezed.dart';

class DebtBloc extends Bloc<DebtEvent, DebtState> {
  final _repository = Repository();
  bool _authUser = false;
  UserDebt _userDebt;
  DebtBloc() : super(DebtState.initial());

  @override
  Stream<DebtState> mapEventToState(DebtEvent event) async* {
    yield* event.map(
        initial: _mapInitialDebtEvent,
        inputPin: _mapInputPinDebtEvent,
        makePayment: _mapMakePaymentEvent);
  }

  Stream<DebtState> _mapInitialDebtEvent(_InitalDebtEvent event) async* {
    yield DebtState.loading();
    yield DebtState.initial();
    yield DebtState.data(authUser: _authUser);
  }

  Stream<DebtState> _mapMakePaymentEvent(_MakePaymentDebtEvent event) async* {
    yield DebtState.loading();
    print(event.payment);
    print(_userDebt.pinDto.pin);
    try {
      Payment _payment =
          await _repository.makePayment(_userDebt.pinDto.pin, event.payment);
      yield DebtState.succesPay();
    } catch (e) {
      yield DebtState.error(message: e.toString());
    }
    yield DebtState.data(authUser: _authUser);
  }

  Stream<DebtState> _mapInputPinDebtEvent(_InputPinDebtEvent event) async* {
    yield DebtState.loading();
    try {
      _userDebt = await _repository.getUserOperations(event.inputPinValue);
      _userDebt != null ? _authUser = true : _authUser = false;
      yield DebtState.data(authUser: _authUser, userDebt: _userDebt);
    } catch (e) {
      yield DebtState.error(message: e.toString());
    }
  }
}
