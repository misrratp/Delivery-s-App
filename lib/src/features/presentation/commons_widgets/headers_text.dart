import 'package:flutter/material.dart';     
     
     
      Widget headerText({

        String texto = "", 
        Color color = Colors.black, 
        FontWeight fontWeight =FontWeight.bold,
        
         double? fontSize,
          

        }){
        return Text(texto, 
                    style: TextStyle(
                        color: color,
                        fontWeight: fontWeight,
                        fontSize: fontSize)
              );
}