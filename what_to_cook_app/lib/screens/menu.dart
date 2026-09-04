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
        // Adds space around the outside edge of the grid.
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // Flutter creates as many columns as fit, without making a card
          // wider than this value. This makes the layout work on phones and
          // larger screens.
          maxCrossAxisExtent: 360,
          // Gives every card a predictable height.
          mainAxisExtent: 330,
          // Space between cards horizontally and vertically.
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: recipes.length,
        // builder creates cards only when they are needed on screen.
        itemBuilder: (context, index) => ItemCard(inputData: recipes[index]),
      ),
    );
  }
}
