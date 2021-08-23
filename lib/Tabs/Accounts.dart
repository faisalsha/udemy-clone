import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:udemyclone/Screens/LandingScreen/landingScreen.dart';
import 'package:udemyclone/Services/authentication.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  Authentication _authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Accounts'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(EvaIcons.shoppingCart))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Faisal sha',
                      style: TextStyle(color: Colors.white, fontSize: 24.00),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            EvaIcons.google,
                            color: Colors.white,
                          ),
                          Text(
                            'Faisalsha54@gmail.com',
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 20.00),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: MaterialButton(
                        onPressed: () {},
                        textColor: Colors.blue,
                        child: Text('Become An Instructor'),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Video Preference',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Download Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Video Playback Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Account Settings',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Account Security',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Email Notification',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Learning Remainders',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'About',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'About Udemy',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Share the udemy App',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Diagonistics',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Status',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Center(
                child: MaterialButton(
                    textColor: Colors.lightBlue,
                    child: Text('Sign out'),
                    onPressed: () async {
                      await _authentication.googleSignOut().whenComplete(() {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return LandingScreen();
                        }));
                      });
                    }),
              ),
              SizedBox(
                height: 3,
              ),
              Center(
                child: Text(
                  'Udemy Clone v1.2.8',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
