import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){

  group("App", (){
    final newDateFactButton = find.byValueKey("NewDateFactButton");
    final dateFactDescription = find.byValueKey("DateFactDescription");
    final dateFactData = find.byValueKey("DateFactDataText");
    final dateFactButton = find.byValueKey("DateFactButton");
    final dateFactHomeButton = find.byValueKey("DateFactHomeButton");

    final newYearFactButton = find.byValueKey("NewYearFactButton");
    final yearFactDescription = find.byValueKey("YearFactDescription");
    final yearFactData = find.byValueKey("YearFactDataText");
    final yearFactButton = find.byValueKey("YearFactButton");
    final yearFactHomeButton = find.byValueKey("YearFactHomeButton");

    FlutterDriver driver;

    setUp(() async {
      driver = await FlutterDriver.connect();
    });

    tearDown(() async {
      if(driver != null){
        driver.close();
      }
    });

    test("get new date fact", () async {
      await driver.tap(dateFactButton);

      String oldDescription =  await driver.getText(dateFactDescription);
      String oldData = await driver.getText(dateFactData);

      await driver.tap(newDateFactButton);

      await sleep(Duration(seconds: 2));

      String newDescription = await driver.getText(dateFactDescription);
      String newData = await driver.getText(dateFactData);

      await driver.tap(dateFactHomeButton);

      expect(newDescription, isNot(equals(oldDescription)));
      expect(newData, isNot(equals(oldData)));
    });

    test("get new year fact", () async {
      await driver.tap(yearFactButton);

      String oldDescription =  await driver.getText(yearFactDescription);
      String oldData = await driver.getText(yearFactData);

      await driver.tap(newYearFactButton);

      await sleep(Duration(seconds: 2));

      String newDescription = await driver.getText(yearFactDescription);
      String newData = await driver.getText(yearFactData);

      await driver.tap(yearFactHomeButton);

      expect(newDescription, isNot(equals(oldDescription)));
      expect(newData, isNot(equals(oldData)));
    });


  });

}