import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smit_fitness_app/Screens/Fitness/classes.dart';
import 'package:smit_fitness_app/Screens/Fitness/diet.dart';
import 'package:smit_fitness_app/Screens/Fitness/fitness_second_screen.dart';
import 'package:smit_fitness_app/Screens/Fitness/yoga.dart';

class FitnessScreen extends StatefulWidget {
  @override
  _FitnessScreenState createState() => _FitnessScreenState();
}

class _FitnessScreenState extends State<FitnessScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ReusableCard(
              text: 'FITNESS',
              onTap: () {
                Get.to(()=>FitnessSecondScreen());
              },
              img: 'fitness.jpg',
            ),
          ),
          Expanded(
            child: ReusableCard(
              text: 'DIET AND NUTRITION',
              onTap: () {
                Get.to(()=>DietScreen());
              },
              img: 'diet&nutrition.jpg',
            ),
          ),
          Expanded(
            child: ReusableCard(
              text: 'YOGA AND MEDITATION',
              onTap: () {
                Get.to(()=>YogaScreen());
              },
              img: 'yoga&meditation.jpg',
            ),
          ),
          Expanded(
            child: ReusableCard(
              text: 'CLASSES',
              onTap: () {
                Get.to(()=>ClassesScreen());
              },
              img: 'classes.jpg',
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final String text;
  final String img;
  final Function onTap;
  ReusableCard({this.text, this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Stack(
        children: [
          GestureDetector(
            child: Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/$img'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.30),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            onTap: onTap,
          ),
          Positioned(
            right: 20,
            bottom: 40,
            left:20,
            top: 40,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
              ),
            ),
          ),
        ],
      ),
    );
  }
}
