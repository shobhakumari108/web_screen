import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          'Payment Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter OTP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(4, 84, 116, 1.0), // Border color
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextField(
                      controller: otpController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.length == 1 && index < 4) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Still not received OTP? Get Via call',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(4, 84, 116, 1.0),
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                // Add functionality for when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(4, 84, 116, 1.0), // Button color
                minimumSize: Size(300, 40), // Button size
              ),
              child: Text(
                'Confirm',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
