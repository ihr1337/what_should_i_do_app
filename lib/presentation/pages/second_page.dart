import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:what_should_i_do/common/common_template.dart';

import '../../data/repositories/repositories.dart';
import '../managers/bloc/keys_list_bloc.dart';
import '../widgets/bloc_body.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<KeysListBloc>(
          create: (BuildContext context) => KeysListBloc(KeysListRepository()),
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
          body: blocBody()),
    );
  }
}
