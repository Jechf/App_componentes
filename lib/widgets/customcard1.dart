import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardtype1 extends StatelessWidget {
  const CustomCardtype1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primario.withOpacity(0.5),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primario),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('cancel')),
                TextButton(onPressed: () {}, child: const Text('ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
