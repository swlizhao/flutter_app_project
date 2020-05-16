import 'package:flutter/material.dart';
class AddAddressPage extends StatefulWidget {
  AddAddressPage({Key key}) : super(key: key);

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(title:Text("添加地址")),
       ),
    );
  }
}