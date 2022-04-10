import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageview_flutter_pro/page1.dart';
import 'package:pageview_flutter_pro/page2.dart';
import 'package:pageview_flutter_pro/page3.dart';
import 'package:pageview_flutter_pro/page4.dart';

void main(){
  return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller= PageController(
    initialPage:  1,
  );
  @override

  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: PageView(
            scrollDirection: Axis.vertical,
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
        ),
      ),
    );
  }
}

