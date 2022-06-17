import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:flutter/material.dart';

import 'package:deliver_app_yt/src/colors/colors.dart';

const shape = StadiumBorder();
Widget createButton(
    {BuildContext? context,
    double width = 350.0,
    double heigth = 45.0,
    double radius = 20.0,
    bool isWithIcon = false,
    ImageProvider<Object>? icon,
    required String labelButton,
    Color labelButtonColor = Colors.white,
    double labelFontsize = 15.0,
    required Color buttonColor,
    OutlinedBorder shape = shape,
    Function()? func}) {
  return Container(
    width: width,
    height: heigth,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon!, labelButton, buttonColor, shape,
            func, labelButtonColor, labelFontsize)
        : _raisedButtonNotIcon(radius, labelButton, buttonColor, shape, func,
            labelButtonColor, labelFontsize),
  );
}

// AssetImage('assets/facebook.png')   'Connect with Facebook'
Widget _raisedButtonWithIcon(
    double radius,
    ImageProvider<Object> icon,
    String labelButton,
    Color color,
    OutlinedBorder shape,
    Function()? func,
    Color labelButtonColor,
    double labelFontsize) {
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          shape: shape, primary: color, elevation: 0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: icon,
            width: 20.0,
            height: 20.0,
          ),
          Container(
              margin: EdgeInsets.only(left: 10.0),
              child: headerText(
                  texto: labelButton,
                  color: labelButtonColor,
                  fontSize: labelFontsize,
                  fontWeight: FontWeight.bold))
        ],
      ));
}

Widget _raisedButtonNotIcon(
    double radius,
    String labelButton,
    Color color,
    OutlinedBorder shape,
    Function()? func,
    Color labelButtonColor,
    double labelFontsize) {
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          shape: shape, primary: color, elevation: 0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(left: 10.0),
              child: headerText(
                  texto: labelButton,
                  color: labelButtonColor,
                  fontSize: labelFontsize,
                  fontWeight: FontWeight.bold))
        ],
      ));
}
