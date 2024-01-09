import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/services/dark_mode.service.dart';
import 'src/services/contador.service.dart';
import 'src/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ultilizamos o Multiprovider para criarmos um array de estados observaveis.
      // cada ChangeNotifier escuta de forma tipada e fornece para aplicação um estado definido.
      providers: [
        ChangeNotifierProvider<DarKModeService>(
          create: (_) => DarKModeService(),
        ),
        ChangeNotifierProvider<ContadorService>(
          create: (_) => ContadorService(),
        ),
      ],
      child: Consumer<DarKModeService>(builder: (_, darkModeService, widget) {
        //usamos o Consumer tipado indicando qual provider queremos observar as alterações.
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme:
              darkModeService.darkMode ? ThemeData.dark() : ThemeData.light(),
          home: const HomePage(),
        );
      }),
    );
  }
}
