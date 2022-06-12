import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:flutter/material.dart';

Widget popularesCard({
  required BuildContext context,
  double marginTop = 0.0,
  double marginRight = 0.0,
  double marginBottom = 0.0,
  double marginLeft = 8.0,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required String ratings,
  String buttonText = '',
  required bool hasActionButton,
}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
            top: marginTop,
            right: marginRight,
            bottom: marginBottom,
            left: marginLeft), //Modificar si hay problemas de pixeles
        padding: EdgeInsets.symmetric(vertical: 1.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  width: 80.0, height: 80.0, fit: BoxFit.cover, image: image),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 10.0), //Modificar si hay problemas de pixeles
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          texto: title, color: Colors.black, fontSize: 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: amarillo,
                        size: 16.0,
                      ),
                      Text(review,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0)),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(ratings,
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25.0),
                        width: 110.0,
                        height: 18.0,
                        child: hasActionButton
                            ? RaisedButton(
                                onPressed: () {},
                                elevation: 0.5,
                                shape: StadiumBorder(),
                                color: orange,
                                child: Text(
                                  buttonText,
                                  style: TextStyle(
                                      fontSize: 11.0, color: Colors.white),
                                ),
                              )
                            : Text(''),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
