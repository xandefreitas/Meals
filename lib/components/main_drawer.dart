import 'package:flutter/material.dart';
import 'package:flutter_meals/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.maxFinite,
            padding: EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.bottomLeft,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.pushReplacementNamed(context, AppRoutes.HOME),
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () => Navigator.pushReplacementNamed(context, AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}
