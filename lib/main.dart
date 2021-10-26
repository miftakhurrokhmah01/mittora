import 'package:flutter/material.dart';
import 'launcher/launcher_view.dart';
import 'package:mittora/constant.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mittora',
      theme: new ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: MittoraPalette.green,
      ),
      home: new LauncherPage(),
    );
  }
}
