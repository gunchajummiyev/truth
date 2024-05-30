import 'package:truth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:truth/homepage.dart';
import 'package:truth/start_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/": (context) => LoginPage(),
        "/homepage" : (context) => HomePage(),
        "/start_page" : (context) => StartPage(),



      },
    );
  }
}



















