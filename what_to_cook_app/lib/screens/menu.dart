import 'package:flutter/material.dart';
import 'package:what_to_cook_app/dummys/menu_data.dart' as menu_data;

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = menu_data.recipes;

    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: Center(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) =>
              ListTile(title: Text(recipes[index].name)),
        ),
      ),
    );
  }
}
