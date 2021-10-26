import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          SizedBox(height: 10.0,),
          ReusableCard('About Sports Facilities',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse efficitur turpis id imperdiet accumsan. Ut ullamcorper mattis urna, ac sollicitudin diam finibus id. Sed suscipit, turpis non pharetra ultrices, elit libero ultricies dui, eu commodo ligula sem sit amet sem. Sed semper vehicula tortor vitae viverra. Nulla in interdum magna, vitae auctor lectus. Mauris pharetra nulla a lorem rutrum, et dignissim lacus congue. Nullam porttitor lectus orci, congue ultricies leo dignissim vitae.Praesent interdum eros ut massa tristique, quis luctus ante cursus. Proin in justo sed sapien tincidunt iaculis id eget massa. Praesent tortor sem, ullamcorper in dolor vel, malesuada scelerisque tortor. Etiam sollicitudin, nibh at bibendum commodo, sem lorem faucibus orci, id facilisis elit turpis eu tellus. Vivamus vitae diam dolor. Maecenas laoreet nec nisl non sagittis. Nullam maximus eleifend tortor at viverra. Ut non laoreet sem. Nunc vitae ornare arcu, pharetra egestas massa. Vivamus fringilla mauris non porta scelerisque. Sed maximus scelerisque aliquet. Integer cursus sodales augue, et tristique risus lacinia sit amet. Pellentesque mollis sodales felis rutrum scelerisque. Maecenas sodales ac tellus et aliquet. Sed blandit eget dui a lacinia.',
          ),
          SizedBox(height: 10.0,),
          ReusableCard("Director's Message",
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse efficitur turpis id imperdiet accumsan. Ut ullamcorper mattis urna, ac sollicitudin diam finibus id. Sed suscipit, turpis non pharetra ultrices, elit libero ultricies dui, eu commodo ligula sem sit amet sem. Sed semper vehicula tortor vitae viverra. Nulla in interdum magna, vitae auctor lectus. Mauris pharetra nulla a lorem rutrum, et dignissim lacus congue. Nullam porttitor lectus orci, congue ultricies leo dignissim vitae.Praesent interdum eros ut massa tristique, quis luctus ante cursus. Proin in justo sed sapien tincidunt iaculis id eget massa. Praesent tortor sem, ullamcorper in dolor vel, malesuada scelerisque tortor. Etiam sollicitudin, nibh at bibendum commodo, sem lorem faucibus orci, id facilisis elit turpis eu tellus. Vivamus vitae diam dolor. Maecenas laoreet nec nisl non sagittis. Nullam maximus eleifend tortor at viverra. Ut non laoreet sem. Nunc vitae ornare arcu, pharetra egestas massa. Vivamus fringilla mauris non porta scelerisque. Sed maximus scelerisque aliquet. Integer cursus sodales augue, et tristique risus lacinia sit amet. Pellentesque mollis sodales felis rutrum scelerisque. Maecenas sodales ac tellus et aliquet. Sed blandit eget dui a lacinia.',
          ),
          SizedBox(height: 10.0,),
          ReusableCard('Experts',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse efficitur turpis id imperdiet accumsan. Ut ullamcorper mattis urna, ac sollicitudin diam finibus id. Sed suscipit, turpis non pharetra ultrices, elit libero ultricies dui, eu commodo ligula sem sit amet sem. Sed semper vehicula tortor vitae viverra. Nulla in interdum magna, vitae auctor lectus. Mauris pharetra nulla a lorem rutrum, et dignissim lacus congue. Nullam porttitor lectus orci, congue ultricies leo dignissim vitae.Praesent interdum eros ut massa tristique, quis luctus ante cursus. Proin in justo sed sapien tincidunt iaculis id eget massa. Praesent tortor sem, ullamcorper in dolor vel, malesuada scelerisque tortor. Etiam sollicitudin, nibh at bibendum commodo, sem lorem faucibus orci, id facilisis elit turpis eu tellus. Vivamus vitae diam dolor. Maecenas laoreet nec nisl non sagittis. Nullam maximus eleifend tortor at viverra. Ut non laoreet sem. Nunc vitae ornare arcu, pharetra egestas massa. Vivamus fringilla mauris non porta scelerisque. Sed maximus scelerisque aliquet. Integer cursus sodales augue, et tristique risus lacinia sit amet. Pellentesque mollis sodales felis rutrum scelerisque. Maecenas sodales ac tellus et aliquet. Sed blandit eget dui a lacinia.',
          ),
          SizedBox(height: 10.0,),
          ReusableCard("Students' talk",
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse efficitur turpis id imperdiet accumsan. Ut ullamcorper mattis urna, ac sollicitudin diam finibus id. Sed suscipit, turpis non pharetra ultrices, elit libero ultricies dui, eu commodo ligula sem sit amet sem. Sed semper vehicula tortor vitae viverra. Nulla in interdum magna, vitae auctor lectus. Mauris pharetra nulla a lorem rutrum, et dignissim lacus congue. Nullam porttitor lectus orci, congue ultricies leo dignissim vitae.Praesent interdum eros ut massa tristique, quis luctus ante cursus. Proin in justo sed sapien tincidunt iaculis id eget massa. Praesent tortor sem, ullamcorper in dolor vel, malesuada scelerisque tortor. Etiam sollicitudin, nibh at bibendum commodo, sem lorem faucibus orci, id facilisis elit turpis eu tellus. Vivamus vitae diam dolor. Maecenas laoreet nec nisl non sagittis. Nullam maximus eleifend tortor at viverra. Ut non laoreet sem. Nunc vitae ornare arcu, pharetra egestas massa. Vivamus fringilla mauris non porta scelerisque. Sed maximus scelerisque aliquet. Integer cursus sodales augue, et tristique risus lacinia sit amet. Pellentesque mollis sodales felis rutrum scelerisque. Maecenas sodales ac tellus et aliquet. Sed blandit eget dui a lacinia.',
          ),
        ],
      );
  }
}

class ReusableCard extends StatelessWidget {

  final String title;
  final String desc;

  ReusableCard(this.title,this.desc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        color: Colors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ExpansionTile(
          // collapsedBackgroundColor: Colors.deepOrange,
          title: Text(title,
            style: TextStyle(
              color: Colors.black
            ),
          ),
          initiallyExpanded: true,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sports1.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                child: Text(desc,textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
