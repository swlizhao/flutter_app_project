import 'package:flutter/material.dart';
import '../pages/tabBar_page.dart';
// import '../pages/productDetail_page.dart';
// import '../pages/search_page.dart';
// import '../pages/productList_page.dart';
// import '../pages/login_page.dart';
// import '../pages/registerFirst.dart';
// import '../pages/forgot_page.dart';
// import '../pages/checkout_page.dart';
// import '../pages/pay_page.dart';
// import '../pages/order_page.dart';
// import '../pages/orderInfo_page.dart';
import '../pages/set_page.dart';
import '../pages/addressList_page.dart';
import '../pages/addressList/addAddress_page.dart';
import '../pages/orderList_page.dart';
import '../pages/loginPages/login_page.dart';
import '../pages/loginPages/registerFirst_page.dart';
import '../pages/loginPages/registerSecond_page.dart';
import '../pages/loginPages/registerThree_page.dart';
import '../pages/loginPages/forgotFirst_page.dart';
import '../pages/userInfo_page.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => CustomTabBarViewControllerPage(), //跟路由
  // '/search':(context,{arguments}) => SearchPage(),
  // '/productDetail':(context,{arguments}) => ProductDetailPage(arguments:arguments), //商品信息
  // '/productList':(context,{arguments}) => ProductListViewControllerPage(arguments:arguments),
  // '/loginPage':(context) => LoginViewControllerPage(),
  // '/registerFirstPage':(context) => RegisterFirstPage(),
  // '/forgotPage':(context) => ForgotPage(),
  // '/checkOutPage':(context,{arguments}) => CheckOutPage(arguments:arguments),
  // '/payPage':(context,{arguments}) => PayPage(arguments:arguments),
  //  '/myOrderPage':(context,{arguments}) => MyOrderPage(arguments:arguments),
  // '/orderInfoPage':(context,{arguments}) => OrderInfoPage(arguments:arguments),
  '/setPage': (context, {arguments}) => SetPage(),
  '/addressListPage': (context, {arguments}) => AddressListPage(),
  '/addAddressPage': (context, {arguments}) => AddAddressPage(),
  '/orderListPage': (context, {arguments}) => OrderListPage(),
  '/loginPage': (context, {arguments}) => LoginPage(),
  '/registerFirstPage': (context, {arguments}) => RegisterFirstPage(),
  '/registerSecondPage': (context, {arguments}) => RegisterSecondPage(),
  '/registerThreePage': (context, {arguments}) => RegisterThreePage(),
  '/forgotFirstPage': (context, {arguments}) => ForgotFirstPage(),
  '/userInfoPage': (context, {arguments}) => UserInfoPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
