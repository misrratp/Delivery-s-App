import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';

Widget headerDoubleText({ required String textHeader,   required String textAction, Function()? func})  {
return Container(
  child: Row(
  children:[ 
    headerText(texto: textHeader, fontSize: 20.0 ),
    Spacer(),
     GestureDetector(
       onTap: func,
       child: headerText(
          texto: textAction,
          color: orange, 
          fontWeight: FontWeight.w500, 
          fontSize: 15.0
          ),
     )

  ],
  ),
);
}