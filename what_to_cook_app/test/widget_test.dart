import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:what_to_cook_app/main.dart';
import 'package:what_to_cook_app/screens/menu.dart';

void main() {
  testWidgets('home screen opens the menu', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('What do you want me to Cook?'), findsOneWidget);
    expect(find.text('Menu'), findsNWidgets(2));

    await tester.tap(find.byType(AnimatedButton));
    await tester.pumpAndSettle();

    expect(find.byType(MenuScreen), findsOneWidget);
    expect(find.text('Chicken Teriyaki'), findsOneWidget);
  });

  testWidgets('menu renders recipe cards in a grid', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byType(AnimatedButton));
    await tester.pumpAndSettle();

    expect(find.text('Spaghetti Bolognese'), findsOneWidget);
    expect(find.text('30 min • \$12.00'), findsOneWidget);
  });
}
