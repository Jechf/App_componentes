import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final opciones = const [
    'Gran Turismo',
    'Need For Speed',
    'Formula 1',
    'Forza Horizon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Tipo 1'),
        ),
        body: ListView(
          children: [
            ...opciones
                .map((juego) => ListTile(
                      trailing: const Icon(Icons.arrow_forward),
                      title: Text(juego),
                    ))
                .toList()
          ],
        ));
  }
}
