import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150.0,
            width: 150.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.deepPurple,
              valueColor:
                  new AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
              strokeWidth: 8.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hello !!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    ),
    Text(
      'Journal',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userAstronaut,
                size: 24,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bookOpen,
                size: 24,
              ),
              label: ' ',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
