import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyclone/Screens/MyList/myListScreen.dart';

class WhisList extends StatefulWidget {
  @override
  _WhisListState createState() => _WhisListState();
}

class _WhisListState extends State<WhisList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Whislist'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyListScreen();
                }));
              },
              icon: Icon(EvaIcons.shoppingCart))
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Icon(
                        EvaIcons.shakeOutline,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Want to Save Something for later ?',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Your Whislist shall go here',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Browse Categories',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.browserOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Finanace and Accounting',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.browserOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Development',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.browserOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Business',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.browserOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'IT and Software',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.browserOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Photography',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyList {}
