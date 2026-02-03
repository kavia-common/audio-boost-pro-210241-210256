import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_frontend/main.dart';

void main() {
  testWidgets('App boots and shows bottom navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Allow bootstrapper to run.
    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.text('Home'), findsWidgets);
    expect(find.text('Settings'), findsWidgets);
    expect(find.text('About'), findsWidgets);
  });

  testWidgets('Home tab is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(find.byIcon(Icons.home_outlined), findsOneWidget);
  });
}
