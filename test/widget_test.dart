import 'package:assessment_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:assessment_app/providers/posts_provider.dart';

void main() {
  testWidgets('HomePage builds with AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => PostsProvider(),
        child: const MaterialApp(home: HomePage()),
      ),
    );

    //  Just check that the AppBar exists
    expect(find.byType(AppBar), findsOneWidget);
    // Check that the AppBar has the correct title
    expect(find.text('Posts With Provider'), findsOneWidget);
  });
}
