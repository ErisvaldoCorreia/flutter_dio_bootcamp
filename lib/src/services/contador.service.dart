import 'package:flutter/material.dart';

//Criação de classe para controle do estado observado

class ContadorService extends ChangeNotifier {
  // inicia uma variavel privada tratada com métodos get e set
  int _count = 0;

  // retorna o valor para que possamos observar onde for necessário
  int get count => _count;

  // método que aplica alguma alteração no estado.
  void increment() {
    _count++;

    // utilizado para notificar o observador e assim executar a alteração do estado
    notifyListeners();
  }
}
