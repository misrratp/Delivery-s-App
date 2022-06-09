import 'package:flutter/material.dart';

//pages
import 'package:deliver_app_yt/src/tabs/tabs_page.dart';
import 'package:deliver_app_yt/src/pages/sign_up_page.dart';
import 'package:deliver_app_yt/src/pages/forgot_password.dart';
import 'package:deliver_app_yt/src/pages/login_page.dart';
import 'package:deliver_app_yt/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage()
};
