import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/src/services/contador.service.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // instancia por meio do Provider tipado qual controle queremos utilizar
    var counterService = Provider.of<ContadorService>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // utiliza a instancia e busca o valor. aplicamos uma conversão para string
            counterService.count.toString(),
            style: const TextStyle(fontSize: 28),
          ),
          const SizedBox(height: 24),
          TextButton(
            // disparamos a chamada do método que altera o valor do estado.
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
