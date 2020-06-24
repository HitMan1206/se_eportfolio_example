import 'package:flutter/material.dart';
import 'package:se_eportfolio_example/components/CustomText.dart';

class CustomButton extends OutlineButton{

  CustomButton(String text, Function onpressed, {String keyName = ""}): super(
      textColor: Colors.white,
      borderSide: BorderSide(color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: CustomText(text, keyName: (keyName + "Text"), fontSize: 20),
      onPressed: onpressed,
    key: Key(keyName)
  );

}