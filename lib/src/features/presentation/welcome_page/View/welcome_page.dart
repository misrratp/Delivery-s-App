import 'package:flutter/material.dart';
//Colors<
import 'package:deliver_app_yt/src/colors/colors.dart';
//UIS
import 'dart:ui';
//Commons Widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
//services
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://img.freepik.com/foto-gratis/vista-vertical-variedad-platos-mesa-restaurante-comida-rapida_109656-1612.jpg'))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText(
                    texto: 'DELIVERED FAST FOOD TO YOUR DOOR',
                    color: Colors.white,
                    fontSize: 45.0),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: headerText(
                    texto:
                        'Set exact location to find the right restaurants near you.',
                    color: Colors.white,
                    fontSize: 17),
              ),

              createButton(
                  labelButton: 'Log in',
                  buttonColor: orange,
                  func: () {
                    Navigator.pushNamed(context, 'login');
                  }),

              createButton(
                  labelButton: 'Connect with facebook',
                  buttonColor: fbButtonColor,
                  isWithIcon: true,
                  icon: AssetImage('assets/facebook.png'),
                  func: () => print('goToFacebook'))

              //aqui va en boton azull
            ],
          )
        ],
      ),
    );
  }
}
