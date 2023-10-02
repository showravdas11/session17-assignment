import 'package:flutter/material.dart';
import 'package:session17_assignment/CustomDrawer.dart';
import 'package:session17_assignment/pages/one.dart';
import 'package:session17_assignment/pages/three.dart';
import 'package:session17_assignment/pages/two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(), 
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({super.key,});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _myIndex = 0;

    final pages = [
      One(),
      Two(),
      Three(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.indigo,
      ),
      drawer: CustomDrawer(),
      body: pages[_myIndex],

      bottomNavigationBar: BottomNavigationBar(

        onTap: (index) {
          setState(() {
            _myIndex = index;
          });
        },

        currentIndex: _myIndex,
        type: BottomNavigationBarType.shifting,

        //selected icon
        // selectedFontSize: 20,
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(208, 32, 122, 40), size: 40),
        selectedItemColor: Color.fromARGB(208, 32, 122, 40),

        //unselected
        unselectedIconTheme: IconThemeData(
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
        ],
      ),
    );
  }
}
