import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
          title: const Text('List View Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.indigo,
                ),
                onTap: () {},
                title: Text(opciones[index])),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opciones.length));
  }
}
