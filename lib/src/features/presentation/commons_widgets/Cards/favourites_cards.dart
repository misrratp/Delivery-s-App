import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:deliver_app_yt/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';
import 'package:deliver_app_yt/src/colors/colors.dart';

Widget favouritesCard(
    {required BuildContext context,
    double marginTop = .0,
    double marginRight = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 0.0,
    required ImageProvider<Object> image,
    required String title,
    required String subtitle,
    required String review,
    required String ratings,
    String buttonText = '',
    required bool hasActionButton,
    bool isFavourite = true}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
        bottom: marginBottom,
        left: marginLeft),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: CreateBoxDecorationWShadows(),
    child: Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child:
            Image(width: 90.0, height: 90.0, fit: BoxFit.cover, image: image),
      ),
      Container(
        padding: EdgeInsets.only(left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText(
                        texto: title,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                SizedBox(
                  width: 25.0,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark,
                      size: 35.0,
                      color: isFavourite ? rosa : Colors.grey[300],
                    ))
              ],
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: headerText(
                    texto: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0)),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: amarillo,
                  size: 16,
                ),
                headerText(
                    texto: review, fontWeight: FontWeight.w500, fontSize: 13.0),
                headerText(
                    texto: ratings,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
                /*  */
              ],
            )
          ],
        ),
      )
    ]),
  );
}
