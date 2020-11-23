import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  UserInfoPage({Key key}) : super(key: key);

  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  List _userInfolist = [
    {"title": "用户头像"},
    {"title": "男"},
    {"title": "叶震"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: Text("用户信息页面"),
        ),
        body: Container(
          width: double.infinity,
          // height: 500,
          color: Colors.white,
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                var value = this._userInfolist[index];
                String item = value["title"];

                return Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(item),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: this._userInfolist.length),
        ),
      ),
    );
  }
}
