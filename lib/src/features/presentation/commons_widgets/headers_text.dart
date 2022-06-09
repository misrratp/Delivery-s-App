import 'package:flutter/material.dart';     
     
     
      Widget headerText(String text, Color color, double fontsize){
        return Text(text,
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: fontsize)
              );
}