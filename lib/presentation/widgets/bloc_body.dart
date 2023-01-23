import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_should_i_do/presentation/managers/bloc/keys_list_bloc.dart';

class KeysWidget extends StatefulWidget {
  const KeysWidget({super.key});

  @override
  State<KeysWidget> createState() => _KeysWidgetState();
}

class _KeysWidgetState extends State<KeysWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeysListBloc, KeysListState>(
      builder: ((context, state) {
        if (state is KeysLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is KeysErrorState) {
          print(state.error);

          return const Center(
            child: Text('Couldn\'t load'),
          );
        }
        if (state is KeysLoadedState) {
          return Text(state.activities);
        }
        return Container();
      }),
    );
  }
}
