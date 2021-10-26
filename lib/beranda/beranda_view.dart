import 'package:flutter/material.dart';
import 'package:mittora/beranda/beranda_appbar.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
      appBar: new MittoraAppBar(),
      body: new Container(),
    ));
  }
}
