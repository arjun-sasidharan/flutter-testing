# Flutter Unit/Widget Testing

A Flutter project that implements unit testing & widget testing.

## Unit Testing

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/counter.dart';

void main() {
  group('Testing increment and decrement counter', () {
    test('Testing increment counter', () {
      //setup
      Counter counter = Counter(value: 5);
      //do
      counter.incrementCounter();
      //test
      expect(counter.value, 6);
    });

    test('Testing decrement counter', () {
      //setup
      Counter counter = Counter(value: 0);
      //do
      counter.decrementCounter();
      //test
      expect(counter.value, -1);
    });
  });
}
```

## Widget Testing
```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_unit_and_widget_testing/main.dart';

void main() {
  group('Counter increment and decrement smoke test', () {
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Verify that our counter has incremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
    
    testWidgets('Counter decrement smoke test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Tap the '-' icon and trigger a frame.
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      // Verify that our counter has decremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
```