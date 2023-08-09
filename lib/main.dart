import 'package:flutter/material.dart';
import 'package:new_applicaton/Pages/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_applicaton/utils/routes.dart';
import 'package:new_applicaton/widgets/themes.dart';
import 'Pages/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}






