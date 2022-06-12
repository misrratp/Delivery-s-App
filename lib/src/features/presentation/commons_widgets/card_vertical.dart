import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';


Widget cardVertical({

  required BuildContext context, 
  double? width, double? height,  
  required ImageProvider<Object> image,
  required String title,
  required String subtitle

   }) {
  return Container(
    margin: EdgeInsets.all(7.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: width,
              height: 120.0,
              fit: BoxFit.cover,
              image: image ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
                child: headerText(
                texto: title,
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
            )),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: headerText(
                  texto: subtitle,
                  color: gris,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0),
            )
          ],
        )
      ],
    ),
  );
}
