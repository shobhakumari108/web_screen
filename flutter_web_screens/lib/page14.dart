import 'package:flutter/material.dart';

class Page14 extends StatefulWidget {
  const Page14({Key? key}) : super(key: key);

  @override
  State<Page14> createState() => _Page14State();
}

class _Page14State extends State<Page14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Image.asset(
          'assets/G_pay_img.jpg', // Replace with the path to your image
          height: 30, // Adjust the height as needed
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Processing Payment",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Transaction id- xxxxxx",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
