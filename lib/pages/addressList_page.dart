import 'package:flutter/material.dart';

class AddressListPage extends StatefulWidget {
  AddressListPage({Key key}) : super(key: key);

  @override
  _AddressListPageState createState() => _AddressListPageState();
}

class _AddressListPageState extends State<AddressListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("收货地址"),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        child: ListTile(
                      title: Text("姓名：李钊  手机号：13233236029"),
                      subtitle: Text("北京市昌平区生命科技园地铁站龙城高尔夫俱乐部博南电气公寓萨卡斯拉卡拉"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ));
                  }),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child:InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/addAddressPage');
                    },
                    child:Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: 60,
                    child: Center(child: Text("添加收货地址")),
                  ),
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}
