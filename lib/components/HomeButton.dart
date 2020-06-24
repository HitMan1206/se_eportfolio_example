import 'package:flutter/widgets.dart';
import 'package:se_eportfolio_example/components/CustomButton.dart';

class HomeButton extends CustomButton {
  HomeButton(BuildContext context, {String keyName})
      : super("Home", () {
          Navigator.pushNamed(context, "home");
        }, keyName: keyName);
}
