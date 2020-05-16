import 'package:flutter/material.dart';
import 'router/router.dart';

// ColorFiltered界面变灰  BlendMode.color 变灰
void main() => runApp(ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/', //初始化路由
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
