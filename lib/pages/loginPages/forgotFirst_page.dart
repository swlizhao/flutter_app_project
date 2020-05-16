import 'package:flutter/material.dart';

class ForgotFirstPage extends StatefulWidget {
  ForgotFirstPage({Key key}) : super(key: key);

  @override
  _ForgotFirstPageState createState() => _ForgotFirstPageState();
}

class _ForgotFirstPageState extends State<ForgotFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(
           title:Text("忘记密码"),
         ),
       ),
    );
  }
}