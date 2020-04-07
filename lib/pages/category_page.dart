import 'package:flutter/material.dart';

class CategoryControllerPage extends StatefulWidget {
  CategoryControllerPage({Key key}) : super(key: key);

  @override
  _CategoryControllerPageState createState() => _CategoryControllerPageState();
}

class _CategoryControllerPageState extends State<CategoryControllerPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title:Text("分类"),
      ),
    );
  }
}