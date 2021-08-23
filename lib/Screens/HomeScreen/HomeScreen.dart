import 'package:flutter/material.dart';
import 'package:udemyclone/Tabs/Accounts.dart';
import 'package:udemyclone/Tabs/Featured.dart';
import 'package:udemyclone/Tabs/Mycourses.dart';
import 'package:udemyclone/Tabs/Whislist.dart';
import 'package:udemyclone/Tabs/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController();
  int currentIndex = 0;

  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    _controller.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: _controller,
        children: [Featured(), Search(), MyCourses(), WhisList(), Accounts()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(color: Colors.redAccent),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.stars), title: Text('Featured')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_video), title: Text('My courses')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Whislist')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('Account'))
        ],
      ),
    );
  }
}
