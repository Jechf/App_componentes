import 'package:flutter/material.dart';
import 'package:flutter_app2/themes/app_theme.dart';

class CustomCardtype2 extends StatelessWidget {
  final String imageUrl;
  final String? name1;

  const CustomCardtype2({Key? key, required this.imageUrl, this.name1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: AppTheme.primario.withOpacity(0.5),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name1 != null)
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text(name1 ?? 'No title')),
          ],
        ));
  }
}
