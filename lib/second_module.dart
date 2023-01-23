// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data/data_sources/remote/keys_datasource.dart';
import 'domain/use_cases/get_activity.dart';
import 'presentation/managers/bloc/keys_list_bloc.dart';
import 'presentation/pages/second_page.dart';

class SecondModule extends WidgetModule {
  SecondModule({super.key});

  @override
  List<Module> get imports => [];

  @override
  List<Bind<Object>> get binds => [
        Bind.factory((dao) => GetActivity(dao())),
        Bind.factory((repo) => KeysListBloc(repo())),
        Bind.factory((_) => ActivityDataSourceImpl()),
      ];

  @override
  Widget get view => const SecondPage();
}
