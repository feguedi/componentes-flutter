import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() async {
    final data = await rootBundle.loadString('data/menu_opts.json');

    print(data);
  }
}

final menuProvider = new _MenuProvider();
