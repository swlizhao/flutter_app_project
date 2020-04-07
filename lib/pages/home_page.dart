import 'package:flutter/material.dart';

class HomePageViewController extends StatefulWidget {
  HomePageViewController({Key key}) : super(key: key);

  @override
  _HomePageViewControllerState createState() => _HomePageViewControllerState();
}

class _HomePageViewControllerState extends State<HomePageViewController> {
  @override
  Widget build(BuildContext context) {
    return  Container(
       child: Scaffold(
         appBar:AppBar(
           title: Text("首页"),
         ) 
       ),
    );
  }
}