import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/widgets/pages/main_drawer.dart';

class FilterPage extends StatefulWidget {
  static const String route = '/filters';

  const FilterPage({super.key});

  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Настройки',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Text(
              'Ваши предпочтения в еде',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Блюда без глютена',
                  'Все блюда, включающие глютен, не будут отображаться',
                  MockData.isGlutenFree,
                  (value) {
                    setState(
                      () {
                        MockData.isGlutenFree = value;
                      },
                    );
                  },
                ),
                const Divider(),
                _buildSwitchListTile(
                  'Блюда без лактозы',
                  'Все блюда, включающие лактозу, не будут отображаться',
                  MockData.isLactoseFree,
                      (value) {
                    setState(
                          () {
                        MockData.isLactoseFree = value;
                      },
                    );
                  },
                ),
                const Divider(),
                _buildSwitchListTile(
                  'Вегетарианские блюда',
                  'Все блюда, включающие мясо, не будут отображаться',
                  MockData.isVegetarian,
                      (value) {
                    setState(
                          () {
                        MockData.isVegetarian = value;
                      },
                    );
                  },
                ),
                const Divider(),
                _buildSwitchListTile(
                  'Веганские блюда',
                  'Все блюда, включающие животные жиры, не будут отображаться',
                  MockData.isVegan,
                      (value) {
                    setState(
                          () {
                        MockData.isVegan = value;
                      },
                    );
                  },
                ),
                const Divider(),

              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildSwitchListTile(
      String title,
      String description,
      bool parameter,
      void Function(bool) tapHandler) {
    return SwitchListTile(
      activeColor: Colors.pink,
      value: parameter,
      onChanged: tapHandler,
      title: Text(title),
      subtitle: Text(description),
    );
  }
}



