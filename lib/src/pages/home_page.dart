import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista());
  }

  Widget _lista() {
    // menuProvider.cargarData();

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext ctx, AsyncSnapshot<List<dynamic>> snap) {
        return ListView(
          children: _listaItems(snap.data, ctx),
        );
      },
    );

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    if (data == null) {
      return [];
    }

    return data
        .map((opc) => Column(
              children: [
                ListTile(
                  title: Text(opc['texto']),
                  leading: getIcon(opc['icon']),
                  trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                  onTap: () {
                    final route =
                        MaterialPageRoute(builder: (context) => AlertPage());
                    Navigator.pushNamed(context, opc['ruta']);
                  },
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
