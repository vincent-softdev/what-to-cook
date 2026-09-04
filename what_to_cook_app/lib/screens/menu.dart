import 'package:flutter/material.dart';
import 'package:what_to_cook_app/components/item_card.dart';
import 'package:what_to_cook_app/dummys/menu_data.dart' as menu_data;

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = menu_data.recipes;

    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 360,
          mainAxisExtent: 330,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) => ItemCard(inputData: recipes[index]),
      ),
    );
  }
}
