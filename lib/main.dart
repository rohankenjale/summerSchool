import 'package:flutter/material.dart';
import 'package:practice1/screens/homePage.dart';
import 'package:practice1/screens/login.dart';
import 'package:practice1/screens/signUp.dart';
import 'themes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title:'Flutter Demo',
          theme: Themes.theme,
          home:Home()
    );
  }

}
