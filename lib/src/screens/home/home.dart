import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

//this widget is also gonna be a wrapper for the pages when logged in
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Start title at starting page
  String _appBarTitle = 'Home';
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    //This is where you change the pages
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _setTitle(String title) {
    setState(() {
      _appBarTitle = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            _appBarTitle,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Arial',
                letterSpacing: 3,
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 70),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          children: [
            ListTile(
              title: const Text('Workouts', style: TextStyle(fontSize: 20)),
              selected: _selectedIndex == 0,
              onTap: () {
                //update title
                _setTitle('Workouts');
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:
                  const Text('Start Workouts', style: TextStyle(fontSize: 20)),
              selected: _selectedIndex == 1,
              onTap: () {
                //update title
                _setTitle('Start Workouts');
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'History',
                style: TextStyle(fontSize: 20),
              ),
              selected: _selectedIndex == 2,
              onTap: () {
                //update title
                _setTitle('History');
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              //Async because of Firebase communication takes time
              onPressed: () {
                print("Log put");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}
