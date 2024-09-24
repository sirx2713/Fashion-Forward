import 'package:fashion_forward/collection.dart';
import 'package:fashion_forward/collections.dart';
import 'package:fashion_forward/list.dart';
import 'package:fashion_forward/profile.dart';
import 'package:fashion_forward/search.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {

  List <Widget> widgetList = [
    Collections(),
    Search(),
    Collection(),
    ListingView(),
    Profile()
  ];

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          children:
            widgetList,
            index: myIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color(0xffC7253E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Color(0xffC7253E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery),
                label: 'Listing',
                backgroundColor: Color(0xffC7253E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: 'Collection',
                backgroundColor: Color(0xffC7253E),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color(0xffC7253E),
              ),
            ]),
      ),
    );
  }
}
