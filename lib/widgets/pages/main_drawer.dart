import 'package:flutter/material.dart';
import 'package:meal_app/widgets/pages/filter_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: Drawer(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.secondary,
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Приготовим вместе',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            buildListTile('Блюдо', Icons.restaurant, () {
              Navigator.pushNamed(context, '/');
            }),
            buildListTile('Настройки', Icons.settings, () {
              Navigator.pushNamed(context, FilterPage.route);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, void Function() tapHandler) =>
      ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        onTap: tapHandler,
      );
}
