import 'package:flutter/material.dart';
class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(
           title:Text("注册第二步"),
         ),
       ),
    );
  }
}