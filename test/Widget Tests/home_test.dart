import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';
import 'package:se_eportfolio_example/screens/home.dart';

void main(){

  MaterialApp testApp = MaterialApp(
    home: Scaffold(
        body: HomeScreen()
    ),
  );

  testWidgets("home screen test", (WidgetTester tester) async {

    await tester.pumpWidget(testApp);

    expect(find.text("Willkommen zur Test App"), findsOneWidget);
    expect(find.text("Wähle eine Kategorie"), findsOneWidget);
    expect(find.byType(CustomButton), findsNWidgets(3));

  });

}
