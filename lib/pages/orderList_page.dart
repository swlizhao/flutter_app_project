import 'package:flutter/material.dart';
class OrderListPage extends StatefulWidget {
  OrderListPage({Key key}) : super(key: key);

  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(
           title:Text("订单列表"),
         ),
         
       ),
    );
  }
}