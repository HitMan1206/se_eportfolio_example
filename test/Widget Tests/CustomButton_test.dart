import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';

void main(){
  MaterialApp testApp = MaterialApp(
    home: Scaffold(
      body: CustomButton("Test Button", (){}, keyName: "TestButton",),
    ),
  );
  
  testWidgets("custom button", (WidgetTester tester) async {
    
     await tester.pumpWidget(testApp);
    
    expect(find.byType(CustomButton), findsOneWidget);
    expect(find.byType(CustomText), findsOneWidget);
    
  });
  
}