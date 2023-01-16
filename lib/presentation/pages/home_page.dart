import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:what_should_i_do/common/common_template.dart';

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
                  onPressed: () => Modular.to.navigate('/second'),
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
