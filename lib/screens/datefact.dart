import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se_eportfolio_example/api/api.dart';
import 'package:se_eportfolio_example/api/objects/DateFact.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';
import 'package:se_eportfolio_example/components/BorderContainer.dart';
import 'package:se_eportfolio_example/components/CustomSnapshotError.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';
import 'package:se_eportfolio_example/components/HomeButton.dart';
import 'package:se_eportfolio_example/screens/screen.dart';

class DateFactScreen extends StatefulWidget implements Screen {

  DateFactScreen();

  @override
  getScreenName() {
    return "datefact_screen";
  }

  @override
  DateFactState createState() => DateFactState();
}

  class DateFactState extends State<DateFactScreen>{

  Future<DateFact> datefactdata;
  int month;
  int day;

  DateFactState(){
    month = getRandomMonth();
    day = getRandomDay(month);
    datefactdata = API.getDateFact(month, day);
  }

  @override
  Widget build(BuildContext ctx){
    return Container(
        alignment: Alignment.center,
      child: FutureBuilder<DateFact>(
        future: datefactdata,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  SizedBox(height: 10,),
                  CustomText("Date: $day.$month.${snapshot.data.year}", keyName: "DateFactDescription", fontSize: 30,),
                Padding(padding: EdgeInsets.all(10), child: BorderContainer(snapshot.data.text, keyName: "DateFactData",),),
                CustomButton("New Fact", (){
                  setState(() {
                    month = getRandomMonth();
                    day = getRandomDay(month);
                    datefactdata = API.getDateFact(month, day);
                  });
                }, keyName: "NewDateFactButton",),
                HomeButton(ctx, keyName: "DateFactHomeButton")
              ],
            );
          }else if (snapshot.hasError) {
            return CustomSnapshotError("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },
      )
    );
  }

  int getRandomMonth(){
    return Random().nextInt(11) + 1;
  }

  int getRandomDay(int month){
    if(month == 2){
      return Random().nextInt(27) + 1;
    }else if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
      return Random().nextInt(30) + 1;
    }else if(month == 4 || month == 6 || month == 9 || month == 11){
      return Random().nextInt(29) + 1;
    }else{
      return 1;
    }
  }
}