import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Color.fromARGB(255, 0, 59, 66),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUdH9lYcQN0X4kQa19oUkHW2IhW3aFh-1sOQ&usqp=CAU'),
      )),
    );
  }
}
