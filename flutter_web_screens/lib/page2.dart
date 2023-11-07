import 'package:flutter/material.dart';
import 'package:flutter_web_screens/page3.dart';
// import 'package:themcontrol/theme/theme.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<bool> isIconSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 80, right: 80, top: 60),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Enter any UPI ID',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Payable Now',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '\u20B9 999',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Transaction id - xxxxxxxxx',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[400]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 260,
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UPI Options",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: size.width / 2,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            List<IconData> icons = [
                              Icons.brightness_1_outlined,
                              Icons.brightness_1_outlined,
                              Icons.brightness_1_outlined,
                            ];
                            List<IconData> additionalIcons = [
                              Icons.account_balance_outlined,
                              Icons.account_balance_outlined,
                              Icons.account_balance_outlined,
                            ];
                            List<String> texts = [
                              'Paytm',
                              'Google pay',
                              'Phonepe',
                            ];

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isIconSelected[index] =
                                          !isIconSelected[index];
                                    });
                                  },
                                  child: isIconSelected[index]
                                      ? Icon(
                                          Icons.mode_standby_outlined,
                                          color: Colors.red,
                                          size: 22,
                                        )
                                      : Icon(
                                          icons[index % icons.length],
                                          color:
                                              Color.fromRGBO(4, 84, 116, 1.0),
                                          size: 22,
                                        ),
                                ),
                                title: Row(
                                  children: [
                                    Icon(
                                      additionalIcons[
                                          index % additionalIcons.length],
                                      color: Color.fromRGBO(4, 84, 116, 1.0),
                                      size: 22,
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      texts[index % texts.length],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined,
                                    color: Colors.grey[700], size: 22),
                                onTap: () {},
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page3()),
                          ); // Add functionality for when the button is pressed
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(
                              4, 84, 116, 1.0), // Color of the button
                          minimumSize:
                              Size(700, 50), // Width and height of the button
                        ),
                        child: Text(
                          'Pay Now',
                          style: TextStyle(
                            color: Colors.white, // Color of the text
                            fontSize: 18,
                          ),
                        ),
                      ),

                      // GestureDetector(
                      //   onTap: () {
                      //     // Add functionality for when the button is pressed
                      //   },
                      //   child: Container(
                      //     width: 400,
                      //     height: 30,
                      //     decoration: BoxDecoration(
                      //       color: Colors.green, // Color of the container
                      //       borderRadius: BorderRadius.circular(
                      //           8), // Optional: add rounded corners
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         'Pay Now',
                      //         style: TextStyle(
                      //           color: Colors.white, // Color of the text
                      //           fontSize: 18,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
