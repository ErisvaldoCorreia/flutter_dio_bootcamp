import 'package:flutter/material.dart';
import 'package:flutter_dio_bootcamp/src/pages/counter.page.dart';
import 'package:provider/provider.dart';

import './services/dark_mode.service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var darkModeService = Provider.of<DarKModeService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Fluttter'),
        actions: [
          const Center(child: Text('Dark Mode')),
          Switch(
            value: darkModeService.darkMode,
            onChanged: (bool value) {
              darkModeService.darkMode = value;
            },
          ),
        ],
      ),
      body: const CounterPage(),
    );
  }
}
