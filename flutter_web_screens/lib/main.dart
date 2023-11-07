import 'package:flutter/material.dart';
import 'package:flutter_web_screens/page1.dart';
import 'package:flutter_web_screens/page12.dart';
import 'package:flutter_web_screens/page13.dart';
import 'package:flutter_web_screens/page14.dart';
import 'package:flutter_web_screens/page15.dart';
import 'package:flutter_web_screens/page3.dart';
import 'package:flutter_web_screens/page4.dart';
import 'package:flutter_web_screens/page5.dart';
import 'package:flutter_web_screens/page8.dart';
import 'package:flutter_web_screens/page9.dart';

void main() {
  runApp(const Doctor());
}

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Page1(),
      // home: Page2(),
      // home: Page3(),
      // home: Page4(),
      // home: Page5(),
      // home: Page6(),
      // home: Page7(),
      // home: Page8(),
      // home: Page9(),
      // home: Page12(),
      // home: Page13(),
      // home: Page14();
      // home: Page15(),
    );
  }
}
