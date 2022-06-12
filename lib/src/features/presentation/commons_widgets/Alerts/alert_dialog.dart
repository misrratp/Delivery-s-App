import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
// Header Text
import 'package:flutter/material.dart';
//colors
import 'package:deliver_app_yt/src/colors/colors.dart';

// 'Done'  AssetImage('assets/lock.png')  'Your password has been reset'    "You'll shortly receive an email with a code to setup a new password"

void showAlertDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitle, String headerSubTitle, Widget doneButton) async {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: headerText(
                      texto: headerTitle, color: primaryColor, fontSize: 20.0),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(headerSubTitle,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}
