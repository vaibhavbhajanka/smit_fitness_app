import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:smit_fitness_app/Screens/Tracking/health_screen.dart';
import 'package:smit_fitness_app/Screens/Tracking/reports_screen.dart';
import 'package:smit_fitness_app/Screens/Tracking/settings_screen.dart';
import 'dart:async';

import 'package:smit_fitness_app/Screens/Tracking/today_screen.dart';

class TrackerScreen extends StatefulWidget {
  @override
  _TrackerScreenState createState() => _TrackerScreenState();
}

class _TrackerScreenState extends State<TrackerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange, // background
            // onPrimary: Colors.white, // foreground
          ),
          child: Text('OPEN TRACKER'),
          onPressed: () {
            Get.to(()=>Tracker());
          },
        ),
      ),
    );
  }
}

// class Tracker extends StatefulWidget {
//   @override
//   _TrackerState createState() => _TrackerState();
// }
//
// class _TrackerState extends State<Tracker> {
//   String result = '';
//   Map<DataType, List<FitData>> results = Map();
//   bool permissions;
//
//   RangeValues _dateRange = RangeValues(1, 8);
//   List<DateTime> _dates = List<DateTime>();
//   double _limitRange = 0;
//
//   DateTime get _dateFrom => _dates[_dateRange.start.round()];
//   DateTime get _dateTo => _dates[_dateRange.end.round()];
//   int get _limit => _limitRange == 0.0 ? null : _limitRange.round();
//
//   @override
//   void initState() {
//     super.initState();
//
//     final now = DateTime.now();
//     _dates.add(null);
//     for (int i = 7; i >= 0; i--) {
//       _dates.add(DateTime(
//         now.year,
//         now.month,
//         now.day,
//       ).subtract(Duration(days: i)));
//     }
//     _dates.add(null);
//
//     hasPermissions();
//   }
//
//   Future<void> read() async {
//     results.clear();
//
//     try {
//       permissions = await FitKit.requestPermissions(DataType.values);
//       if (!permissions) {
//         result = 'requestPermissions: failed';
//       } else {
//         for (DataType type in DataType.values) {
//           try {
//             results[type] = await FitKit.read(
//               type,
//               dateFrom: _dateFrom,
//               dateTo: _dateTo,
//               limit: _limit,
//             );
//           } on UnsupportedException catch (e) {
//             results[e.dataType] = [];
//           }
//         }
//
//         result = 'readAll: success';
//       }
//     } catch (e) {
//       result = 'readAll: $e';
//     }
//
//     setState(() {});
//   }
//
//   Future<void> revokePermissions() async {
//     results.clear();
//
//     try {
//       await FitKit.revokePermissions();
//       permissions = await FitKit.hasPermissions(DataType.values);
//       result = 'revokePermissions: success';
//     } catch (e) {
//       result = 'revokePermissions: $e';
//     }
//
//     setState(() {});
//   }
//
//   Future<void> hasPermissions() async {
//     try {
//       permissions = await FitKit.hasPermissions(DataType.values);
//     } catch (e) {
//       result = 'hasPermissions: $e';
//     }
//
//     if (!mounted) return;
//
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final items =
//     results.entries.expand((entry) => [entry.key, ...entry.value]).toList();
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('FitKit Example'),
//         ),
//         body: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(padding: EdgeInsets.symmetric(vertical: 8)),
//               Text(
//                   'Date Range: ${_dateToString(_dateFrom)} - ${_dateToString(_dateTo)}'),
//               Text('Limit: $_limit'),
//               Text('Permissions: $permissions'),
//               Text('Result: $result'),
//               _buildDateSlider(context),
//               _buildLimitSlider(context),
//               _buildButtons(context),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     final item = items[index];
//                     if (item is DataType) {
//                       return Padding(
//                         padding: EdgeInsets.symmetric(vertical: 8),
//                         child: Text(
//                           '$item - ${results[item].length}',
//                           style: Theme.of(context).textTheme.title,
//                         ),
//                       );
//                     } else if (item is FitData) {
//                       return Padding(
//                         padding: EdgeInsets.symmetric(
//                           vertical: 4,
//                           horizontal: 8,
//                         ),
//                         child: Text(
//                           '$item',
//                           style: Theme.of(context).textTheme.caption,
//                         ),
//                       );
//                     }
//
//                     return Container();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   String _dateToString(DateTime dateTime) {
//     if (dateTime == null) {
//       return 'null';
//     }
//
//     return '${dateTime.day}.${dateTime.month}.${dateTime.year}';
//   }
//
//   Widget _buildDateSlider(BuildContext context) {
//     return Row(
//       children: [
//         Text('Date Range'),
//         Expanded(
//           child: RangeSlider(
//             values: _dateRange,
//             min: 0,
//             max: 9,
//             divisions: 10,
//             onChanged: (values) => setState(() => _dateRange = values),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildLimitSlider(BuildContext context) {
//     return Row(
//       children: [
//         Text('Limit'),
//         Expanded(
//           child: Slider(
//             value: _limitRange,
//             min: 0,
//             max: 4,
//             divisions: 4,
//             onChanged: (newValue) => setState(() => _limitRange = newValue),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildButtons(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: FlatButton(
//             color: Theme.of(context).accentColor,
//             textColor: Colors.white,
//             onPressed: () => read(),
//             child: Text('Read'),
//           ),
//         ),
//         Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
//         Expanded(
//           child: FlatButton(
//             color: Theme.of(context).accentColor,
//             textColor: Colors.white,
//             onPressed: () => revokePermissions(),
//             child: Text('Revoke permissions'),
//           ),
//         ),
//       ],
//     );
//   }
// }

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  int _selectedIndex = 0;

  String titleText() {
    String title;
    if (_selectedIndex == 0) {
      title = "TODAY";
    } else if (_selectedIndex == 1) {
      title = "REPORTS";
    } else if (_selectedIndex == 2) {
      title = "HEALTH";
    } else if (_selectedIndex == 3) {
      title = "SETTINGS";
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff33333D),
        title: Text(titleText(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xff88888E),
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Color(0xff33333D),
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Reports',
          ),          BottomNavigationBarItem(
            icon: Icon(Icons.healing),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: IndexedStack(
        children: [
          TodayScreen(),
          ReportsScreen(),
          HealthScreen(),
          SettingsScreen(),
        ],
        index: _selectedIndex,
      ),
    );
  }
}
