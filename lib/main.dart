import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/home_page.dart';
import 'presentation/pages/second_page.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const WhatSouldIDoApp()));
}

class WhatSouldIDoApp extends StatelessWidget {
  const WhatSouldIDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'mySmaptApp',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/second',
          child: (context, args) => const SecondPage(),
        ),
      ];
}
