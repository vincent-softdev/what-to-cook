import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(title: const Text('What do you want me to Cook?')),
      body: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/images/man-cooking-with-pan_24908-81150.png',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
