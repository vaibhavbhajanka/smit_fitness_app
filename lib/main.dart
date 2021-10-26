import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smit_fitness_app/Screens/launch_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMIT FITNESS APP',
      debugShowCheckedModeBanner: false,
      home: LaunchScreen(),
      navigatorKey: Get.key,
      theme: ThemeData(
        textTheme: TextTheme(
          subtitle1: TextStyle(fontFamily: 'Eczar'),
        ),
        // unselectedWidgetColor: Colors.white,
        accentColor: Colors.black,
        // primaryColor: Colors.deepOrange,
      ),
    );
  }
}
