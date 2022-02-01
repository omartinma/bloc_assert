// ignore_for_file: prefer_const_constructors

import 'package:bloc_assert/example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExamplePage', () {
    testWidgets('throws assert', (tester) async {
      await tester.pumpWidget(MaterialApp(home: ExamplePage()));
      expect(tester.takeException(), isNotNull);
    });

    testWidgets('throws assert', (tester) async {
      try {
        await tester.pumpWidget(MaterialApp(home: ExamplePage()));
      } catch (_) {
        expect(tester.takeException(), isNotNull);
      }
    });
  });
}
