import 'package:flutter/material.dart';
import 'package:my_app/Screens/Home.dart';
import 'package:my_app/Screens/Search.dart';
import 'package:my_app/Screens/Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    Search(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Anime World",
      home: Scaffold(
        appBar: AppBar(
            title: Image.asset(
              "assects/image/ANIME.png",
              height: 150,
              width: 150,
              alignment: Alignment.topLeft,
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            centerTitle: true),
        body: _widgetOptions.elementAt(_selectedIndex),
        backgroundColor: Colors.red,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 14),
          unselectedLabelStyle:
              const TextStyle(color: Colors.grey, fontSize: 12),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Anime World",
//       home: Scaffold(
//         appBar: AppBar(
//             title: Image.asset(
//               "assects/image/ANIME.png",
//               height: 150,
//               width: 150,
//               alignment: Alignment.topLeft,
//             ),
//             backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//             centerTitle: true),
//         body: Home(),
//         backgroundColor: const Color.fromARGB(255, 255, 0, 0),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//           selectedItemColor: Colors.red,
//           unselectedItemColor: Colors.grey,
//           backgroundColor: Colors.black,
//         ),
//       ),
//     );
//   }
// }
