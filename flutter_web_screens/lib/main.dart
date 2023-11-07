import 'package:flutter/material.dart';
import 'package:flutter_web_screens/page3.dart';
import 'package:flutter_web_screens/page4.dart';
import 'package:flutter_web_screens/page8.dart';
// import 'package:themcontrol/page1.dart';
// import 'package:themcontrol/page2.dart';
// import 'package:themcontrol/page3.dart';
// import 'package:themcontrol/page4.dart';
// import 'package:themcontrol/page5.dart';
// import 'package:themcontrol/page6.dart';
// import 'package:themcontrol/page7.dart';
// import 'package:themcontrol/page8.dart';

void main() {
  runApp(const Doctor());
}

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:Page1(),
      // home: Page2(),
      // home:Page3(),
      // home: Page4(),
      // home: Page5(),
      // home: Page6(),
      // home: Page7(),
      home: Page8(),
    );
  }
}
