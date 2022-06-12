import 'package:flutter/material.dart';

//routes
import 'package:deliver_app_yt/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
    );
  }
}
