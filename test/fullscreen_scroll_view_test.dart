import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fullscreen_scroll_view/fullscreen_scroll_view.dart';

void main() {
  // This test is expected to fail
  testWidgets('Expanded cannot be inside SingleChildScrollView', skip: true,
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text('data'),
                Expanded(child: SizedBox.shrink()),
                Text('data2'),
              ],
            ),
          ),
        ),
      ),
    );
  });

  testWidgets('Expanded can be inside FullScreenScrollView', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FullScreenScrollView(
            child: Column(
              children: [
                Text('text'),
                Expanded(child: SizedBox.shrink()),
                Text('text2'),
              ],
            ),
          ),
        ),
      ),
    );
  });
}
