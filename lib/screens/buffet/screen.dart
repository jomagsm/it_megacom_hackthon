import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_megacom_hackthon/components/circullar_progress.dart';
import 'package:it_megacom_hackthon/screens/buffet/buffet_bloc/buffet_bloc.dart';
import 'package:it_megacom_hackthon/screens/buffet/widgets/products_list_data.dart';

class ProductsListGrid extends StatelessWidget {
  ProductsListGrid({Key key}) : super(key: key);
  final bloc = BuffetBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BuffetBloc>(
        create: (BuildContext context) => bloc..add(BuffetEvent.initial()),
        child:
            BlocConsumer<BuffetBloc, BuffetState>(listener: (context, state) {
          state.maybeWhen(
            error: (_error) => {},
            orElse: () {},
          );
        }, builder: (context, state) {
          return state.maybeMap(
              orElse: () => circularProgressScaffold(),
              loading: (_) => circularProgressScaffold(),
              error: (error) => Scaffold(
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(),
                        Text(error.message),
                        ElevatedButton(
                            onPressed: () {
                              bloc..add(BuffetEvent.initial());
                            },
                            child: Text('Повторить'))
                      ],
                    ),
                  ),
              data: (_data) => BlocProvider.value(
                  value: bloc,
                  child: ProductsListData(
                    data: _data,
                  )));
        }));
  }
}
