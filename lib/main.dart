import 'package:flutter/material.dart';
import 'package:se_eportfolio_example/screens/datefact.dart';
import 'package:se_eportfolio_example/screens/home.dart';
import 'package:se_eportfolio_example/screens/numberfact.dart';
import 'package:se_eportfolio_example/screens/screen.dart';
import 'package:se_eportfolio_example/screens/yearfact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.black,
      ),
      home: Builder(
        builder: (context) => getScaffold(HomeScreen(), context),),
      routes: {
        'home': (context) {
          return getScaffold(HomeScreen(), context);
        },
        'datefact': (context) {
          return getScaffold(DateFactScreen(), context);
        },
        'mathfact': (context) {
          return getScaffold(NumberFactScreen(), context);
        },
        'yearfact': (context) {
          return getScaffold(YearFactScreen(), context);
        },
      },
    );
  }

  Scaffold getScaffold(Screen widget, BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(title: Text("Numbers Api App"), backgroundColor: Colors.black, shape: Border(bottom: BorderSide(color: Colors.grey)),),
        body: widget
    );
  }
}
