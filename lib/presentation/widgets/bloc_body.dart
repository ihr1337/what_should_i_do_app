import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_should_i_do/presentation/managers/bloc/keys_list_bloc.dart';

import '../../data/models/keys_list_model.dart';
import '../../data/repositories/repositories.dart';

Widget blocBody() {
  return BlocProvider(
    create: (context) => KeysListBloc(
      KeysListRepository(),
    )..add(LoadKeysEvent()),
    child: BlocBuilder<KeysListBloc, KeysListState>(
      builder: ((context, state) {
        if (KeysListState is KeysLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (KeysListState is KeysErrorState) {
          return const Center(
            child: Text('Couldn\'t load'),
          );
        }
        if (KeysListState is KeysLoadedState) {
          List<KeysListModel> keysList = state.keys;
          return ListView.builder(itemBuilder: ((_, index) => {}));
        }
      }),
    ),
  );
}


















// CommonTemplate(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [],
//             ),
//           ),
//         ),