// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stopwatch_app/main.dart';

void main() {
  testWidgets('Stopwatch app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StopwatchApp());

    // Verify that our stopwatch starts at 00:00:00.
    expect(find.text('00:00:00'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);
    expect(find.text('Reset'), findsOneWidget);

    // Tap the 'Start' button and trigger a frame.
    await tester.tap(find.text('Start'));
    await tester.pump();

    // Verify that the button text changed to 'Stop'.
    expect(find.text('Stop'), findsOneWidget);
    expect(find.text('Start'), findsNothing);
  });
}
