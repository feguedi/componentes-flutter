import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() => opciones
      .map((opcion) => Column(
            children: [
              ListTile(
                title: Text(opcion),
                subtitle: Text('ola ke ase'),
                leading: Icon(Icons.account_balance_wallet),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              Divider(),
            ],
          ))
      .toList();

  // List<Widget> _crearItems() {
  //   List<Widget> lista = [];

  //   for (String opc in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text('$opc'),
  //     );

  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }
}
