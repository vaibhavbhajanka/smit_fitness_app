import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PicturesScreen extends StatefulWidget {
  @override
  _PicturesScreenState createState() => _PicturesScreenState();
}

class _PicturesScreenState extends State<PicturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos'),
        backgroundColor: Color(0xff33333D),
      ),
      body: Container(
        child: GridView.count(
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          crossAxisCount: 3,
          padding: EdgeInsets.all(8),
          children: [
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
            SmallImage(),
          ],
        ),
      ),
    );
  }
}

class SmallImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Get.to(LargeImage());
        },
        child: Image(
      image: AssetImage('images/pull_up.jpg'),
      fit: BoxFit.cover,
    ));
  }
}

class LargeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
          onTap: (){
            Get.back();
          },
          child: Image(
            image: AssetImage('images/pull_up.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }
}
