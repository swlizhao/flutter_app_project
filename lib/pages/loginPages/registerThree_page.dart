import 'package:flutter/material.dart';

class RegisterThreePage extends StatefulWidget {
  RegisterThreePage({Key key}) : super(key: key);

  @override
  _RegisterThreePageState createState() => _RegisterThreePageState();
}

class _RegisterThreePageState extends State<RegisterThreePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(
           title:Text("注册第三步"),
         ),
       ),
    );
  }
}