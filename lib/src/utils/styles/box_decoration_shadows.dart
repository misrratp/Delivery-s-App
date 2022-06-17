import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:flutter/material.dart';

const borderRadius = BorderRadius.all(Radius.circular(20));
const boxShadow = [
  BoxShadow(
      color: Color.fromRGBO(210, 211, 215, 1.0),
      offset: Offset(0, 5),
      blurRadius: 10.0)
];

Decoration CreateBoxDecorationWShadows(
    {BorderRadiusGeometry borderRadius = borderRadius,
    Color containerColor = Colors.white,
    List<BoxShadow> boxShadow = boxShadow}) {
  return BoxDecoration(
      borderRadius: borderRadius, color: containerColor, boxShadow: boxShadow);
}
