import 'package:flutter/material.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';

class CustomButton extends OutlineButton{

  CustomButton(String text, Function onpressed): super(
      textColor: Colors.white,
      borderSide: BorderSide(color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: CustomText(text, fontSize: 20,),
      onPressed: onpressed
  );

}