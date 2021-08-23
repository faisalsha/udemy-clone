import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udemyclone/Services/authentication.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'SignUp',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: FlatButton.icon(
                  color: Colors.white,
                  onPressed: () async {
                    await authentication.googleSignIn();
                  },
                  icon: Icon(EvaIcons.google),
                  label: Text('Sign in with google')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: FlatButton.icon(
                  color: Colors.white,
                  onPressed: () {
                    print('clicked');
                  },
                  icon: Icon(EvaIcons.facebook),
                  label: Text('Sign in with facebook')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: FlatButton.icon(
                  color: Colors.white,
                  onPressed: () {
                    print('clicked');
                  },
                  icon: Icon(FontAwesomeIcons.apple),
                  label: Text('Sign in with apple')),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pic1.png'),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken))),
    ));
  }
}
