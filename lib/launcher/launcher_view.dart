// ignore_for_file: unnecessary_new, unused_import

import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key}) : super(key: key);

  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  Widget build(BuildContext context) {
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
