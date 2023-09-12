import 'package:flutter/material.dart';
import 'package:new_applicaton/Pages/Cart_Page.dart';
import 'package:new_applicaton/Pages/Login_Page.dart';
import 'package:new_applicaton/utils/routes.dart';
import 'package:new_applicaton/widgets/themes.dart';
import 'Pages/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var SplashScreen;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoute:(context) => CartPage(),
        MyRoutes.SplashScreen:(context)=>SplashScreen(),
      },

    );
  }
}






