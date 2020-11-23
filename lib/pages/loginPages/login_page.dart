import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("登录"),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registerFirstPage');
                },
                child: Text(
                  "注册",
                  style: TextStyle(color: Colors.white),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgotFirstPage');
                },
                child: Text(
                  "忘记密码",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: TextField(),
              ),
              Positioned(child: Text("评级")),
            ],
          ),
        ),
      ),
    );
  }
}
