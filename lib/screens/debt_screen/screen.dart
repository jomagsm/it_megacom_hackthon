import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet/screen.dart';
import 'debt_bloc/debt_bloc.dart';
import 'widgets/debt_modal_data.dart';

class DebtModal extends StatelessWidget {
  DebtModal({Key key}) : super(key: key);
  final bloc = DebtBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DebtBloc>(
      create: (BuildContext context) => bloc..add(DebtEvent.initial()),
      child: BlocConsumer<DebtBloc, DebtState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (_error) => {},
            succesPay: (messages) => {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(messages))),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsListGrid()),
                      (route) => false)
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            succesPay: (_) => Scaffold(
              body: Center(
                child: Text('Succes'),
              ),
            ),
            loading: (_) =>
                Scaffold(body: Center(child: CircularProgressIndicator())),
            error: (error) => Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(),
                  Text(error.message),
                  ElevatedButton(
                      onPressed: () {
                        bloc..add(DebtEvent.initial());
                      },
                      child: Text('Повторить'))
                ],
              ),
            ),
            data: (_data) => BlocProvider<DebtBloc>.value(
              value: bloc,
              child: DebtModalData(
                data: _data,
              ),
            ),
          );
        },
      ),
    );
  }
}
