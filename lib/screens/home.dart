import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';
import 'package:se_eportfolio_example/screens/screen.dart';

class HomeScreen extends StatelessWidget implements Screen{

  HomeScreen();

  @override
  getScreenName(){
    return "home_screen";
  }

  @override
  Widget build(BuildContext ctx){
    return Container(
      alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomText("Willkommen zur Test App", fontSize: 25),
              CustomButton("Year", () {Navigator.pushNamed(ctx, "yearfact");}),
              CustomButton("Math", () {Navigator.pushNamed(ctx, "mathfact");}),
              CustomButton("Date", () {Navigator.pushNamed(ctx, "datefact");}),
            ],
          )
    );
  }
}