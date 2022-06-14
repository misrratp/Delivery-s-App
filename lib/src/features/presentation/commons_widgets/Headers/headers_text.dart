import 'package:flutter/material.dart';     
     
     
      Widget headerText({

        String texto = "", 
        Color color = Colors.black, 
        FontWeight fontWeight =FontWeight.bold,
        
         double? fontSize,
          TextAlign textAlign = TextAlign.justify

        }){
        return Text(texto, 
                    textAlign: textAlign,
                    style: TextStyle(
                        color: color,
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                        )
              );
}