import 'package:flutter/material.dart';

class ShoppingCartControllerPage extends StatefulWidget {
  ShoppingCartControllerPage({Key key}) : super(key: key);

  @override
  _ShoppingCartControllerPageState createState() => _ShoppingCartControllerPageState();
}

class _ShoppingCartControllerPageState extends State<ShoppingCartControllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("购物车"),
      ),
      
    );
  }
}