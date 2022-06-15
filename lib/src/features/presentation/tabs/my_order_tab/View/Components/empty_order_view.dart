import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:flutter/material.dart';

class EmptyOrderView extends StatelessWidget {
  EmptyOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        elevation: 1,
        leading: Text(''),
        backgroundColor: white,
        title: headerText(
            texto: 'My Order',
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w900),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                width: 216,
                height: 216,
                image: AssetImage('assets/emptyOrder.png')),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: headerText(
                  texto: 'Cart empty',
                  color: gris,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              margin: EdgeInsets.only(top: 20.0),
              child: headerText(
                  texto:
                      'Good Food is always Cooking! Go ahead, orden some yummi items from the menu',
                  textAlign: TextAlign.center,
                  color: gris,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      )),
    );
  }
}
