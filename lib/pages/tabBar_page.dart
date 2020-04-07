import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/category_page.dart';
import '../pages/shopping_page.dart';
import '../pages//me_page.dart';

class CustomTabBarViewControllerPage extends StatefulWidget {
  CustomTabBarViewControllerPage({Key key}) : super(key: key);

  @override
  _CustomTabBarViewControllerPageState createState() =>
      _CustomTabBarViewControllerPageState();
}

class _CustomTabBarViewControllerPageState
    extends State<CustomTabBarViewControllerPage> {
  final List<Widget> _pageList = [
    HomePageViewController(),
    CategoryControllerPage(),
    ShoppingCartControllerPage(),
    MeControllerPage(),
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItemList = [
    BottomNavigationBarItem(
      title: Text(
        '首页',
      ),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      title: Text(
        '分类',
      ),
      icon: Icon(Icons.category),
    ),
    BottomNavigationBarItem(
      title: Text(
        '购物车',
      ),
      icon: Icon(Icons.shopping_cart),
    ),
    BottomNavigationBarItem(
      title: Text(
        '我的',
      ),
      icon: Icon(Icons.person),
    ),
  ];

  int _currentIndex = 0;
  PageController _pageController;

// 初始化工作
  @override
  void initState() {
    super.initState();
    this._pageController = new PageController(
      initialPage: this._currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar( //全局的导航栏隐藏掉，子类去自己实现
        //   title: Text("首页"),
        // ),
        body: PageView(
          controller: this._pageController,
          children: this._pageList,
          // pageSnapping: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
              this._pageController.jumpToPage(this._currentIndex);
            });
          },
          currentIndex: this._currentIndex,
          backgroundColor: Colors.white, //bottombar 背景颜色
          iconSize: 20, //icon大小
          unselectedItemColor: Colors.black38, //未选中颜色
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed, //选中颜色
          items: this._bottomNavBarItemList,
        ));
  }
}
