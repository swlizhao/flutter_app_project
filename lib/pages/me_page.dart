import 'package:flutter/material.dart';

class MeControllerPage extends StatefulWidget {
  MeControllerPage({Key key}) : super(key: key);

  @override
  _MeControllerPageState createState() => _MeControllerPageState();
}

class _MeControllerPageState extends State<MeControllerPage> {
  Widget _headWidget() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.red,
      child: Text("头部视图"),
    
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
      color: Colors.brown,
      child: Text("钱包视图"),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
        centerTitle: true,
        actions:<Widget>[
        IconButton(icon: Icon(Icons.menu),onPressed: (){
        Navigator.pushNamed(context, '/loginPage');
       },),
      IconButton(icon: Icon(Icons.settings),onPressed: (){
             Navigator.pushNamed(context, '/setPage');
      },)
        ],
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          _headWidget(),
          _orderWidget(),
          _walletWidget(),
        ],
      )),
    );
  }
}
 