import 'package:flutter/material.dart';     
     
     
      Widget headerText(String text, Color color, double fontsize, FontWeight fontWeight){
        return Text(text,
                    style: TextStyle(
                        color: color,
                        fontWeight: fontWeight,
                        fontSize: fontsize)
              );
}