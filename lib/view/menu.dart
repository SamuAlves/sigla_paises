// @dart=2.9

import 'package:flutter/material.dart';
import 'package:sigla_paises/view/mensagem.dart';
import 'package:sigla_paises/view/paises_screen.dart';

import 'ajuda.dart';

class Menu extends StatelessWidget with Mensagem {
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Drawer(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.blue,
              height: 100.0,
              child: Text(
                'Menu',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text('Pesquisar'),
              leading: Icon(Icons.search),
              onTap: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (BuildContext context) => SimpleDialog(
                          title: Text("Digite o nome do país"),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: search,
                              ),
                            ),
                            Row(
                              children: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      showMensagem(
                                          "Operação Cancelada", context);
                                    },
                                    child: Text("Cancelar")),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      showMensagem(
                                          "Pesquisa realizada para o pais ${search.text}",
                                          context);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  PaisesScreen(
                                                      pais: search.text)));
                                    },
                                    child: Text(
                                      "OK",
                                      style:
                                          TextStyle(color: Colors.blueAccent),
                                    )),
                              ],
                              mainAxisAlignment: MainAxisAlignment.end,
                            )
                          ],
                        ));
              },
            ),
            ListTile(
              title: Text('Ajuda'),
              leading: Icon(Icons.help),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Ajuda()));
              },
            )
          ],
        ),
      )),
    );
  }
}
