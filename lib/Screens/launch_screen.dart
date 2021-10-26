import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:smit_fitness_app/Screens/navigation_screen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>Get.off(NavigationScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/smit_logo4.png'),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('images/running_man2.png'),
              ),
            ),
            Expanded(
              child: Hero(
                tag: 'tag1',
                child: Text(
                  'SMIT',
                  style: TextStyle(
                    fontFamily: 'Anton',
                    fontSize: 70.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Hero(
                tag: 'tag2',
                child: Text(
                  'FITNESS APP',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Anton',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

