import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:restaurant_menu_app/main.dart';

void main() {
  testWidgets('Restaurant app smoke test', (WidgetTester tester) async {
    
    await tester.pumpWidget(const RestaurantApp());

    
    expect(find.text('Menu'), findsOneWidget);

  });
}
