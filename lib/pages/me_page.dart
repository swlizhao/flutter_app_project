import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MeControllerPage extends StatefulWidget {
  MeControllerPage({Key key}) : super(key: key);

  @override
  _MeControllerPageState createState() => _MeControllerPageState();
}

class _MeControllerPageState extends State<MeControllerPage> {
  @override
  void initState() {
    //初始化过程
    super.initState();
    _gethomeData();
  }

  //获取猜你喜欢数据
  _gethomeData() async {
    var api = "http://192.168.6.241:9000/home";
    var result = await Dio().get(api);
    // var hotProductList = ProductModel.fromJson(result.data);

    print("李大钊----${result.data}");
    // setState(() {
    //   this._hotProductList = hotProductList.result;
    // });
  }

  Widget _headWidget() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.red,
      child: InkWell(
        child: Text("头部头像"),
        onTap: () {
          Navigator.pushNamed(context, '/userInfoPage');
        },
      ),
    );
  }

  Widget _orderWidget() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.orange,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/orderListPage');
        },
        child: Text("订单视图"),
      ),
    );
  }

  Widget _walletWidget() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.yellow,
      child: Text("钱包视图"),
    );
  }

  Widget _otherWidget() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.purple,
      child: Text("其它界面"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pushNamed(context, '/loginPage');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/setPage');
            },
          )
        ],
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          _headWidget(),
          _orderWidget(),
          _walletWidget(),
          _otherWidget(),
          // 其它视图
        ],
      )),
    );
  }
}
