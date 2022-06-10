
import 'package:flutter/material.dart';
//UIS
import 'dart:ui';
//Commons Widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/headers_text.dart';
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
                child: headerText('DELIVERED FAST FOOD TO YOUR DOOR', Colors.white, 45.0, FontWeight.bold),
              ),

            
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: headerText('Set exact location to find the right restaurants near you.', Colors.white, 17, FontWeight.bold),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Theme.of(context).accentColor,
                    child: Text('Log in',
                        style: TextStyle(color: Colors.white, fontSize: 15.0))),
              ),
              Container(
                  width: 350.0,
                  height: 45.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Theme.of(context).buttonColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/facebook.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Connect with Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.0)),
                          )
                        ],
                      )))
            ],
          )
        ],
      ),
    );
  }
}
