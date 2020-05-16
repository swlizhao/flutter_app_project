import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app_project/services/screenAdapter_page.dart';


class FocusPage extends StatefulWidget {
  FocusPage({Key key}) : super(key: key);

  @override
  _FocusPageState createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {

// 组件1
  Widget widget1() {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("习近平向白俄罗斯总统致慰问电",
                style: TextStyle(
                  // color: Colors.red,
                  fontSize: 18,
                )),
            subtitle: Row(
              children: <Widget>[
                Text("置顶",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    )),
                SizedBox(width: 5),
                Text("新华网客户端  1188评论",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

//组件2
  Widget widget2() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                width: 280,
                height: 115,
                // color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    Text(
                      "警察蜀黎向两位5岁女孩敬礼  背后原因太暖了",
                      style: TextStyle(
                        // color: Colors.red,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "热",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "人民日报  570评论 6小时",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 110,
                height: 80,
                color: Colors.orange,
                child: Image.network(
                  "https://www.itying.com/images/flutter/list2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

//组件3
  Widget widget3() {
    return Container(
      width: double.infinity,
      height: 220,
      // color: Colors.red,
      child: InkWell(
        onTap: () {
          print("点击");
        },
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.orange,
              width: double.infinity,
              height: 70,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 50,
                    height: 50,
                    // color: Colors.purple,
                    child: InkWell(
                      onTap: () {
                        print("头像被点击了");
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          'https://www.itying.com/images/flutter/list2.jpg',
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 240,
                      height: 40,
                      // color: Colors.red,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "南方都市报",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "已关注·南方都市报官方账号",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black38),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 130,
              // color: Colors.purple,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    width: 280,
                    height: 100,
                    // color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "继省长约谈要求问责哈尔滨防疫不力后，省委书记开会再提严肃问责,继省长约谈要求问责哈尔滨防疫不力后，省委书记开会再提严肃问责",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          maxLines: 3,
                        ),
                        Container(
                          width: 280,
                          height: 30,
                          // color: Colors.blue,
                          child: Row(
                            children: <Widget>[
                              Text("热",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  )),
                              SizedBox(width: 10),
                              Text(
                                "2389评论  3小时前",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          // color: Colors.brown,
                          child: AspectRatio(
                            aspectRatio: 12 / 8,
                            child: Image.network(
                              'https://www.itying.com/images/flutter/list2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ))),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

//组件4
  Widget widget4() {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "中国最后一个太监回忆皇宫：跪着伺候主子，娘娘洗澡从不亲自动手",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
         Container(
           width: double.infinity,
           height: 110,
          //  color: Colors.brown,
           child: Row(
             children: <Widget>[
                Container(
                  width: (414 -30)/3,
                  height: 100,
                  // color: Colors.red,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child:Image.network(  "https://www.itying.com/images/flutter/list2.jpg",
                  fit: BoxFit.cover,),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    // color: Colors.purple,
                    child: Container(
                    padding: EdgeInsets.all(5),
                    child:Image.network(  "https://www.itying.com/images/flutter/list2.jpg",
                  fit: BoxFit.cover,),
                  ),
                )),
                 Expanded(
                  child: Container(
                    height: 100,
                    // color: Colors.orange,
                    child: Container(
                    padding: EdgeInsets.all(5),
                    child:Image.network(  "https://www.itying.com/images/flutter/list2.jpg",
                  fit: BoxFit.cover,),
                  ),
                )),

             ],
           ),
         ),
         Text("纪一二传  21评论  5小时前",
          style: TextStyle(
            fontSize:12,
            color:Colors.black38,
          ),
         ),
         Divider(),
        ],
      ),
    );
  }

//组件5
  Widget widget5() {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      width: double.infinity,
      height: 300,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // textDirection:TextDirection.ltr,
        children: <Widget>[
          Text(
            "为什么手机做的好，刘强东一针见血说清原因",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              "https://www.itying.com/images/flutter/list2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "小樱观世界  29评论  1天前",
            style: TextStyle(fontSize: 12, color: Colors.black38),
          ),
          Divider(),
        ],
      ),
    );
  }


  Widget widget6(){

return Container(

  width: double.infinity,
  height: 310,
  // color: Colors.red,
  child: Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children:<Widget>[
      Text("  精彩小视频 >",style:TextStyle(fontSize:16)),
      Container(
      //  color: Colors.brown,
       width: double.infinity,
       height: 270,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: <Widget>[
 Container(
   width: 220,
   height: 270,
   padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
  //  color: Colors.orange,
   child: Image.network(
              "https://www.itying.com/images/flutter/list2.jpg",
              fit: BoxFit.cover,
            ),
 ),
 Container(
   width: 220,
   height: 270,
   padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
  //  color: Colors.orange,
   child: Image.network(
              "https://www.itying.com/images/flutter/list2.jpg",
              fit: BoxFit.cover,
            ),
 ),
 Container(
   width: 220,
   height: 270,
   padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
  //  color: Colors.orange,
   child: Image.network(
              "https://www.itying.com/images/flutter/list2.jpg",
              fit: BoxFit.cover,
            ),
 ),
   Container(
   width: 220,
   height: 270,
   padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
  //  color: Colors.orange,
   child: Image.network(
              "https://www.itying.com/images/flutter/list2.jpg",
              fit: BoxFit.cover,
            ),
 ),
    Container(
   width: 220,
   height: 270,
   padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
  //  color: Colors.orange,
   child: Image.network(
              "https://www.itying.com/images/flutter/list2.jpg",
              fit: BoxFit.cover,
            ),
 ),
     

         ],
       ),
      ),
    
    Divider(),
    ],
  ),
);
  }


  List _widgetList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._widgetList.add(widget1());
    this._widgetList.add(widget2());
    this._widgetList.add(widget3());
    this._widgetList.add(widget6());
    this._widgetList.add(widget4());
    this._widgetList.add(widget5());
  }

  @override
  Widget build(BuildContext context) {
   ScreenAdapterPage.init(context);
    return Container(
      child: Container(
        width: double.infinity,
        height: 300,
        color: Colors.white,
        child: ListView.builder(
          itemCount: this._widgetList.length,
          itemBuilder: (BuildContext context, int index) {
            return this._widgetList[index];
          },
        ),
      ),
    );
  }
}
