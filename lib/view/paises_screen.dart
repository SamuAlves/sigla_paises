// @dart=2.9

import 'package:flutter/material.dart';
import 'package:sigla_paises/view/menu.dart';
import 'package:sigla_paises/view/paises_dados.dart';

class PaisesScreen extends StatelessWidget {
  final String pais;

  PaisesScreen({this.pais = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sigla dos Paises'), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PaisesScreen(pais: "")));
            },
            icon: Icon(Icons.refresh)),
      ]),
      body: PaisesDados(pais: pais),
      drawer: Menu(),
    );
  }
}
