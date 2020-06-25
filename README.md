# se_eportfolio_example

* Presentation 
   
   -> https://docs.google.com/presentation/d/1NSChNk9U-jlXmy8kX_YXdruvk_ows28M6_WBpuRRKB0/edit?usp=sharing

* Used API for sample App 
   
   -> https://rapidapi.com/divad12/api/numbers-1

## Getting Started

1. Install Flutter SDK -> https://flutter.dev/docs/get-started/install
2. Install Android Studio -> https://developer.android.com/studio
3. Get Emulator to test
    * Open Android Studio
    * Click Conigure -> AVD Manager
    * Create Virtual Device
    * Start the virtual Device
4. Clone the Project at this Commit --> https://github.com/HitMan1206/se_eportfolio_example/tree/11251e8d6fed877389d1f188e2600e27df3d94f5
5. Open it in IntelliJ
6. Choose in the Project Settings the Flutter SDK as Project SDK
7. run "flutter pub get"

=> If you need more help check https://flutter.dev/docs

## Task
If everything works try to write Tests for the Classes and Widgets.

An example of possible Tests you can find here -> https://github.com/HitMan1206/se_eportfolio_example

## Tutorial for Demo Tests
1. Add the following dependencies to your ``` pubspec.yaml ```

   ![Test Dependencies](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/TestDependencies.PNG)

2. Run ``` flutter pub get ```
3. Start writing Tests

## Unit Test
* All tests have to be in the test folder
* All tests have to end with ``` _test.dart ```
* All test files need a main function
* Compare values with the expect function
   
   ![Simple Unit Test](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/SimpleUnitTest.PNG)

* Execute tests from your flutter root with the command ``` flutter test ```

## Widget Test
* All tests have to be in the test folder
* All tests have to end with ``` _test.dart ```
* All test files need a main function
* Compare number of found widgets with the expect function
* Find widgets with a Finder (e.g. ``` find.text("text of the searched widget") ```)
   
   ![Simple Widget Test](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/WidgetTestExample.PNG)

* Execute tests from your flutter root with the command ``` flutter test ```

## Integration Test
* All tests have to be in the Test_driver folder
* Execute tests from your flutter root with the command ``` flutter drive --target=test_driver/app.dart ```
* Executing only works with a running system (e.g. an emulator)
* Each test needs two files

   1. Executable File (named like you want, e.g. ``` app.dart ```)
      
      --> Contains everything to execute the test. It sets up the test and runs the app. Minimal file is as follows
      
      
      ![Integration Test Executable](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/IntegrationTestExecutableFile.PNG)

   2. Test File (namend <executable>_test.dart, e.g. ``` app_test.dart ```)
      
      --> Contains the tests you want to execute on your app. Structure is similar to an unit test.
   
      
      ![Integration Test](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/WidgetTestExample.PNG)
   
### Finding a Widget

* Give your Widget a key
   
   ![Give a Key](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/WidgetKey.PNG)

* Use method ``` byValueKey ``` to find it
   
   ![Find Widget by Key](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/FindWidgetByKey.PNG)


### Interacting with a Widget

* Tap it: ``` driver.tap(widget) ```
* Get text:  ``` driver.getText() ``` 
* Write to a currently focused text field: ``` driver.enterText("text to enter") ```
* Move a Widget: ``` driver.drag(widget, offset) ```
   
   ![Interacting with a Widget](https://github.com/HitMan1206/se_eportfolio_example/blob/master/presentationImages/IntegrationTestMethods.PNG)
