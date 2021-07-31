import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert page')),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar alerta'),
          style: ButtonStyle(
            shape:
                MaterialStateProperty.resolveWith((states) => StadiumBorder()),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              }
              return Theme.of(context).colorScheme.primary;
              // return Colors.blue;
            }),
          ),
          onPressed: () => _mostrarAlerta(context),
          // onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gpp_maybe),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el conenido de la caja alerta'),
                FlutterLogo(size: 100.0),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
            ],
          );
        });
  }
}
