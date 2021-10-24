import 'package:flutter/material.dart';
import 'launcher/launcher_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mittora',
      theme: new ThemeData(),
      home: new LauncherPage(),
    );
  }
}

class MittoraPalette {}
