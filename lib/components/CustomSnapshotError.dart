import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSnapshotError extends Container{
  CustomSnapshotError(String errorMessage):super(
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Text(errorMessage,
            style: TextStyle(
                color: Colors.white))
      ],
    ),
  );
}