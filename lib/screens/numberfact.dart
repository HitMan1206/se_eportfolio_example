import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se_eportfolio_example/api/api.dart';
import 'package:se_eportfolio_example/api/objects/NumberFact.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';
import 'package:se_eportfolio_example/components/BorderContainer.dart';
import 'package:se_eportfolio_example/components/CustomSnapshotError.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';
import 'package:se_eportfolio_example/components/HomeButton.dart';
import 'package:se_eportfolio_example/screens/screen.dart';

class NumberFactScreen extends StatefulWidget implements Screen {

  NumberFactScreen();

  @override
  getScreenName() {
    return "mathfact_screen";
  }

  @override
  NumberFactState createState() => NumberFactState();
}

class NumberFactState extends State<NumberFactScreen> {

  Future<NumberFact> numberfactdata;
  int number;
  int maxNumber = 10000;

  NumberFactState() {
    number = Random().nextInt(maxNumber);
    numberfactdata = API.getNumberFact(number);
  }

  @override
  Widget build(BuildContext ctx) {
    return Container(
        alignment: Alignment.center,
        child: FutureBuilder<NumberFact>(
          future: numberfactdata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10,),
                  CustomText("Number: $number", keyName: "NumberFactDescription", fontSize: 30,),
                  Padding(padding: EdgeInsets.all(10),
                    child: BorderContainer(snapshot.data.text, keyName: "NumberFactData",),),
                  CustomButton("New Fact", () {
                    setState(() {
                      number = Random().nextInt(maxNumber);
                      numberfactdata = API.getNumberFact(number);
                    });
                  }, keyName: "NewNumberFactButton",),
                  HomeButton(ctx, keyName: "NumberFactHomeButton")
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