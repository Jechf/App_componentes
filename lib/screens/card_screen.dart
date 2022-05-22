import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Witget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardtype1(),
            SizedBox(
              height: 10,
            ),
            CustomCardtype2(
              imageUrl:
                  'https://www.ecoticias.com/wp-content/uploads/2022/01/146-8.jpg',
              name1: 'natural chill',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardtype2(
              imageUrl:
                  'https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/tnc_52987642_Full.jpg?crop=0,233,4000,2200&wid=2000&hei=1100&scl=2.0',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardtype2(
              name1: 'Green is best',
              imageUrl:
                  'https://www.prysma.es/wp-content/uploads/2021/02/environmental-protection-326923_1920-1920x1080.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardtype2(
              imageUrl:
                  'https://blogs.iadb.org/sostenibilidad/wp-content/uploads/sites/26/2021/04/Recuperacion-del-COVID-inversion-en-naturaleza.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardtype2(
              imageUrl:
                  'https://www.bbva.com/wp-content/uploads/2016/09/Paisaje-Patagonia-1920x1200.jpg',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
