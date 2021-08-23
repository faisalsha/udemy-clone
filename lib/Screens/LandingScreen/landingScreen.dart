import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyclone/Screens/SigninOptions/signIn.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: SizedBox(
          height: 400,
          width: 400,
          child: Image.asset(
            'images/pic1.png',
            fit: BoxFit.fitHeight,
            colorBlendMode: BlendMode.darken,
            color: Colors.black54,
          ),
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              child: Text(
                'Browse',
                style: TextStyle(color: Colors.grey.shade300, fontSize: 20.0),
              ),
              onPressed: () {
                print("pressed");
              },
            ),
            MaterialButton(
              child: Text(
                'SignIn',
                style: TextStyle(color: Colors.grey.shade300, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: SignIn(), type: PageTransitionType.bottomToTop));
              },
            )
          ],
        ),
      ),
    );
  }
}
