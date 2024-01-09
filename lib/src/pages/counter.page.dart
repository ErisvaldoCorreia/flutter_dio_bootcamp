import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/src/services/contador.service.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterService = Provider.of<ContadorService>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            counterService.count.toString(),
            style: const TextStyle(fontSize: 28),
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () => counterService.increment(),
            child: const Text(
              'Increment',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
