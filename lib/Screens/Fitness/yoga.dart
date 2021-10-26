import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class YogaScreen extends StatefulWidget {
  @override
  _YogaScreenState createState() => _YogaScreenState();
}

class _YogaScreenState extends State<YogaScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "What's\nYour Goal?",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image(
                image: AssetImage(
                  'images/yogagoalpage.png',
                ),
              ),
            ),
            ReusableTile(
              icon: Icons.offline_bolt_outlined,
              title: 'Exercise',
              subtitle: 'Burn calories,burn fat.',
            ),
            ReusableTile(
              icon: Icons.flag_outlined,
              title: 'Get Fit',
              subtitle: 'Finding balance.',
            ),
            ReusableTile(
              icon: Icons.double_arrow,
              title: 'Get Strong',
              subtitle: 'Gain muscle, gain strength.',
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  ReusableTile({this.icon,this.title,this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Ink(
          decoration: BoxDecoration(
            color: Color(0xfff3f3f3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTileTheme(
            selectedColor: Colors.black,
            child: ListTile(
              // selected: true,
              onTap: (){

              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Row(
                children: [
                  Icon(icon,
                    size: 25,),
                  SizedBox(width: 5,),
                  Text(title,
                    style: TextStyle(
                      fontSize: 20,
                    ),)
                ],
              ),
              subtitle: Text(subtitle,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),),
            ),
          ),
        ),
      ),
    );
  }
}
