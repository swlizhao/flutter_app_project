import 'package:flutter/material.dart';

class MeControllerPage extends StatefulWidget {
  MeControllerPage({Key key}) : super(key: key);

  @override
  _MeControllerPageState createState() => _MeControllerPageState();
}

class _MeControllerPageState extends State<MeControllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("我的"),
      ),
    );
  }
}