// ignore_for_file: unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mittora/constant.dart';
import 'package:mittora/users/landingpage.dart' as users;

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key}) : super(key: key);
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new users.LandingPage();
      }));
    });
  }

  @override
  Widget build(context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "assets/img_mittora_logo.png",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }
}
