import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:what_to_cook_app/screens/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(title: const Text('What do you want me to Cook?')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/gifs/itachi-uchiha-cooking-8oqlpp6hi6i5yd0s.gif',
                width: 300,
                height: 300,
              ),
            ),
            Text(
              'Hey, it’s Vincent! 👋',

              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              'What are you feeling like eating today? 🍳',
              maxLines: 2,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              'Tap the button below and pick a dish for me to cook for you! ❤️',
              maxLines: 2,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            AnimatedButton(
              onPress: () {
                // Push adds the menu screen to the navigation stack, so the
                // device back button can return to this home screen.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()),
                );
              },
              height: 60,
              width: 200,
              text: 'Menu',
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.CENTER_LR_OUT,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
