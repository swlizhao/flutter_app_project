import 'package:flutter/material.dart';

class SetPage extends StatefulWidget {
  SetPage({Key key}) : super(key: key);

  @override
  _SetPageState createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  List _settingList = [
    {
      "title": "账号安全",
      "titleId": 0,
    },
    {
      "title": "收货地址",
      "titleId": 1,
    },
    {
      "title": "关于我",
      "titleId": 2,
    },
    {
      "title": "联系我们",
      "titleId": 3,
    },
    {
      "title": "退出登录",
      "titleId": 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("设置"),
        ),
        body: Container(
          child: ListView.separated(
            itemCount: this._settingList.length,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (BuildContext context, int index) {
              String title = this._settingList[index]["title"];
              int titleId = this._settingList[index]["titleId"];
              return ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(title),
                onTap: () {
                  if (titleId == 1) {
                    Navigator.pushNamed(context, '/addressListPage');
                  } else {}
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
