import 'package:flutter/material.dart';
import 'package:instagram_0/pages/bottomnavigatorbarWidgets/home_pages.dart';
import 'package:instagram_0/pages/bottomnavigatorbarWidgets/movie_pages.dart';
import 'package:instagram_0/pages/bottomnavigatorbarWidgets/profil_pages.dart';
import 'package:instagram_0/pages/bottomnavigatorbarWidgets/stori_pages.dart';

import '../bottomnavigatorbarWidgets/search_page.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _index = 0;
  List<Widget> pageWidget = <Widget>[
    Instagram(),
    Search(),
    StoriPages(),
    MOviPages(),
    ProfilPages()
  ];

  void onTap(int value) {
    setState(() {
      _index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageWidget.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black87,),
            label: "",
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black87,),
            label: "",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined,color: Colors.black87,),
            label: "",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter,color: Colors.black87,),
            label: "",
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black87,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/images/alp.jpeg"),
              ),
            ),
            label: "",
            backgroundColor: Colors.white
          ),
        ],
        currentIndex: _index,
        onTap: onTap,
      ),
    );
  }
}
