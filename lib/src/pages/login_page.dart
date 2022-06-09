import 'package:flutter/material.dart';
//colors
import 'package:deliver_app_yt/src/colors/colors.dart';
//Wigets
import 'package:deliver_app_yt/src/widgets/back_button.dart';
//UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                  width: double.infinity,
                  //
                  //Cambiar el numero de height si les aparece el mensaje de "BOTTOM OVERFLOWED BY ## PIXELS" en la pagina de login
                  //
                  height: 320.0,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.mexicodesconocido.com.mx/wp-content/uploads/2018/04/comida-mexicana-1.jpg')),
              Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: backButton(context, Colors.white))
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text('Welcome Back',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0)),
                      Text('Login to you account',
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0)),
                      _emailInput(),
                      _passwordInput(),
                      _buttonLogin(context),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'forgot-password');
                          },
                          child: Text('Forgot you password?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                    color: gris,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'sign-up');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text('Sign up',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'tabs');
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text('Log in',
            style: TextStyle(color: Colors.white, fontSize: 17.0))),
  );
}
