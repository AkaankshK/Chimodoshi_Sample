
import 'package:chimodoshisample/ContactUs.dart';
import 'package:flutter/material.dart';
import 'authentication.dart';
import 'home.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {


  int _selectedIndex = 0;

   final List<Widget> _widgetOptions = <Widget>[
        homePage(),
        ContactUs()


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chimodoshi"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          FlatButton(
            child: Text("Signout"),
            onPressed: () {
              AuthService().signOut();
            },
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Colors.blueGrey,),
            icon: Icon(Icons.home,color: Colors.white,),
            title: Text('Home',style: TextStyle(
              color: Colors.white
            ),),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.phone,color: Colors.blueGrey,),
            icon: Icon(Icons.phone,color: Colors.white,),
            title: Text('Contact Us', style: TextStyle(color: Colors.white),),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget showHomePage() {

  }
}



