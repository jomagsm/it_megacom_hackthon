import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_megacom_hackthon/data/network/models/buying_model.dart';
import 'package:it_megacom_hackthon/data/network/models/user_model.dart';

part 'debt_state.dart';
part 'debt_event.dart';
part 'debt_bloc.freezed.dart';

class DebtBloc extends Bloc<DebtEvent, DebtState> {
  bool _authUser = false;
  UserApp _user;
  List<Buying> _buyingList = [];
  DebtBloc() : super(DebtState.initial());

  @override
  Stream<DebtState> mapEventToState(DebtEvent event) async* {
    yield* event.map(
        initial: _mapInitialDebtEvent, inputPin: _mapInputPinDebtEvent);
  }

  Stream<DebtState> _mapInitialDebtEvent(_InitalDebtEvent event) async* {
    yield DebtState.loading();
    yield DebtState.initial();
    yield DebtState.data(authUser: _authUser, buyingList: _buyingList);
  }

  Stream<DebtState> _mapInputPinDebtEvent(_InputPinDebtEvent event) async* {
    yield DebtState.loading();
    try {
      _user = getUser(event.inputPinValue);
      _buyingList = getUserBuying(_user);
      _user != null ? _authUser = true : _authUser = false;
      yield DebtState.data(authUser: _authUser, buyingList: _buyingList);
    } catch (e) {
      yield DebtState.error(message: e.toString());
    }
  }
}
