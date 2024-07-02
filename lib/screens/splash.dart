import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_ui_clone/screens/homescreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Whatsapp_Splash(),
  ));
}

class Whatsapp_Splash extends StatefulWidget {
  @override
  State<Whatsapp_Splash> createState() => _Whatsapp_SplashState();
}

class _Whatsapp_SplashState extends State<Whatsapp_Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Whatsapp_Home()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.whatsapp,
              color: Colors.teal,
              size: 60,
            ),
            SizedBox(
              height: 300,
            ),
            Text(
              "from",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.meta,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Meta",
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
