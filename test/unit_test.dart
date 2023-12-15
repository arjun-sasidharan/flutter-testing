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