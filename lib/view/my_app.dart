// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sigla_paises/view/paises_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sigla dos Paises',
      home: PaisesScreen(),
    );
  }
}
