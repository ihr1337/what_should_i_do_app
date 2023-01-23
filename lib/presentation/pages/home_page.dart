import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:what_should_i_do/core/common/common_template.dart';

import '../../second_module.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: CommonTemplate(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Modular.to.push(
                      MaterialPageRoute(builder: (context) => SecondModule()),
                    );
                  },
                  child: const SizedBox(
                    child: Text('Next page'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
