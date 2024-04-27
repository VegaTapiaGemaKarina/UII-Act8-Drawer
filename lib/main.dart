import 'package:flutter/material.dart';

import 'package:vega0400/pantalla1.dart';
import 'package:vega0400/pantalla2.dart';
import 'package:vega0400/pantalla3.dart';
import 'package:vega0400/pantalla4.dart';
import 'package:vega0400/pantalla5.dart';
import 'drawer_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.pantalla1;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.pantalla1) {
      container = Pantalla1();
    } else if (currentPage == DrawerSections.pantalla2) {
      container = Pantalla2();
    } else if (currentPage == DrawerSections.pantalla3) {
      container = Pantalla3();
    } else if (currentPage == DrawerSections.pantalla4) {
      container = Pantalla4();
    } else if (currentPage == DrawerSections.pantalla5) {
      container = Pantalla5();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff57ba),
        title: Text(
          "Gema Vega 0400",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerVega(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Diseño 1", Icons.place_outlined,
              currentPage == DrawerSections.pantalla1 ? true : false),
          menuItem(2, "Diseño 2", Icons.star_border,
              currentPage == DrawerSections.pantalla2 ? true : false),
          menuItem(3, "Diseño 3", Icons.fast_forward,
              currentPage == DrawerSections.pantalla3 ? true : false),
          menuItem(4, "Diseño 4", Icons.ac_unit,
              currentPage == DrawerSections.pantalla4 ? true : false),
          menuItem(5, "Diseño 5", Icons.favorite_border,
              currentPage == DrawerSections.pantalla5 ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.pantalla1;
            } else if (id == 2) {
              currentPage = DrawerSections.pantalla2;
            } else if (id == 3) {
              currentPage = DrawerSections.pantalla3;
            } else if (id == 4) {
              currentPage = DrawerSections.pantalla4;
            } else if (id == 5) {
              currentPage = DrawerSections.pantalla5;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Color(0xffa34cf2),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff08007e),
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { pantalla1, pantalla2, pantalla3, pantalla4, pantalla5 }
