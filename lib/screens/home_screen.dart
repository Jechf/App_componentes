import 'package:flutter/material.dart';
import 'package:flutter_app2/router/app_routes.dart';
import 'package:flutter_app2/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(menuOptions[i].name),
                  leading: Icon(
                    menuOptions[i].icon,
                    color: AppTheme.primario,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
