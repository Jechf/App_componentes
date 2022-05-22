import 'package:flutter/material.dart';
import 'package:flutter_app2/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'Lista Tipo 1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list_alt,
        name: 'Lista Tipo 2',
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alerts - Alertas',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'Card',
        icon: Icons.credit_card,
        name: 'Cards - Tarjetas',
        screen: const CardScreen()),
    MenuOptions(
        route: 'Avatar',
        icon: Icons.supervised_user_circle,
        name: 'Avatar Circular',
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'Animation',
        icon: Icons.play_circle_filled,
        name: 'Animaciones',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'Inputs',
        icon: Icons.input,
        name: 'Inputs',
        screen: InputsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
