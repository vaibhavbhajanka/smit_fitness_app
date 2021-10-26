import 'package:flutter/material.dart';
import 'package:smit_fitness_app/Screens/Media/pictures_screen.dart';
import 'package:get/get.dart';

class MediaScreen extends StatefulWidget {
  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ReusableCard(
              text: 'LIVE',
              icon: Icons.live_tv,
              onTap: (){

              },
            ),
            ReusableCard(
                text:'RECORDED',
                icon:Icons.photo_camera_front,
            onTap: (){

            },),
            ReusableCard(text:'PICTURES', icon:Icons.photo_library_sharp,
            onTap: (){
              Get.to(PicturesScreen());
            },
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;
  ReusableCard({this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Card(
            color: Colors.deepOrange,
            child: ListTile(
              leading: Icon(
                icon,
                size: 30,
              ),
              title: Text(
                text,
                style: TextStyle(fontSize: 20
                    // fontWeight: FontWeight.w600
                    ),
              ),
              onTap: onTap,
            )),
      ),
    );
  }
}
