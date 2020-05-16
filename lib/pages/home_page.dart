import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pages/homePages/focus_page.dart';

class ItemModel {
  bool isSelect; // 是否选中
  String title; // 标题
  Color normalTextColor; // 正常字体颜色
  Color selectTextColor; // 选中字体颜色
  int normalFontSize; // 正常字体
  int selectFontSize; // 选中字体

}

class HomePageViewController extends StatefulWidget {
  HomePageViewController({Key key}) : super(key: key);

  @override
  _HomePageViewControllerState createState() => _HomePageViewControllerState();
}

class _HomePageViewControllerState extends State<HomePageViewController> {
  static const platform = const MethodChannel('samples.flutter.io/battery');
  String _batteryLevel = 'Unknown battery level.';
  Future<Null> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  //随机颜色
  Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256) + 0,
        Random().nextInt(256) + 0, Random().nextInt(256) + 0);
  }

  List _itemsDataArr = [];

  void initLocalData() {
    List itemList = [
      {"title": "关注", "isSelect": true},
      {"title": "推荐", "isSelect": false},
      {"title": "抗击肺炎", "isSelect": false},
      {"title": "热点", "isSelect": false},
      {"title": "星座", "isSelect": false},
      {"title": "视频", "isSelect": false},
      {"title": "娱乐", "isSelect": false},
      {"title": "音乐", "isSelect": false},
      {"title": "科技", "isSelect": false},
      {"title": "财经", "isSelect": false},
      {"title": "VLOG", "isSelect": false},
      {"title": "美食", "isSelect": false},
      {"title": "三农", "isSelect": false},
      {"title": "数码", "isSelect": false},
      {"title": "搞笑", "isSelect": false},
      {"title": "游戏", "isSelect": false},
      {"title": "小游戏", "isSelect": false},
      {"title": "美女", "isSelect": false},
    ];

    for (var i = 0; i < itemList.length; i++) {
      Map item = itemList[i];
      String title = item["title"];
      bool isSelect = item["isSelect"];
      ItemModel itemModel = ItemModel();
      itemModel.title = title;
      itemModel.isSelect = isSelect;
      _itemsDataArr.add(itemModel);
    }
  }

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    this._pageController = new PageController(
      initialPage: this._currentIndex,
    );

    //加载本地数据
    initLocalData();

    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    this._pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: Container(
          // color: Colors.brown,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                // width: 375,
                height: 60,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: this._itemsDataArr.length,
                    itemBuilder: (BuildContext context, int index) {
                      String title;
                      bool isSelect;
                      ItemModel itemModel = this._itemsDataArr[index];
                      title = itemModel.title;
                      isSelect = itemModel.isSelect;
                      return Container(
                          width: 100,
                          height: 60,
                          // color: randomColor(),
                          child: Center(
                              child: ListTile(
                            title: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: isSelect ? Colors.red : Colors.black38,
                                  fontSize: isSelect ? 16 : 14),
                            ),
                            subtitle: Container(
                              // width:10,
                              height: 4,
                              color: isSelect ? Colors.red : Colors.white,
                            ),
                            onTap: () {
                              if (_currentIndex == index) {
                              } else {
                                for (var allItemModel in this._itemsDataArr) {
                                  allItemModel.isSelect = false;
                                }
                                ItemModel currentItemModel =
                                    this._itemsDataArr[index];
                                currentItemModel.isSelect = true;
                                setState(() {
                                  this._currentIndex = index;
                                  // this
                                  // ._pageController
                                  // .jumpToPage(this._currentIndex);
                                  this._pageController.animateToPage(
                                        this._currentIndex,
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                      );
                                });

                                print(index);
                              }
                            },
                          )));
                    }),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 70,
                  child: Container(
                    color: Colors.purple,
                    child: PageView(
                      controller: this._pageController,
                      onPageChanged: (value) {
                        this._currentIndex = value;

                        for (var model in this._itemsDataArr) {
                          model.isSelect = false;
                        }
                        ItemModel currentItemModel =
                            this._itemsDataArr[this._currentIndex];
                        currentItemModel.isSelect = true;
                        setState(() {});
                      
                      },
                      children: <Widget>[
                        FocusPage(),
                        FocusPage(),
                        Container(
                          color: Colors.yellow,
                        ),
                        Container(
                          color: Colors.black38,
                        ),
                        Container(
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
