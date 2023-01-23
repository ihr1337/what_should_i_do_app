import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../managers/bloc/keys_list_bloc.dart';
import '../widgets/bloc_body.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<KeysListBloc>(
          create: (BuildContext context) => Modular.get<KeysListBloc>()
            ..add(
              LoadKeysEvent(),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('What should i do?'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Modular.to.navigate('/');
                },
                child: const Icon(Icons.house))
          ],
        ),
        body: const KeysWidget(),
      ),
    );
  }
}
