import 'package:flutter/material.dart';

class Page15 extends StatefulWidget {
  const Page15({Key? key}) : super(key: key);

  @override
  State<Page15> createState() => _Page13State();
}

class _Page13State extends State<Page15> {
  List<bool> isIconSelected = [false, false, false];
  bool isChecked = false;
  bool obscureText = true;

  void check() {
    setState(() {
      isChecked = true;
    });
  }

  void uncheck() {
    setState(() {
      isChecked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Image.asset(
          'assets/G_pay_img.jpg', // Replace with the path to your image
          height: 30, // Adjust the height as needed
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "RuPay",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Transaction Details",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 200,
                width: size.width / 2 + 20,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Date : 31 october 2023",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Card Number : xxx xxx xxx x123",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Merchant name : user 12xxxxxx",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Amount : INR99920",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mobile number : 9xxxxxx321",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color.fromARGB(255, 61, 221, 66),
                  size: 20.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Mobile number : 9xxxxxx321",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 61, 221, 66),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width / 2 + 20,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: TextField(
                obscureText: true, // This hides the entered text
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width / 2 + 20,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed function here
                },
                child: Text('Confirm'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(
                      4, 84, 116, 1.0), // Background color of the button
                  textStyle:
                      TextStyle(fontSize: 16), // Text style of the button
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 4,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed function here
                    },
                    child: Text('Confirm'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(
                          4, 84, 116, 1.0), // Background color of the button
                      textStyle:
                          TextStyle(fontSize: 16), // Text style of the button
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: size.width / 4,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed function here
                    },
                    child: Text('Confirm'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(
                          4, 84, 116, 1.0), // Background color of the button
                      textStyle:
                          TextStyle(fontSize: 16), // Text style of the button
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Resend OTP option can be used up to 3 times",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 61, 221, 66),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Transaction Expires in 4:56",
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
