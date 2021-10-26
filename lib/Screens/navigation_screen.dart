import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smit_fitness_app/Screens/Navigation/home_screen.dart';
import 'package:smit_fitness_app/Screens/Navigation/fitness_screen.dart';
import 'package:smit_fitness_app/Screens/Navigation/tracker_screen.dart';
import 'package:smit_fitness_app/Screens/Navigation/media_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33333D),
      body: Row(
        children: [
          Theme(
            data: ThemeData(
              splashColor: null,
              hoverColor: Colors.black,
            ),
            child: NavigationRail(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image(
                  image: AssetImage('images/smit_logo5.png'),
                  width: 15,
                ),
              ),
              backgroundColor: Color(0xff33333D),
              groupAlignment: -1.0,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                  pageController.animateToPage(index,duration: Duration(milliseconds: 250),curve: Curves.easeInOut);
                });
              },
              selectedLabelTextStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Eczar',
                fontSize: 12.0,
                fontWeight: FontWeight.w900,
              ),
              unselectedIconTheme: IconThemeData(
                color: Color(0xff88888E),
                size: 25.0,
              ),
              selectedIconTheme: IconThemeData(
                color: Colors.white,
                size: 25.0,
              ),
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.home),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('HOME'),
                  ),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.fitness_center),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('FITNESS'),
                  ),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.watch_later_rounded),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('TRACKER'),
                  ),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.perm_media_rounded),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('MEDIA'),
                  ),
                ),
              ],
            ),
          ),
          // VerticalDivider(thickness: 1,width: 1),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xff33333D),
                    child: Row(
                      children: [
                        Hero(
                          tag: 'tag1',
                          child: Text(
                            'SMIT',
                            style: TextStyle(
                              fontFamily: 'Anton',
                              fontSize: 45.0,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Hero(
                          tag: 'tag2',
                          child: Text(
                            'FITNESS APP',
                            style: TextStyle(
                              fontFamily: 'Anton',
                              fontSize: 45.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                      ),
                    ),
                    child: PageView(
                      controller: pageController,
                      children: [
                        HomeScreen(),
                        FitnessScreen(),
                        TrackerScreen(),
                        MediaScreen()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
