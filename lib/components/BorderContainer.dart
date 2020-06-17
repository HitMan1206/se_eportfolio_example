import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';

class BorderContainer extends Container {
  BorderContainer(String text)
      : super(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: Colors.grey, style: BorderStyle.solid),
          ),
          child: CustomText(
            text,
            fontSize: 25,
            softWrap: true,
          ),
        );
}
