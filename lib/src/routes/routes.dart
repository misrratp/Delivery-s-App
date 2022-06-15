import 'package:flutter/material.dart';
//Pages
import 'package:deliver_app_yt/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:deliver_app_yt/src/features/presentation/forgotPassword_page/View/forgot_password.dart';
import 'package:deliver_app_yt/src/features/presentation/login_page/View/login_page.dart';
import 'package:deliver_app_yt/src/features/presentation/search_page/searchView.dart';
import 'package:deliver_app_yt/src/features/presentation/singUp_page/View/sign_up_page.dart';
import 'package:deliver_app_yt/src/features/presentation/tabs/tabs_page.dart';
import 'package:deliver_app_yt/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:deliver_app_yt/src/features/presentation/collections_page/View/collections_page.dart';
import 'package:deliver_app_yt/src/features/presentation/collection_detail_page/View/collection_detail_page.dart';
import 'package:deliver_app_yt/src/features/presentation/place_detail_page/View/place_detail_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
  'collections': (BuildContext context) => CollectionsPage(),
  'collections-detail': (BuildContext context) => CollectionDetailPage(),
  'place-detail': (BuildContext context) => PlaceDetailPage()
};
