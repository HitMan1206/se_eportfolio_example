import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:se_eportfolio_example/components/BorderContainer.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';

void main(){
  MaterialApp testApp = MaterialApp(
    home: Scaffold(
      body: BorderContainer("Test Text", keyName: "TestButton",),
    ),
  );

  testWidgets("border container", (WidgetTester tester) async {

    await tester.pumpWidget(testApp);

    expect(find.byType(BorderContainer), findsOneWidget);
    expect(find.byType(CustomText), findsOneWidget);

  });

}