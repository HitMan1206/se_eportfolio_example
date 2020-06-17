import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se_eportfolio_example/api/api.dart';
import 'package:se_eportfolio_example/api/objects/YearFact.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';
import 'package:se_eportfolio_example/components/BorderContainer.dart';
import 'package:se_eportfolio_example/components/CustomSnapshotError.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';
import 'package:se_eportfolio_example/screens/screen.dart';

class YearFactScreen extends StatefulWidget implements Screen {

  YearFactScreen();

  @override
  getScreenName() {
    return "yearfact_screen";
  }

  @override
  YearFactState createState() => YearFactState();
}

class YearFactState extends State<YearFactScreen> {

  Future<YearFact> yearfactdata;
  int year;
  int maxYear = 2020;

  YearFactState() {
    year = Random().nextInt(maxYear);
    yearfactdata = API.getYearFact(year);
  }

  @override
  Widget build(BuildContext ctx) {
    return Container(
        alignment: Alignment.center,
        child: FutureBuilder<YearFact>(
          future: yearfactdata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10,),
                  CustomText("Year: $year", fontSize: 30,),
                  Padding(padding: EdgeInsets.all(10),
                    child: BorderContainer(snapshot.data.text),),
                  CustomButton("New Fact", () {
                    setState(() {
                      year = Random().nextInt(maxYear);
                      yearfactdata = API.getYearFact(year);
                    });
                  })
                ],
              );
            } else if (snapshot.hasError) {
              return CustomSnapshotError("${snapshot.error}");
            }
            return Center(child: CircularProgressIndicator());
          },
        )
    );
  }
}